/**
 *                            License
 * THE WORK (AS DEFINED BELOW) IS PROVIDED UNDER THE TERMS OF THIS  
 * CREATIVE COMMONS PUBLIC LICENSE ("CCPL" OR "LICENSE"). 
 * THE WORK IS PROTECTED BY COPYRIGHT AND/OR OTHER APPLICABLE LAW.  
 * ANY USE OF THE WORK OTHER THAN AS AUTHORIZED UNDER THIS LICENSE OR  
 * COPYRIGHT LAW IS PROHIBITED.
 * 
 * BY EXERCISING ANY RIGHTS TO THE WORK PROVIDED HERE, YOU ACCEPT AND  
 * AGREE TO BE BOUND BY THE TERMS OF THIS LICENSE. TO THE EXTENT THIS LICENSE  
 * MAY BE CONSIDERED TO BE A CONTRACT, THE LICENSOR GRANTS YOU THE RIGHTS CONTAINED 
 * HERE IN CONSIDERATION OF YOUR ACCEPTANCE OF SUCH TERMS AND CONDITIONS.
 * 
 */
package l1j.server.server;

import java.io.IOException;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Collection;
import java.util.logging.Logger;

import l1j.william.Announcecycle;
import l1j.william.L1GameReStart;
import l1j.server.AinTimeController;
import l1j.server.Config;
import l1j.server.L1Message;
import l1j.server.console.ConsoleProcess;
import l1j.server.server.datatables.CastleTable;
import l1j.server.server.datatables.CharacterTable;
import l1j.server.server.datatables.ChatLogTable;
import l1j.server.server.datatables.ClanTable;
import l1j.server.server.datatables.DoorTable;
import l1j.server.server.datatables.DropTable;
import l1j.server.server.datatables.DropItemTable;
import l1j.server.server.datatables.FurnitureSpawnTable;
import l1j.server.server.datatables.GetBackRestartTable;
import l1j.server.server.datatables.InnTable;
import l1j.server.server.datatables.IpTable;
import l1j.server.server.datatables.ItemTable;
import l1j.server.server.datatables.MagicDollTable;
import l1j.server.server.datatables.MailTable;
import l1j.server.server.datatables.MapsTable;
import l1j.server.server.datatables.MobGroupTable;
import l1j.server.server.datatables.MonsterEnhanceTable;
import l1j.server.server.datatables.NpcActionTable;
import l1j.server.server.datatables.NpcChatTable;
import l1j.server.server.datatables.NpcSpawnTable;
import l1j.server.server.datatables.NpcTable;
import l1j.server.server.datatables.NPCTalkDataTable;
import l1j.server.server.datatables.PetTable;
import l1j.server.server.datatables.PetTypeTable;
import l1j.server.server.datatables.PolyTable;
import l1j.server.server.datatables.RaceTicketTable;
import l1j.server.server.datatables.ResolventTable;
import l1j.server.server.datatables.ShopTable;
import l1j.server.server.datatables.SkillsTable;
import l1j.server.server.datatables.SpawnTable;
import l1j.server.server.datatables.SprTable;
import l1j.server.server.datatables.UBSpawnTable;
import l1j.server.server.datatables.WeaponSkillTable;
import l1j.server.server.model.Dungeon;
import l1j.server.server.model.ElementalStoneGenerator;
import l1j.server.server.model.Getback;
import l1j.server.server.model.L1BossCycle;
import l1j.server.server.model.L1BugBearRace;
import l1j.server.server.model.L1CastleLocation;
import l1j.server.server.model.L1DeleteItemOnGround;
import l1j.server.server.model.L1NpcRegenerationTimer;
import l1j.server.server.model.L1World;
import l1j.server.server.model.Instance.L1PcInstance;
import l1j.server.server.model.gametime.L1GameTimeClock;
import l1j.server.server.model.item.L1TreasureBox;
import l1j.server.server.model.map.L1WorldMap;
import l1j.server.server.model.npc.action.L1NpcDefaultAction;
import l1j.server.server.model.trap.L1WorldTraps;
import l1j.server.server.storage.mysql.MysqlAutoBackup;
import l1j.server.server.utils.MysqlAutoBackupTimer;
import l1j.server.server.utils.SystemUtil;

import l1j.william.CrackTime;// TODO 时空裂痕

// Referenced classes of package l1j.server.server:
// ClientThread, Logins, RateTable, IdFactory,
// LoginController, GameTimeController, Announcements,
// MobTable, SpawnTable, SkillsTable, PolyTable,
// TeleportLocations, ShopTable, NPCTalkDataTable, NpcSpawnTable,
// IpTable, Shutdown, NpcTable, MobGroupTable, NpcShoutTable

public class GameServer extends Thread {
	private ServerSocket _serverSocket;
	private static Logger _log = Logger.getLogger(GameServer.class.getName());
	private int _port;
	// private Logins _logins;
	private LoginController _loginController;
	private int chatlvl;

	@Override
	public void run() {
		System.out.println(L1Message.memoryUse + SystemUtil.getUsedMemoryMB()
				+ L1Message.memory);
		System.out.println(L1Message.waitingforuser);
		while (true) {
			try {
				Socket socket = _serverSocket.accept();
				System.out.println(L1Message.from + socket.getInetAddress()
						+ L1Message.attempt);
				String host = socket.getInetAddress().getHostAddress();
				if (IpTable.getInstance().isBannedIp(host)) {
					_log.info("banned IP(" + host + ")");
				} else {
					ClientThread client = new ClientThread(socket);
					GeneralThreadPool.getInstance().execute(client);
				}
			} catch (IOException ioexception) {
			}
		}
	}

	private static GameServer _instance;

	private GameServer() {
		super("GameServer");
	}

	public static GameServer getInstance() {
		if (_instance == null) {
			_instance = new GameServer();
		}
		return _instance;
	}

	public void initialize() throws Exception {
		String s = Config.GAME_SERVER_HOST_NAME;
		double rateXp = Config.RATE_XP;
		double LA = Config.RATE_LA;
		double rateKarma = Config.RATE_KARMA;
		double rateDropItems = Config.RATE_DROP_ITEMS;
		double rateDropAdena = Config.RATE_DROP_ADENA;

		// Locale 多国语系
		L1Message.getInstance();

		chatlvl = Config.GLOBAL_CHAT_LEVEL;
		_port = Config.GAME_SERVER_PORT;
		if (!"*".equals(s)) {
			InetAddress inetaddress = InetAddress.getByName(s);
			inetaddress.getHostAddress();
			_serverSocket = new ServerSocket(_port, 50, inetaddress);
			System.out.println(L1Message.setporton + _port);
		} else {
			_serverSocket = new ServerSocket(_port);
			System.out.println(L1Message.setporton + _port);
		}

		System.out.println("┌───────────────────────────────┐");
		System.out.println("│     " + L1Message.ver + "\t" + "\t" + "│");
		System.out.println("└───────────────────────────────┘" + "\n");

		System.out.println(L1Message.settingslist + "\n");
		System.out.println("┌" + L1Message.exp + ": " + (rateXp) + L1Message.x
				+ "\n\r├" + L1Message.justice + ": " + (LA) + L1Message.x
				+ "\n\r├" + L1Message.karma + ": " + (rateKarma) + L1Message.x
				+ "\n\r├" + L1Message.dropitems + ": " + (rateDropItems)+ L1Message.x 
				+ "\n\r├" + L1Message.dropadena + ": "+ (rateDropAdena) + L1Message.x 
				+ "\n\r├"+ L1Message.enchantweapon + ": "+ (Config.ENCHANT_CHANCE_WEAPON) + "%" 
				+ "\n\r├"+ L1Message.enchantarmor + ": " + (Config.ENCHANT_CHANCE_ARMOR)+ "%");
		System.out.println("├" + L1Message.chatlevel + ": " + (chatlvl)
				+ L1Message.level);

		if (Config.ALT_NONPVP) { // Non-PvP设定
			System.out.println("└" + L1Message.nonpvpNo + "\n");
		} else {
			System.out.println("└" + L1Message.nonpvpYes + "\n");
		}

		int maxOnlineUsers = Config.MAX_ONLINE_USERS;
		System.out.println(L1Message.maxplayer + (maxOnlineUsers)
				+ L1Message.player);

		System.out.println("┌───────────────────────────────┐");
		System.out.println("│     " + L1Message.ver + "\t" + "\t" + "│");
		System.out.println("└───────────────────────────────┘" + "\n");

		IdFactory.getInstance();
		L1WorldMap.getInstance();
		_loginController = LoginController.getInstance();
		_loginController.setMaxAllowedOnlinePlayers(maxOnlineUsers);

		// 读取所有角色名称
		CharacterTable.getInstance().loadAllCharName();

		// 初始化角色的上线状态
		CharacterTable.clearOnlineStatus();

		// 初始化游戏时间
		L1GameTimeClock.init();

		// 伺服器重启 by 丫杰
		if (Config.REST_TIME != 0) {
			L1GameReStart.init();
		}

		// 初始化无限大战
		UbTimeController ubTimeContoroller = UbTimeController.getInstance();
		GeneralThreadPool.getInstance().execute(ubTimeContoroller);

		// 初始化攻城
		WarTimeController warTimeController = WarTimeController.getInstance();
		GeneralThreadPool.getInstance().execute(warTimeController);

		// 设定精灵石的产生
		if (Config.ELEMENTAL_STONE_AMOUNT > 0) {
			ElementalStoneGenerator elementalStoneGenerator = ElementalStoneGenerator.getInstance();
			GeneralThreadPool.getInstance().execute(elementalStoneGenerator);
		}

		// 初始化 HomeTown 时间
		HomeTownTimeController.getInstance();

		// 初始化盟屋拍卖
		AuctionTimeController auctionTimeController = AuctionTimeController.getInstance();
		GeneralThreadPool.getInstance().execute(auctionTimeController);

		// 初始化盟屋的税金
		HouseTaxTimeController houseTaxTimeController = HouseTaxTimeController
				.getInstance();
		GeneralThreadPool.getInstance().execute(houseTaxTimeController);

		// 初始化钓鱼
		FishingTimeController fishingTimeController = FishingTimeController
				.getInstance();
		GeneralThreadPool.getInstance().execute(fishingTimeController);

		// 初始化 NPC 聊天
		NpcChatTimeController npcChatTimeController = NpcChatTimeController
				.getInstance();
		GeneralThreadPool.getInstance().execute(npcChatTimeController);

		// 初始化 Light
		LightTimeController lightTimeController = LightTimeController
				.getInstance();
		GeneralThreadPool.getInstance().execute(lightTimeController);

		// 殷海萨的祝福
		AinTimeController ainTimeController = AinTimeController.getInstance();
		GeneralThreadPool.getInstance().execute(ainTimeController);

		// 初始化游戏公告
		Announcements.getInstance();

		// 循环公告 by 阿杰
		if (Config.Use_Show_Announcecycle) {
			Announcecycle.getInstance();
		}

		// 初始化MySQL自动备份程序
		MysqlAutoBackup.getInstance();

		// 开始 MySQL自动备份程序 计时器
		MysqlAutoBackupTimer.TimerStart();
		
		// 初始化帐号使用状态
		Account.InitialOnlineStatus();

		NpcTable.getInstance();

		// 怪物强化系统 by missu0524
        MonsterEnhanceTable.getInstance();

		L1DeleteItemOnGround deleteitem = new L1DeleteItemOnGround();
		deleteitem.initialize();

		if (!NpcTable.getInstance().isInitialized()) {
			throw new Exception("Could not initialize the npc table");
		}
		L1NpcDefaultAction.getInstance();
		DoorTable.initialize();
		SpawnTable.getInstance();
		MobGroupTable.getInstance();
		SkillsTable.getInstance();
		PolyTable.getInstance();
		ItemTable.getInstance();
		DropTable.getInstance();
		DropItemTable.getInstance();
		ShopTable.getInstance();
		NPCTalkDataTable.getInstance();
		L1World.getInstance();
		L1WorldTraps.getInstance();
		Dungeon.getInstance();
		NpcSpawnTable.getInstance();
		IpTable.getInstance();
		MapsTable.getInstance();
		UBSpawnTable.getInstance();
		PetTable.getInstance();
		ClanTable.getInstance();
		CastleTable.getInstance();
		L1CastleLocation.setCastleTaxRate(); // 必须在 CastleTable 初始化之后
		GetBackRestartTable.getInstance();
		GeneralThreadPool.getInstance();
		L1NpcRegenerationTimer.getInstance();
		ChatLogTable.getInstance();
		WeaponSkillTable.getInstance();
		NpcActionTable.load();
		GMCommandsConfig.load();
		Getback.loadGetBack();
		PetTypeTable.load();
		L1BossCycle.load();
		L1TreasureBox.load();
		SprTable.getInstance();
		ResolventTable.getInstance();
		FurnitureSpawnTable.getInstance();
		NpcChatTable.getInstance();
		MailTable.getInstance();

		CrackTime.getStart();// TODO 时空裂痕 时间控制

		RaceTicketTable.getInstance();
		L1BugBearRace.getInstance();
		InnTable.getInstance();
		MagicDollTable.getInstance();

		System.out.println(L1Message.initialfinished);
		Runtime.getRuntime().addShutdownHook(Shutdown.getInstance());
		
		Thread cp = new ConsoleProcess();//cmd互动指令
		cp.start();
		
		this.start();
	}

	/**
	 * 踢掉世界地图中所有的玩家与储存资料。
	 */
	public void disconnectAllCharacters() {
		Collection<L1PcInstance> players = L1World.getInstance()
				.getAllPlayers();
		for (L1PcInstance pc : players) {
			pc.getNetConnection().setActiveChar(null);
			pc.getNetConnection().kick();
		}
		// 踢除所有在线上的玩家
		for (L1PcInstance pc : players) {
			ClientThread.quitGame(pc);
			L1World.getInstance().removeObject(pc);
			Account account = Account.load(pc.getAccountName());
			Account.online(account, false);
		}
	}

	private class ServerShutdownThread extends Thread {
		private final int _secondsCount;

		public ServerShutdownThread(int secondsCount) {
			_secondsCount = secondsCount;
		}

		@Override
		public void run() {
			L1World world = L1World.getInstance();
			try {
				int secondsCount = _secondsCount;
				world.broadcastServerMessage("服务器即将重启。");
				world.broadcastServerMessage("请玩家移动至安全区域。");
				while (0 < secondsCount) {
					if (secondsCount <= 30) {
						world.broadcastServerMessage("服务器将会在" + secondsCount
								+ "秒后重启。请玩家2分钟后再进入游戏。");
					} else {
						if (secondsCount % 60 == 0) {
							world.broadcastServerMessage("服务器将会在" + secondsCount
									/ 60 + "分后重启。");
						}
					}
					Thread.sleep(1000);
					secondsCount--;
				}
				shutdown();
			} catch (InterruptedException e) {
				world.broadcastServerMessage("已取消伺服器关机。服务器将会正常运作。");
				return;
			}
		}
	}

	private ServerShutdownThread _shutdownThread = null;

	public synchronized void shutdownWithCountdown(int secondsCount) {
		if (_shutdownThread != null) {
			// 如果正在关闭
			// TODO 可能要有错误通知之类的
			return;
		}
		_shutdownThread = new ServerShutdownThread(secondsCount);
		GeneralThreadPool.getInstance().execute(_shutdownThread);
	}

	public void shutdown() {
		disconnectAllCharacters();
		System.exit(0);
	}

	public synchronized void abortShutdown() {
		if (_shutdownThread == null) {
			// 如果正在关闭
			// TODO 可能要有错误通知之类的
			return;
		}

		_shutdownThread.interrupt();
		_shutdownThread = null;
	}
}
