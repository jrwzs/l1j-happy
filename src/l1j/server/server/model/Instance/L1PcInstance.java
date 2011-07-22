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
package l1j.server.server.model.Instance;

import static l1j.server.server.model.skill.L1SkillId.BLIND_HIDING;
import static l1j.server.server.model.skill.L1SkillId.CANCELLATION;
import static l1j.server.server.model.skill.L1SkillId.COOKING_WONDER_DRUG;
import static l1j.server.server.model.skill.L1SkillId.COUNTER_BARRIER;
import static l1j.server.server.model.skill.L1SkillId.DECREASE_WEIGHT;
import static l1j.server.server.model.skill.L1SkillId.DRESS_EVASION;
import static l1j.server.server.model.skill.L1SkillId.EFFECT_POTION_OF_BATTLE;
import static l1j.server.server.model.skill.L1SkillId.ENTANGLE;
import static l1j.server.server.model.skill.L1SkillId.FOG_OF_SLEEPING;
import static l1j.server.server.model.skill.L1SkillId.GMSTATUS_FINDINVIS;
import static l1j.server.server.model.skill.L1SkillId.GMSTATUS_HPBAR;
import static l1j.server.server.model.skill.L1SkillId.GREATER_HASTE;
import static l1j.server.server.model.skill.L1SkillId.HASTE;
import static l1j.server.server.model.skill.L1SkillId.ILLUSION_AVATAR;
import static l1j.server.server.model.skill.L1SkillId.INVISIBILITY;
import static l1j.server.server.model.skill.L1SkillId.JOY_OF_PAIN;
import static l1j.server.server.model.skill.L1SkillId.MASS_SLOW;
import static l1j.server.server.model.skill.L1SkillId.MORTAL_BODY;
import static l1j.server.server.model.skill.L1SkillId.SHAPE_CHANGE;
import static l1j.server.server.model.skill.L1SkillId.SLOW;
import static l1j.server.server.model.skill.L1SkillId.SOLID_CARRIAGE;
import static l1j.server.server.model.skill.L1SkillId.STATUS_CHAT_PROHIBITED;
import static l1j.server.server.model.skill.L1SkillId.STATUS_HASTE;
import static l1j.server.server.model.skill.L1SkillId.STATUS_RIBRAVE;
import static l1j.server.server.model.skill.L1SkillId.STATUS_THIRD_SPEED;
import static l1j.server.server.model.skill.L1SkillId.STRIKER_GALE;
import static l1j.server.server.model.skill.L1SkillId.WIND_SHACKLE;
import static l1j.server.server.model.skill.L1SkillId.BONE_BREAK;
import static l1j.server.server.model.skill.L1SkillId.EARTH_BIND;
import static l1j.server.server.model.skill.L1SkillId.FREEZING_BLIZZARD;
import static l1j.server.server.model.skill.L1SkillId.FREEZING_BREATH;
import static l1j.server.server.model.skill.L1SkillId.ICE_LANCE;
import static l1j.server.server.model.skill.L1SkillId.SHOCK_SKIN;
import static l1j.server.server.model.skill.L1SkillId.SHOCK_STUN;
import static l1j.server.server.model.skill.L1SkillId.STATUS_FREEZE;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.concurrent.ScheduledFuture;
import java.util.logging.Level;
import java.util.logging.Logger;

import l1j.server.Config;
import l1j.william.SkillSound;
import l1j.server.server.ActionCodes;
import l1j.server.server.ClientThread;
import l1j.server.server.GeneralThreadPool;
import l1j.server.server.PacketOutput;
import l1j.server.server.WarTimeController;
import l1j.server.server.command.executor.L1HpBar;
import l1j.server.server.datatables.CharacterTable;
import l1j.server.server.datatables.ExpTable;
import l1j.server.server.datatables.ItemTable;
import l1j.server.server.model.AcceleratorChecker;
import l1j.server.server.model.HpRegeneration;
import l1j.server.server.model.HpRegenerationByDoll;
import l1j.server.server.model.ItemMakeByDoll;
import l1j.server.server.model.Instance.L1EffectInstance;
import l1j.server.server.model.Instance.L1GuardInstance;
import l1j.server.server.model.Instance.L1NpcInstance;
import l1j.server.server.model.Instance.L1PcInstance;
import l1j.server.server.model.L1Attack;
import l1j.server.server.model.L1CastleLocation;
import l1j.server.server.model.L1Character;
import l1j.server.server.model.L1ChatParty;
import l1j.server.server.model.L1Clan;
import l1j.server.server.model.L1DwarfForElfInventory;
import l1j.server.server.model.L1DwarfInventory;
import l1j.server.server.model.L1EquipmentSlot;
import l1j.server.server.model.L1ExcludingList;
import l1j.server.server.model.L1Inventory;
import l1j.server.server.model.L1Karma;
import l1j.server.server.model.L1Magic;
import l1j.server.server.model.L1Object;
import l1j.server.server.model.L1Party;
import l1j.server.server.model.L1PartyRefresh;
import l1j.server.server.model.L1PcDeleteTimer;
import l1j.server.server.model.L1PcInventory;
import l1j.server.server.model.L1PinkName;
import l1j.server.server.model.L1Quest;
import l1j.server.server.model.L1Teleport;
import l1j.server.server.model.L1TownLocation;
import l1j.server.server.model.L1War;
import l1j.server.server.model.L1World;
import l1j.server.server.model.MpReductionByAwake;
import l1j.server.server.model.MpRegeneration;
import l1j.server.server.model.MpRegenerationByDoll;
import l1j.server.server.model.classes.L1ClassFeature;
import l1j.server.server.model.gametime.L1GameTimeCarrier;
import l1j.server.server.model.monitor.L1PcAutoUpdate;
import l1j.server.server.model.monitor.L1PcExpMonitor;
import l1j.server.server.model.monitor.L1PcGhostMonitor;
import l1j.server.server.model.monitor.L1PcHellMonitor;
import l1j.server.server.model.monitor.L1PcInvisDelay;
import l1j.server.server.model.skill.L1SkillId;
import l1j.server.server.model.skill.L1SkillUse;
import l1j.server.server.serverpackets.S_BlueMessage;
import l1j.server.server.serverpackets.S_CastleMaster;
import l1j.server.server.serverpackets.S_Disconnect;
import l1j.server.server.serverpackets.S_DoActionGFX;
import l1j.server.server.serverpackets.S_DoActionShop;
import l1j.server.server.serverpackets.S_Exp;
import l1j.server.server.serverpackets.S_Fight;
import l1j.server.server.serverpackets.S_Fishing;
import l1j.server.server.serverpackets.S_HPMeter;
import l1j.server.server.serverpackets.S_HPUpdate;
import l1j.server.server.serverpackets.S_Invis;
import l1j.server.server.serverpackets.S_Lawful;
import l1j.server.server.serverpackets.S_Liquor;
import l1j.server.server.serverpackets.S_MPUpdate;
import l1j.server.server.serverpackets.S_OtherCharPacks;
import l1j.server.server.serverpackets.S_OwnCharStatus;
import l1j.server.server.serverpackets.S_PacketBox;
import l1j.server.server.serverpackets.S_Poison;
import l1j.server.server.serverpackets.S_RemoveObject;
import l1j.server.server.serverpackets.S_ServerMessage;
import l1j.server.server.serverpackets.S_SkillIconGFX;
import l1j.server.server.serverpackets.S_SystemMessage;
import l1j.server.server.serverpackets.S_bonusstats;
import l1j.server.server.serverpackets.ServerBasePacket;
import l1j.server.server.templates.L1BookMark;
import l1j.server.server.templates.L1Item;
import l1j.server.server.templates.L1MagicDoll;
import l1j.server.server.templates.L1PrivateShopBuyList;
import l1j.server.server.templates.L1PrivateShopSellList;
import l1j.server.server.utils.CalcStat;
import l1j.server.server.utils.Random;
import l1j.server.server.utils.RandomArrayList;
import l1j.server.server.utils.collections.Lists;

// Referenced classes of package l1j.server.server.model:
// L1Character, L1DropTable, L1Object, L1ItemInstance,
// L1World
//

public class L1PcInstance extends L1Character {
	private static final long serialVersionUID = 1L;

	/** 男骑士 */
	public static final int CLASSID_KNIGHT_MALE = 61;

	/** 女骑士 */
	public static final int CLASSID_KNIGHT_FEMALE = 48;

	/** 男精灵 */
	public static final int CLASSID_ELF_MALE = 138;

	/** 女精灵 */
	public static final int CLASSID_ELF_FEMALE = 37;

	/** 男法师 */
	public static final int CLASSID_WIZARD_MALE = 734;

	/** 女法师 */
	public static final int CLASSID_WIZARD_FEMALE = 1186;

	/** 男黑暗精灵 */
	public static final int CLASSID_DARK_ELF_MALE = 2786;

	/** 女黑暗精灵 */
	public static final int CLASSID_DARK_ELF_FEMALE = 2796;

	/** 王子 */
	public static final int CLASSID_PRINCE = 0;

	/** 公主 */
	public static final int CLASSID_PRINCESS = 1;

	/** 男龙骑士*/
	public static final int CLASSID_DRAGON_KNIGHT_MALE = 6658;

	/** 女龙骑士 */
	public static final int CLASSID_DRAGON_KNIGHT_FEMALE = 6661;

	/** 男幻术师 */
	public static final int CLASSID_ILLUSIONIST_MALE = 6671;

	/** 女幻术师 */
	public static final int CLASSID_ILLUSIONIST_FEMALE = 6650;

	/** 回血 */
	private short _hpr = 0;

	/** 开启回血 */
	private short _trueHpr = 0;

	/** 3.3C组队系统 */
	boolean _rpActive = false;

	/** 标准的 */
	private L1PartyRefresh _rp;

	/** 组队类型 */
	private int _partyType;

	public short getHpr() {
		return (short) _hpr ;
	}

	public void addHpr(int i) {
		_trueHpr += i;
		_hpr = (short) Math.max(0, _trueHpr);
	}

	/** 回魔 */
	private short _mpr = 0;

	/** 开启回魔 */
	private short _trueMpr = 0;

	public short getMpr() {
		return (short) _mpr;
	}

	public void addMpr(int i) {
		_trueMpr += i;
		_mpr = (short) Math.max(0, _trueMpr);
	}

	/** 原始 CON HPR */
	public short _originalHpr = 0;

	public short getOriginalHpr() {

		return _originalHpr;
	}

	/** 原始 WIS MPR */
	public short _originalMpr = 0;

	public short getOriginalMpr() {

		return _originalMpr;
	}

	/** 开始玩家恢复自身体力 */
	public void startHpRegeneration() {
		final int INTERVAL = 1000;

		if (!_hpRegenActive) {
			_hpRegen = new HpRegeneration(this);
			_regenTimer.scheduleAtFixedRate(_hpRegen, INTERVAL, INTERVAL);
			_hpRegenActive = true;
		}
	}

	/** 停止玩家恢复自身体力 */
	public void stopHpRegeneration() {
		if (_hpRegenActive) {
			_hpRegen.cancel();
			_hpRegen = null;
			_hpRegenActive = false;
		}
	}

	/** 开始玩家恢复自身魔力 */
	public void startMpRegeneration() {
		final int INTERVAL = 1000;

		if (!_mpRegenActive) {
			_mpRegen = new MpRegeneration(this);
			_regenTimer.scheduleAtFixedRate(_mpRegen, INTERVAL, INTERVAL);
			_mpRegenActive = true;
		}
	}

	/** 停止玩家恢复自身魔力 */
	public void stopMpRegeneration() {
		if (_mpRegenActive) {
			_mpRegen.cancel();
			_mpRegen = null;
			_mpRegenActive = false;
		}
	}

	/** 获得道具开始 */
	public void startItemMakeByDoll() {
		final int INTERVAL_BY_DOLL = 240000;
		boolean isExistItemMakeDoll = false;
		if (L1MagicDoll.isItemMake(this)) {
			isExistItemMakeDoll = true;
		}
		if (!_ItemMakeActiveByDoll && isExistItemMakeDoll) {
			_itemMakeByDoll = new ItemMakeByDoll(this);
			_regenTimer.scheduleAtFixedRate(_itemMakeByDoll, INTERVAL_BY_DOLL,
					INTERVAL_BY_DOLL);
			_ItemMakeActiveByDoll = true;
		}
	}

	/** 获得道具停止 */
	public void stopItemMakeByDoll() {
		if (_ItemMakeActiveByDoll) {
			_itemMakeByDoll.cancel();
			_itemMakeByDoll = null;
			_ItemMakeActiveByDoll = false;
		}
	}

	/** 开始娃娃恢复玩家体力 */
	public void startHpRegenerationByDoll() {
		final int INTERVAL_BY_DOLL = 64000;
		boolean isExistHprDoll = false;
		if (L1MagicDoll.isHpRegeneration(this)) {
			isExistHprDoll = true;
		}
		if (!_hpRegenActiveByDoll && isExistHprDoll) {
			_hpRegenByDoll = new HpRegenerationByDoll(this);
			_regenTimer.scheduleAtFixedRate(_hpRegenByDoll, INTERVAL_BY_DOLL,
					INTERVAL_BY_DOLL);
			_hpRegenActiveByDoll = true;
		}
	}

	/** 停止娃娃恢复玩家体力 */
	public void stopHpRegenerationByDoll() {
		if (_hpRegenActiveByDoll) {
			_hpRegenByDoll.cancel();
			_hpRegenByDoll = null;
			_hpRegenActiveByDoll = false;
		}
	}

	/** 开始娃娃恢复玩家魔力 */
	public void startMpRegenerationByDoll() {
		final int INTERVAL_BY_DOLL = 64000;
		boolean isExistMprDoll = false;
		if (L1MagicDoll.isMpRegeneration(this)) {
			isExistMprDoll = true;
		}
		if (!_mpRegenActiveByDoll && isExistMprDoll) {
			_mpRegenByDoll = new MpRegenerationByDoll(this);
			_regenTimer.scheduleAtFixedRate(_mpRegenByDoll, INTERVAL_BY_DOLL, INTERVAL_BY_DOLL);
			_mpRegenActiveByDoll = true;
		}
	}

	/** 停止娃娃恢复玩家魔力 */
	public void stopMpRegenerationByDoll() {
		if (_mpRegenActiveByDoll) {
			_mpRegenByDoll.cancel();
			_mpRegenByDoll = null;
			_mpRegenActiveByDoll = false;
		}
	}

	/** 开始觉醒恢复玩家魔力 */
	public void startMpReductionByAwake() {
		final int INTERVAL_BY_AWAKE = 4000;
		if (!_mpReductionActiveByAwake) {
			_mpReductionByAwake = new MpReductionByAwake(this);
			_regenTimer.scheduleAtFixedRate(_mpReductionByAwake, INTERVAL_BY_AWAKE, INTERVAL_BY_AWAKE);
			_mpReductionActiveByAwake = true;
		}
	}

	/** 停止觉醒恢复玩家魔力 */
	public void stopMpReductionByAwake() {
		if (_mpReductionActiveByAwake) {
			_mpReductionByAwake.cancel();
			_mpReductionByAwake = null;
			_mpReductionActiveByAwake = false;
		}
	}

	/** 开始自动更新物件 */
	public void startObjectAutoUpdate() {
		removeAllKnownObjects();
		_autoUpdateFuture = GeneralThreadPool.getInstance().pcScheduleAtFixedRate(new L1PcAutoUpdate(getId()), 0L, INTERVAL_AUTO_UPDATE);
	}

	/** 停止各种监控任务 */
	public void stopEtcMonitor() {
		if (_autoUpdateFuture != null) {
			_autoUpdateFuture.cancel(true);
			_autoUpdateFuture = null;
		}
		if (_expMonitorFuture != null) {
			_expMonitorFuture.cancel(true);
			_expMonitorFuture = null;
		}
		if (_ghostFuture != null) {
			_ghostFuture.cancel(true);
			_ghostFuture = null;
		}

		if (_hellFuture != null) {
			_hellFuture.cancel(true);
			_hellFuture = null;
		}
	}

	private static final long INTERVAL_AUTO_UPDATE = 300;

	private ScheduledFuture<?> _autoUpdateFuture;

	private static final long INTERVAL_EXP_MONITOR = 500;

	private ScheduledFuture<?> _expMonitorFuture;

	public void onChangeExp() {
		int level = ExpTable.getLevelByExp(getExp());
		int char_level = getLevel();
		int gap = level - char_level;
		if (gap == 0) {
			// sendPackets(new S_OwnCharStatus(this));
			sendPackets(new S_Exp(this));
			return;
		}

		// レベルが变化した场合
		if (gap > 0) {
			levelUp(gap);
		}
		else if (gap < 0) {
			levelDown(gap);
		}
	}

	@Override
	public void onPerceive(L1PcInstance perceivedFrom) {
		// 判断旅馆内是否使用相同钥匙
		if (perceivedFrom.getMapId() >= 16384 && perceivedFrom.getMapId() <= 25088 // 旅馆内判断
				&& perceivedFrom.getInnKeyId() != getInnKeyId()) {
			return;
		}
		if (isGmInvis() || isGhost()) {
			return;
		}
		if (isInvisble() && !perceivedFrom.hasSkillEffect(GMSTATUS_FINDINVIS)) {
			return;
		}

		perceivedFrom.addKnownObject(this);
		perceivedFrom.sendPackets(new S_OtherCharPacks(this, perceivedFrom.hasSkillEffect(GMSTATUS_FINDINVIS))); // 自分の情报を送る
		if (isInParty() && getParty().isMember(perceivedFrom)) { // PTメンバーならHPメーターも送る
			perceivedFrom.sendPackets(new S_HPMeter(this));
		}

		if (isPrivateShop()) { // 开个人商店中
			perceivedFrom.sendPackets(new S_DoActionShop(getId(), ActionCodes.ACTION_Shop, getShopChat()));
		} else if (isFishing()) { // 钓鱼中
			perceivedFrom.sendPackets(new S_Fishing(getId(), ActionCodes.ACTION_Fishing, getFishX(), getFishY()));
		}

		if (isCrown()) { // 君主
			L1Clan clan = L1World.getInstance().getClan(getClanname());
			if (clan != null) {
				if ((getId() == clan.getLeaderId() // 血盟主で城主クラン
						)
						&& (clan.getCastleId() != 0)) {
					perceivedFrom.sendPackets(new S_CastleMaster(clan.getCastleId(), getId()));
				}
			}
		}
	}

	// 范围外になった认识济みオブジェクトを除去
	private void removeOutOfRangeObjects() {
		for (L1Object known : getKnownObjects()) {
			if (known == null) {
				continue;
			}

			if (Config.PC_RECOGNIZE_RANGE == -1) {
				if (!getLocation().isInScreen(known.getLocation())) { // 画面外
					removeKnownObject(known);
					sendPackets(new S_RemoveObject(known));
				}
			}
			else {
				if (getLocation().getTileLineDistance(known.getLocation()) > Config.PC_RECOGNIZE_RANGE) {
					removeKnownObject(known);
					sendPackets(new S_RemoveObject(known));
				}
			}
		}
	}

	// 更新范围内的物件
	public void updateObject() {
		removeOutOfRangeObjects();

		if (getMapId() <= 10000) {
			for (L1Object visible : L1World.getInstance().getVisibleObjects(this, Config.PC_RECOGNIZE_RANGE)) {
				if (!knownsObject(visible)) {
					visible.onPerceive(this);
				}
				else {
					if (visible instanceof L1NpcInstance) {
						L1NpcInstance npc = (L1NpcInstance) visible;
						if (getLocation().isInScreen(npc.getLocation()) && (npc.getHiddenStatus() != 0)) {
							npc.approachPlayer(this);
						}
					}
				}
				if (hasSkillEffect(GMSTATUS_HPBAR) && L1HpBar.isHpBarTarget(visible)) {
					sendPackets(new S_HPMeter((L1Character) visible));
				}
				// TODO 显示怪物血条
				else if (Config.SHOW_HP_BAR
						&& L1HpBar.isHpBarTarget(visible)
						&& visible instanceof L1MonsterInstance) {
					sendPackets(new S_HPMeter((L1Character) visible));
				}
			}
		} else { // 旅馆内判断
			for (L1Object visible : L1World.getInstance().getVisiblePlayer(this)) {
				if (!knownsObject(visible)) {
					visible.onPerceive(this);
				}
				if (hasSkillEffect(GMSTATUS_HPBAR) && L1HpBar.isHpBarTarget(visible)) {
					if (getInnKeyId() == ((L1Character) visible).getInnKeyId()) {
						sendPackets(new S_HPMeter((L1Character) visible));
					}
				}
			}
		}
	}

	private void sendVisualEffect() {
		int poisonId = 0;
		if (getPoison() != null) { // 毒状态
			poisonId = getPoison().getEffectId();
		}
		if (getParalysis() != null) { // 麻痹状态
			// 麻痹エフェクトを优先して送りたい为、poisonIdを上书き。
			poisonId = getParalysis().getEffectId();
		}
		if (poisonId != 0) { // このifはいらないかもしれない
			sendPackets(new S_Poison(getId(), poisonId));
			broadcastPacket(new S_Poison(getId(), poisonId));
		}
	}

	public void sendVisualEffectAtLogin() {
		// S_Emblemの送信はC_Clanに移行
		// for (L1Clan clan : L1World.getInstance().getAllClans()) {
		// sendPackets(new S_Emblem(clan.getClanId()));
		// }

		if (getClanid() != 0) { // クラン所属
			L1Clan clan = L1World.getInstance().getClan(getClanname());
			if (clan != null) {
				if (isCrown() && (getId() == clan.getLeaderId()) && // プリンスまたはプリンセス、かつ、血盟主で自クランが城主
						(clan.getCastleId() != 0)) {
					sendPackets(new S_CastleMaster(clan.getCastleId(), getId()));
				}
			}
		}

		sendVisualEffect();
	}

	public void sendVisualEffectAtTeleport() {
		if (isDrink()) { // liquorで醉っている
			sendPackets(new S_Liquor(getId(), 1));
		}

		sendVisualEffect();
	}

	private List<Integer> skillList = Lists.newList();

	public void setSkillMastery(int skillid) {
		if (!skillList.contains(skillid)) {
			skillList.add(skillid);
		}
	}

	public void removeSkillMastery(int skillid) {
		if (skillList.contains(skillid)) {
			skillList.remove((Object) skillid);
		}
	}

	public boolean isSkillMastery(int skillid) {
		return skillList.contains(skillid);
	}

	public void clearSkillMastery() {
		skillList.clear();
	}

	// 宠物竞速
	private int _lap = 1;

	public void setLap(int i) {
		_lap = i;
	}

	public int getLap() {
		return _lap;
	}

	private int _lapCheck = 0;

	public void setLapCheck(int i) {
		_lapCheck = i;
	}

	public int getLapCheck() {
		return _lapCheck;
	}

	/**
	 * 只是将总圈数的完程度数量化
	 */
	public int getLapScore() {
		return _lap * 29 + _lapCheck;
	}

	// 补充
	private boolean _order_list = false;

	public boolean isInOrderList() {
		return _order_list;
	}

	public void setInOrderList(boolean bool) {
		_order_list = bool;
	}

	public L1PcInstance() {
		_accessLevel = 0;
		_currentWeapon = 0;
		_inventory = new L1PcInventory(this);
		_dwarf = new L1DwarfInventory(this);
		_dwarfForElf = new L1DwarfForElfInventory(this);
		_tradewindow = new L1Inventory();
		_bookmarks = Lists.newList();
		_quest = new L1Quest(this);
		_equipSlot = new L1EquipmentSlot(this); // 在构造函数传递这个指针或安全会・・・
	}

	@Override
	public void setCurrentHp(int i) {
		if (getCurrentHp() == i) {
			return;
		}
		int currentHp = i;
		if (currentHp >= getMaxHp()) {
			currentHp = getMaxHp();
		}
		setCurrentHpDirect(currentHp);
		sendPackets(new S_HPUpdate(currentHp, getMaxHp()));
		if (isInParty()) { // パーティー中
			getParty().updateMiniHP(this);
		}
	}

	@Override
	public void setCurrentMp(int i) {
		if (getCurrentMp() == i) {
			return;
		}
		int currentMp = i;
		if ((currentMp >= getMaxMp()) || isGm()) {
			currentMp = getMaxMp();
		}
		setCurrentMpDirect(currentMp);
		sendPackets(new S_MPUpdate(currentMp, getMaxMp()));
	}

	@Override
	public L1PcInventory getInventory() {
		return _inventory;
	}

	public L1DwarfInventory getDwarfInventory() {
		return _dwarf;
	}

	public L1DwarfForElfInventory getDwarfForElfInventory() {
		return _dwarfForElf;
	}

	public L1Inventory getTradeWindowInventory() {
		return _tradewindow;
	}

	public boolean isGmInvis() {
		return _gmInvis;
	}

	public void setGmInvis(boolean flag) {
		_gmInvis = flag;
	}

	public int getCurrentWeapon() {
		return _currentWeapon;
	}

	public void setCurrentWeapon(int i) {
		_currentWeapon = i;
	}

	public int getType() {
		return _type;
	}

	public void setType(int i) {
		_type = i;
	}

	public short getAccessLevel() {
		return _accessLevel;
	}

	public void setAccessLevel(short i) {
		_accessLevel = i;
	}

	public int getClassId() {
		return _classId;
	}

	public void setClassId(int i) {
		_classId = i;
		_classFeature = L1ClassFeature.newClassFeature(i);
	}

	private L1ClassFeature _classFeature = null;

	public L1ClassFeature getClassFeature() {
		return _classFeature;
	}

	@Override
	public synchronized int getExp() {
		return _exp;
	}

	@Override
	public synchronized void setExp(int i) {
		_exp = i;
	}

	/** PK 计数 */
	private int _PKcount;

	public int get_PKcount() {
		return _PKcount;
	}

	public void set_PKcount(int i) {
		_PKcount = i;
	}

	/** PK 计数 (妖精用) */
	private int _PkCountForElf;

	public int getPkCountForElf() {
		return _PkCountForElf;
	}

	public void setPkCountForElf(int i) {
		_PkCountForElf = i;
	}

	/** 血盟 ID */
	private int _clanid;

	public int getClanid() {
		return _clanid;
	}

	public void setClanid(int i) {
		_clanid = i;
	}

	/** 血盟名称 */
	private String clanname;

	public String getClanname() {
		return clanname;
	}

	public void setClanname(String s) {
		clanname = s;
	}

	// 参照を持つようにしたほうがいいかもしれない
	public L1Clan getClan() {
		return L1World.getInstance().getClan(getClanname());
	}

	/** 血盟内的阶级(联盟君主、守护骑士、一般、见习) */
	private int _clanRank;

	public int getClanRank() {
		return _clanRank;
	}

	public void setClanRank(int i) {
		_clanRank = i;
	}

	/** 性别 */
	private byte _sex;

	public byte get_sex() {
		return _sex;
	}

	public void set_sex(int i) {
		_sex = (byte) i;
	}

	public boolean isGm() {
		return _gm;
	}

	public void setGm(boolean flag) {
		_gm = flag;
	}

	public boolean isMonitor() {
		return _monitor;
	}

	public void setMonitor(boolean flag) {
		_monitor = flag;
	}

	private L1PcInstance getStat() {
		return null;
	}

	public void reduceCurrentHp(double d, L1Character l1character) {
		getStat().reduceCurrentHp(d, l1character);
	}

	/**
	 * 指定されたプレイヤー群にログアウトしたことを通知する
	 * 
	 * @param playersList
	 *            通知するプレイヤーの配列
	 */
	private void notifyPlayersLogout(List<L1PcInstance> playersArray) {
		for (L1PcInstance player : playersArray) {
			if (player.knownsObject(this)) {
				player.removeKnownObject(this);
				player.sendPackets(new S_RemoveObject(this));
			}
		}
	}

	public void logout() {
		L1World world = L1World.getInstance();
		if (getClanid() != 0) // クラン所属
		{
			L1Clan clan = world.getClan(getClanname());
			if (clan != null) {
				if (clan.getWarehouseUsingChar() == getId()) // 自キャラがクラン仓库使用中
				{
					clan.setWarehouseUsingChar(0); // クラン仓库のロックを解除
				}
			}
		}
		notifyPlayersLogout(getKnownPlayers());
		world.removeVisibleObject(this);
		world.removeObject(this);
		notifyPlayersLogout(world.getRecognizePlayer(this));
		_inventory.clearItems();
		_dwarf.clearItems();
		removeAllKnownObjects();
		stopHpRegeneration();
		stopMpRegeneration();
		setDead(true); // 使い方おかしいかもしれないけど、ＮＰＣに消灭したことをわからせるため
		setNetConnection(null);
		setPacketOutput(null);

		// 管理者介面 by eric1300460
		if (Config.GUI) {
		l1j.eric.gui.J_Main.getInstance().delPlayerTable(getName());
		}
	}

	/** 网络连接状态 */
	public ClientThread getNetConnection() {
		return _netConnection;
	}

	public void setNetConnection(ClientThread clientthread) {
		_netConnection = clientthread;
	}

	public boolean isInParty() {
		return getParty() != null;
	}

	public L1Party getParty() {
		return _party;
	}

	public void setParty(L1Party p) {
		_party = p;
	}

	public boolean isInChatParty() {
		return getChatParty() != null;
	}

	public L1ChatParty getChatParty() {
		return _chatParty;
	}

	public void setChatParty(L1ChatParty cp) {
		_chatParty = cp;
	}

	public int getPartyID() {
		return _partyID;
	}

	public void setPartyID(int partyID) {
		_partyID = partyID;
	}

	public int getTradeID() {
		return _tradeID;
	}

	public void setTradeID(int tradeID) {
		_tradeID = tradeID;
	}

	public void setTradeOk(boolean tradeOk) {
		_tradeOk = tradeOk;
	}

	public boolean getTradeOk() {
		return _tradeOk;
	}

	public int getTempID() {
		return _tempID;
	}

	public void setTempID(int tempID) {
		_tempID = tempID;
	}

	public boolean isTeleport() {
		return _isTeleport;
	}

	public void setTeleport(boolean flag) {
		_isTeleport = flag;
	}

	public boolean isDrink() {
		return _isDrink;
	}

	public void setDrink(boolean flag) {
		_isDrink = flag;
	}

	public boolean isGres() {
		return _isGres;
	}

	public void setGres(boolean flag) {
		_isGres = flag;
	}

	public boolean isPinkName() {
		return _isPinkName;
	}

	public void setPinkName(boolean flag) {
		_isPinkName = flag;
	}

	private List<L1PrivateShopSellList> _sellList = Lists.newList();

	public List<L1PrivateShopSellList> getSellList() {
		return _sellList;
	}

	private List<L1PrivateShopBuyList> _buyList = Lists.newList();

	public List<L1PrivateShopBuyList> getBuyList() {
		return _buyList;
	}

	private byte[] _shopChat;

	public void setShopChat(byte[] chat) {
		_shopChat = chat;
	}

	public byte[] getShopChat() {
		return _shopChat;
	}

	private boolean _isPrivateShop = false;

	public boolean isPrivateShop() {
		return _isPrivateShop;
	}

	public void setPrivateShop(boolean flag) {
		_isPrivateShop = flag;
	}

	private boolean _isTradingInPrivateShop = false;

	public boolean isTradingInPrivateShop() {
		return _isTradingInPrivateShop;
	}

	public void setTradingInPrivateShop(boolean flag) {
		_isTradingInPrivateShop = flag;
	}

	private int _partnersPrivateShopItemCount = 0; // 阅览中の个人商店のアイテム数

	public int getPartnersPrivateShopItemCount() {
		return _partnersPrivateShopItemCount;
	}

	public void setPartnersPrivateShopItemCount(int i) {
		_partnersPrivateShopItemCount = i;
	}

	private PacketOutput _out;

	public void setPacketOutput(PacketOutput out) {
		_out = out;
	}

	public void sendPackets(ServerBasePacket serverbasepacket) {
		if (_out == null) {
			return;
		}

		try {
			_out.sendPacket(serverbasepacket);
		}
		catch (Exception e) {}
	}

	@Override
	public void onAction(L1PcInstance attacker) {
		onAction(attacker, 0);
	}

	@Override
	public void onAction(L1PcInstance attacker, int skillId) {
		// XXX:NullPointerException回避。onActionの引数の型はL1Characterのほうが良い？
		if (attacker == null) {
			return;
		}
		// テレポート处理中
		if (isTeleport()) {
			return;
		}
		// 攻击される侧または攻击する侧がセーフティーゾーン
		if ((getZoneType() == 1) || (attacker.getZoneType() == 1)) {
			// 攻击モーション送信
			L1Attack attack_mortion = new L1Attack(attacker, this, skillId);
			attack_mortion.action();
			return;
		}

		if (checkNonPvP(this, attacker) == true) {
			// 攻击モーション送信
			L1Attack attack_mortion = new L1Attack(attacker, this, skillId);
			attack_mortion.action();
			return;
		}

		if ((getCurrentHp() > 0) && !isDead()) {
			attacker.delInvis();

			boolean isCounterBarrier = false;
			L1Attack attack = new L1Attack(attacker, this, skillId);
			if (attack.calcHit()) {
				if (hasSkillEffect(COUNTER_BARRIER)) {
					L1Magic magic = new L1Magic(this, attacker);
					boolean isProbability = magic.calcProbabilityMagic(COUNTER_BARRIER);
					boolean isShortDistance = attack.isShortDistance();
					if (isProbability && isShortDistance) {
						isCounterBarrier = true;
					}
				}
				if (!isCounterBarrier) {
					attacker.setPetTarget(this);

					attack.calcDamage();
					attack.calcStaffOfMana();
					attack.addPcPoisonAttack(attacker, this);
					attack.addChaserAttack();
				}
			}
			if (isCounterBarrier) {
				attack.actionCounterBarrier();
				attack.commitCounterBarrier();
			}
			else {
				attack.action();
				attack.commit();
			}
		}
	}

	public boolean checkNonPvP(L1PcInstance pc, L1Character target) {
		L1PcInstance targetpc = null;
		if (target instanceof L1PcInstance) {
			targetpc = (L1PcInstance) target;
		}
		else if (target instanceof L1PetInstance) {
			targetpc = (L1PcInstance) ((L1PetInstance) target).getMaster();
		}
		else if (target instanceof L1SummonInstance) {
			targetpc = (L1PcInstance) ((L1SummonInstance) target).getMaster();
		}
		if (targetpc == null) {
			return false; // 相手がPC、サモン、ペット以外
		}
		if (!Config.ALT_NONPVP) { // Non-PvP设定
			if (getMap().isCombatZone(getLocation())) {
				return false;
			}

			// 全战争リストを取得
			for (L1War war : L1World.getInstance().getWarList()) {
				if ((pc.getClanid() != 0) && (targetpc.getClanid() != 0)) { // 共にクラン所属中
					boolean same_war = war.CheckClanInSameWar(pc.getClanname(), targetpc.getClanname());
					if (same_war == true) { // 同じ战争に参加中
						return false;
					}
				}
			}
			// Non-PvP设定でも战争中は布告なしで攻击可能
			if (target instanceof L1PcInstance) {
				L1PcInstance targetPc = (L1PcInstance) target;
				if (isInWarAreaAndWarTime(pc, targetPc)) {
					return false;
				}
			}
			return true;
		}
		else {
			return false;
		}
	}

	private boolean isInWarAreaAndWarTime(L1PcInstance pc, L1PcInstance target) {
		// pcとtargetが战争中に战争エリアに居るか
		int castleId = L1CastleLocation.getCastleIdByArea(pc);
		int targetCastleId = L1CastleLocation.getCastleIdByArea(target);
		if ((castleId != 0) && (targetCastleId != 0) && (castleId == targetCastleId)) {
			if (WarTimeController.getInstance().isNowWar(castleId)) {
				return true;
			}
		}
		return false;
	}

	public void setPetTarget(L1Character target) {
		Object[] petList = getPetList().values().toArray();
		for (Object pet : petList) {
			if (pet instanceof L1PetInstance) {
				L1PetInstance pets = (L1PetInstance) pet;
				pets.setMasterTarget(target);
			}
			else if (pet instanceof L1SummonInstance) {
				L1SummonInstance summon = (L1SummonInstance) pet;
				summon.setMasterTarget(target);
			}
		}
	}

	public void delInvis() {
		// 魔法接续时间内はこちらを利用
		if (hasSkillEffect(INVISIBILITY)) { // インビジビリティ
			killSkillEffectTimer(INVISIBILITY);
			sendPackets(new S_Invis(getId(), 0));
			broadcastPacket(new S_OtherCharPacks(this));
		}
		if (hasSkillEffect(BLIND_HIDING)) { // ブラインド ハイディング
			killSkillEffectTimer(BLIND_HIDING);
			sendPackets(new S_Invis(getId(), 0));
			broadcastPacket(new S_OtherCharPacks(this));
		}
	}

	public void delBlindHiding() {
		// 魔法接续时间终了はこちら
		killSkillEffectTimer(BLIND_HIDING);
		sendPackets(new S_Invis(getId(), 0));
		broadcastPacket(new S_OtherCharPacks(this));
	}

	// 魔法のダメージの场合はここを使用 (ここで魔法ダメージ轻减处理) attr:0.无属性魔法,1.地魔法,2.火魔法,3.水魔法,4.风魔法
	public void receiveDamage(L1Character attacker, int damage, int attr) {
		int player_mr = getMr();
		int rnd = Random.nextInt(100) + 1;
		if (player_mr >= rnd) {
			damage /= 2;
		}
		receiveDamage(attacker, damage, false);
	}

	public void receiveManaDamage(L1Character attacker, int mpDamage) { // 攻击でＭＰを减らすときはここを使用
		if ((mpDamage > 0) && !isDead()) {
			delInvis();
			if (attacker instanceof L1PcInstance) {
				L1PinkName.onAction(this, attacker);
			}
			if ((attacker instanceof L1PcInstance) && ((L1PcInstance) attacker).isPinkName()) {
				// ガードが画面内にいれば、攻击者をガードのターゲットに设定する
				for (L1Object object : L1World.getInstance().getVisibleObjects(attacker)) {
					if (object instanceof L1GuardInstance) {
						L1GuardInstance guard = (L1GuardInstance) object;
						guard.setTarget(((L1PcInstance) attacker));
					}
				}
			}

			int newMp = getCurrentMp() - mpDamage;
			if (newMp > getMaxMp()) {
				newMp = getMaxMp();
			}

			if (newMp <= 0) {
				newMp = 0;
			}
			setCurrentMp(newMp);
		}
	}

	public double _oldTime = 0; // 连续魔法ダメージの轻减に使用する

	public void receiveDamage(L1Character attacker, double damage, boolean isMagicDamage) { // 攻击でＨＰを减らすときはここを使用
		if ((getCurrentHp() > 0) && !isDead()) {
			if (attacker != this) {
				if (!(attacker instanceof L1EffectInstance) && !knownsObject(attacker) && (attacker.getMapId() == getMapId())) {
					attacker.onPerceive(this);
				}
			}

			if (isMagicDamage == true) { // 连续魔法ダメージによる轻减
				double nowTime = (double) System.currentTimeMillis();
				double interval = (20D - (nowTime - _oldTime) / 100D) % 20D;

				if (damage > 0) {
					if (interval > 0) 
						damage *= (1D - interval / 30D);

					if (damage < 1) {
						damage = 0;
					}

					_oldTime = nowTime; // 次回のために时间を保存
				}
			}
			if (damage > 0) {
				delInvis();
				if (attacker instanceof L1PcInstance) {
					L1PinkName.onAction(this, attacker);
				}
				if ((attacker instanceof L1PcInstance) && ((L1PcInstance) attacker).isPinkName()) {
					// ガードが画面内にいれば、攻击者をガードのターゲットに设定する
					for (L1Object object : L1World.getInstance().getVisibleObjects(attacker)) {
						if (object instanceof L1GuardInstance) {
							L1GuardInstance guard = (L1GuardInstance) object;
							guard.setTarget(((L1PcInstance) attacker));
						}
					}
				}
				removeSkillEffect(FOG_OF_SLEEPING);
			}

			if (hasSkillEffect(MORTAL_BODY) && (getId() != attacker.getId())) {
				int rnd = Random.nextInt(100) + 1;
				if ((damage > 0) && (rnd <= 10)) {
					if (attacker instanceof L1PcInstance) {
						L1PcInstance attackPc = (L1PcInstance) attacker;
						attackPc.sendPackets(new S_DoActionGFX(attackPc.getId(), ActionCodes.ACTION_Damage));
						attackPc.broadcastPacket(new S_DoActionGFX(attackPc.getId(), ActionCodes.ACTION_Damage));
						attackPc.receiveDamage(this, 30, false);
					}
					else if (attacker instanceof L1NpcInstance) {
						L1NpcInstance attackNpc = (L1NpcInstance) attacker;
						attackNpc.broadcastPacket(new S_DoActionGFX(attackNpc.getId(), ActionCodes.ACTION_Damage));
						attackNpc.receiveDamage(this, 30);
					}
				}
			}
			if (getInventory().checkEquipped(145) // バーサーカーアックス
					|| getInventory().checkEquipped(149)) { // ミノタウルスアックス
				damage *= 1.5; // 被ダメ1.5倍
			}
			if (hasSkillEffect(ILLUSION_AVATAR)) {// 幻术师魔法 (幻觉：化身)
				damage *= 1.2; // 被ダメ1.2倍
			}
			if (attacker instanceof L1PetInstance) {
				L1PetInstance pet = (L1PetInstance) attacker;
				// 目标在安区、攻击者在安区、NOPVP
				if ((getZoneType() == 1) || (pet.getZoneType() == 1) || (checkNonPvP(this, pet))) {
					damage = 0;
				}
			} else if (attacker instanceof L1SummonInstance) {
				L1SummonInstance summon = (L1SummonInstance) attacker;
				// 目标在安区、攻击者在安区、NOPVP
				if ((getZoneType() == 1) || (summon.getZoneType() == 1) || (checkNonPvP(this, summon))) {
					damage = 0;
				}
			}
			int newHp = getCurrentHp() - (int) (damage);
			if (newHp > getMaxHp()) {
				newHp = getMaxHp();
			}
			if (newHp <= 0) {
				if (isGm()) {
					setCurrentHp(getMaxHp());
				}
				else {
					death(attacker);
				}
			}
			if (newHp > 0) {
				setCurrentHp(newHp);
			}
		}
		else if (!isDead()) { // 念のため
			System.out.println("警告∶PC的hp减少的运算出现错误。※将视为hp=0作处理");
			death(attacker);
		}
	}

	public void death(L1Character lastAttacker) {
		synchronized (this) {
			if (isDead()) {
				return;
			}
			setDead(true);
			setStatus(ActionCodes.ACTION_Die);
		}
		GeneralThreadPool.getInstance().execute(new Death(lastAttacker));

	}

	private class Death implements Runnable {
		L1Character _lastAttacker;

		Death(L1Character cha) {
			_lastAttacker = cha;
		}

		@Override
		public void run() {
			L1Character lastAttacker = _lastAttacker;
			_lastAttacker = null;
			setCurrentHp(0);
			setGresValid(false); // EXPロストするまでG-RES无效

			while (isTeleport()) { // テレポート中なら终わるまで待つ
				try {
					Thread.sleep(300);
				}
				catch (Exception e) {}
			}

			stopHpRegeneration();
			stopMpRegeneration();

			int targetobjid = getId();
			getMap().setPassable(getLocation(), true);

			// エンチャントを解除する
			// 变身状态も解除されるため、キャンセレーションをかけてから变身状态に戻す
			int tempchargfx = 0;
			if (hasSkillEffect(SHAPE_CHANGE)) {
				tempchargfx = getTempCharGfx();
				setTempCharGfxAtDead(tempchargfx);
			}
			else {
				setTempCharGfxAtDead(getClassId());
			}

			// 相消无法消除的状态
			L1SkillUse l1skilluse = new L1SkillUse();
			l1skilluse.handleCommands(L1PcInstance.this, CANCELLATION, getId(), getX(), getY(), null, 0, L1SkillUse.TYPE_LOGIN);

			// 战斗药水
			if (hasSkillEffect(EFFECT_POTION_OF_BATTLE)) {
				removeSkillEffect(EFFECT_POTION_OF_BATTLE);
			}
			// 象牙塔妙药
			if (hasSkillEffect(COOKING_WONDER_DRUG)) {
				removeSkillEffect(COOKING_WONDER_DRUG);
			}

			sendPackets(new S_DoActionGFX(targetobjid, ActionCodes.ACTION_Die));
			broadcastPacket(new S_DoActionGFX(targetobjid, ActionCodes.ACTION_Die));

			if (lastAttacker != L1PcInstance.this) {
				// セーフティーゾーン、コンバットゾーンで最后に杀したキャラが
				// プレイヤーorペットだったら、ペナルティなし
				if (getZoneType() != 0) {
					L1PcInstance player = null;
					if (lastAttacker instanceof L1PcInstance) {
						player = (L1PcInstance) lastAttacker;
					}
					else if (lastAttacker instanceof L1PetInstance) {
						player = (L1PcInstance) ((L1PetInstance) lastAttacker).getMaster();
					}
					else if (lastAttacker instanceof L1SummonInstance) {
						player = (L1PcInstance) ((L1SummonInstance) lastAttacker).getMaster();
					}
					if (player != null) {
						// 战争中に战争エリアに居る场合は例外
						if (!isInWarAreaAndWarTime(L1PcInstance.this, player)) {
							return;
						}
					}
				}

				boolean sim_ret = simWarResult(lastAttacker); // 模拟战
				if (sim_ret == true) { // 模拟战中ならペナルティなし
					return;
				}
			}

			if (!getMap().isEnabledDeathPenalty()) {
				return;
			}

			// 决斗中ならペナルティなし
			L1PcInstance fightPc = null;
			if (lastAttacker instanceof L1PcInstance) {
				fightPc = (L1PcInstance) lastAttacker;
			}

			// 判断是否属于新手保护阶段, 并且是被其他玩家所杀死
			boolean isNovice = false;
			if (hasSkillEffect(L1SkillId.STATUS_NOVICE) && (fightPc != null)) {

				// 判断是否在新手等级保护范围内
				if (fightPc.getLevel() > (getLevel() + Config.NOVICE_PROTECTION_LEVEL_RANGE)) {
					isNovice = true;
				}
			}

			if (fightPc != null) {
				if ((getFightId() == fightPc.getId()) && (fightPc.getFightId() == getId())) { // 决斗中
					setFightId(0);
					sendPackets(new S_PacketBox(S_PacketBox.MSG_DUEL, 0, 0));
					fightPc.setFightId(0);
					fightPc.sendPackets(new S_PacketBox(S_PacketBox.MSG_DUEL, 0, 0));
					return;
				}
			}

			/*
			 * deathPenalty(); // EXPロスト
			 * 
			 * setGresValid(true); // EXPロストしたらG-RES有效
			 * 
			 * if (getExpRes() == 0) { setExpRes(1); }
			 */

			// TODO 玩家被怪打死公告
			L1NpcInstance npc = null;
			if (Config.PKM) {
				if (lastAttacker instanceof L1NpcInstance) {
					npc = (L1NpcInstance) lastAttacker;
					String attack_name = npc.getName(); // 怪物名称
					String target_name = getName(); // 玩家名称
					L1World.getInstance().broadcastServerMessage
					((new StringBuilder()).append
							("玩家 ").append(target_name).append
							(" 与怪物 ").append(attack_name).append
							(" 打斗激烈终因体力不支倒下！").toString());
				}
			}

			// ガードに杀された场合のみ、PKカウントを减らしガードに攻击されなくなる
			if (lastAttacker instanceof L1GuardInstance) {
				if (get_PKcount() > 0) {
					set_PKcount(get_PKcount() - 1);
				}
				setLastPk(null);
			}
			/** 妖精杀死同族PK值另外计算 */
			if (lastAttacker instanceof L1GuardianInstance) {
				if (getPkCountForElf() > 0) {
					setPkCountForElf(getPkCountForElf() - 1);
				}
				setLastPkForElf(null);
			}

			// 增加新手保护阶段, 将不会损失道具(不会喷装)
			if (!isNovice) {
				// 一定の确率でアイテムをDROP
				// アライメント32000以上で0%、以降-1000每に0.4%
				// アライメントが0未满の场合は-1000每に0.8%
				// アライメント-32000以下で最高51.2%のDROP率
				int lostRate = (int) (((getLawful() + 32768D) / 1000D - 65D) * 4D);
				if (lostRate < 0) {
					lostRate *= -1;
					if (getLawful() < 0) {
						lostRate *= 2;
					}
					int rnd = Random.nextInt(1000) + 1;
					if (rnd <= lostRate) {
						int count = 1;
						if (getLawful() <= -30000) {
							count = Random.nextInt(4) + 1;
						}
						else if (getLawful() <= -20000) {
							count = Random.nextInt(3) + 1;
						}
						else if (getLawful() <= -10000) {
							count = Random.nextInt(2) + 1;
						}
						else if (getLawful() < 0) {
							count = Random.nextInt(1) + 1;
						}
						caoPenaltyResult(count);
					}
				}
			}

			boolean castle_ret = castleWarResult(); // 攻城战
			if (castle_ret == true) { // 攻城战中で旗内なら赤ネームペナルティなし
				return;
			}

			if (!getMap().isEnabledDeathPenalty()) {
				return;
			}

			// 增加新手保护阶段, 将不会损失经验值
			if (!isNovice) {
				deathPenalty(); // EXPロスト
				setGresValid(true); // EXPロストしたらG-RES有效
			}

			if (get_PKcount() > 0) {
				set_PKcount(get_PKcount() - 1);
			}
			setLastPk(null);

			// 最后に杀したキャラがプレイヤーだったら、赤ネームにする
			L1PcInstance player = null;
			if (lastAttacker instanceof L1PcInstance) {
				player = (L1PcInstance) lastAttacker;
			}
			if (player != null) {
				if ((getLawful() >= 0) && (isPinkName() == false)) {
					boolean isChangePkCount = false;
					// アライメントが30000未满の场合はPKカウント增加
					if (player.getLawful() < 30000) {
						player.set_PKcount(player.get_PKcount() + 1);
						isChangePkCount = true;
						if (player.isElf() && isElf()) {
							player.setPkCountForElf(player.getPkCountForElf() + 1);
						}
					}
					player.setLastPk();
					/** 正义值满不会被警卫追杀 */
					if (player.getLawful() == 32767) {
						player.setLastPk(null);
					}
					if (player.isElf() && isElf()) {
						player.setLastPkForElf();
					}

					// アライメント处理
					// 公式の発表および各LVでのPKからつじつまの合うように变更
					// （PK侧のLVに依存し、高LVほどリスクも高い）
					// 48あたりで-8kほど DKの时点で10k强
					// 60で约20k强 65で30k弱
					int lawful;

					if (player.getLevel() < 50) {
						lawful = -1 * (int) ((Math.pow(player.getLevel(), 2) * 4));
					}
					else {
						lawful = -1 * (int) ((Math.pow(player.getLevel(), 3) * 0.08));
					}
					// もし(元々のアライメント-1000)が计算后より低い场合
					// 元々のアライメント-1000をアライメント值とする
					// （连续でPKしたときにほとんど值が变わらなかった记忆より）
					// これは上の式よりも自信度が低いうろ觉えですので
					// 明らかにこうならない！という场合は修正お愿いします
					if ((player.getLawful() - 1000) < lawful) {
						lawful = player.getLawful() - 1000;
					}

					if (lawful <= -32768) {
						lawful = -32768;
					}
					player.setLawful(lawful);

					S_Lawful s_lawful = new S_Lawful(player.getId(), player.getLawful());
					player.sendPackets(s_lawful);
					player.broadcastPacket(s_lawful);

					if (isChangePkCount && (player.get_PKcount() >= 5) && (player.get_PKcount() < 10)) {
						// あなたのPK回数が%0になりました。回数が%1になると地狱行きです。
						player.sendPackets(new S_BlueMessage(551, String.valueOf(player.get_PKcount()), "10"));
					}
					else if (isChangePkCount && (player.get_PKcount() >= 10)) {
						player.beginHell(true);
					}
				}
				else {
					setPinkName(false);
				}
			}
			_pcDeleteTimer = new L1PcDeleteTimer(L1PcInstance.this);
			_pcDeleteTimer.begin();
		}
	}

	public void stopPcDeleteTimer() {
		if (_pcDeleteTimer != null) {
			_pcDeleteTimer.cancel();
			_pcDeleteTimer = null;
		}
	}

	private void caoPenaltyResult(int count) {
		for (int i = 0; i < count; i++) {
			L1ItemInstance item = getInventory().CaoPenalty();

			if (item != null) {
				getInventory().tradeItem(item, item.isStackable() ? item.getCount() : 1,
						L1World.getInstance().getInventory(getX(), getY(), getMapId()));
				sendPackets(new S_ServerMessage(638, item.getLogName())); // 您损失了 %0。
			}
			else {}
		}
	}

	public boolean castleWarResult() {
		if ((getClanid() != 0) && isCrown()) { // 预检查血盟隶属关系
			L1Clan clan = L1World.getInstance().getClan(getClanname());
			// 获得所有战争列表
			for (L1War war : L1World.getInstance().getWarList()) {
				int warType = war.GetWarType();
				boolean isInWar = war.CheckClanInWar(getClanname());
				boolean isAttackClan = war.CheckAttackClan(getClanname());
				if ((getId() == clan.getLeaderId()) && // 血盟主で攻击侧で攻城战中
						(warType == 1) && isInWar && isAttackClan) {
					String enemyClanName = war.GetEnemyClanName(getClanname());
					if (enemyClanName != null) {
						war.CeaseWar(getClanname(), enemyClanName); // 终结
					}
					break;
				}
			}
		}

		int castleId = 0;
		boolean isNowWar = false;
		castleId = L1CastleLocation.getCastleIdByArea(this);
		if (castleId != 0) { // 旗内に居る
			isNowWar = WarTimeController.getInstance().isNowWar(castleId);
		}
		return isNowWar;
	}

	public boolean simWarResult(L1Character lastAttacker) {
		if (getClanid() == 0) { // 没有城的血盟
			return false;
		}
		if (Config.SIM_WAR_PENALTY) { // 模拟战ペナルティありの场合はfalse
			return false;
		}
		L1PcInstance attacker = null;
		String enemyClanName = null;
		boolean sameWar = false;

		if (lastAttacker instanceof L1PcInstance) {
			attacker = (L1PcInstance) lastAttacker;
		}
		else if (lastAttacker instanceof L1PetInstance) {
			attacker = (L1PcInstance) ((L1PetInstance) lastAttacker).getMaster();
		}
		else if (lastAttacker instanceof L1SummonInstance) {
			attacker = (L1PcInstance) ((L1SummonInstance) lastAttacker).getMaster();
		}
		else {
			return false;
		}

		// 获得所有战争列表
		for (L1War war : L1World.getInstance().getWarList()) {
			L1Clan clan = L1World.getInstance().getClan(getClanname());

			int warType = war.GetWarType();
			boolean isInWar = war.CheckClanInWar(getClanname());
			if ((attacker != null) && (attacker.getClanid() != 0)) { // lastAttackerがPC、サモン、ペットでクラン所属中
				sameWar = war.CheckClanInSameWar(getClanname(), attacker.getClanname());
			}

			if ((getId() == clan.getLeaderId()) && // 血盟主で模拟战中
					(warType == 2) && (isInWar == true)) {
				enemyClanName = war.GetEnemyClanName(getClanname());
				if (enemyClanName != null) {
					war.CeaseWar(getClanname(), enemyClanName); // 终结
				}
			}

			if ((warType == 2) && sameWar) {// 模拟战で同じ战争に参加中の场合、ペナルティなし
				return true;
			}
		}
		return false;
	}

	public void resExp() {
		int oldLevel = getLevel();
		int needExp = ExpTable.getNeedExpNextLevel(oldLevel);
		int exp = 0;
		if (oldLevel < 45) {
			exp = (int) (needExp * 0.05);
		} else if (oldLevel == 45) {
			
			exp = (int) (needExp * 0.045);
		} else if (oldLevel == 46) {
			
			exp = (int) (needExp * 0.04);
		} else if (oldLevel == 47) {
			
			exp = (int) (needExp * 0.035);
		} else if (oldLevel == 48) {
			
			exp = (int) (needExp * 0.03);
		} else if (oldLevel >= 49) {
			
			exp = (int) (needExp * 0.025);
		}

		if (exp == 0) {
			return;
		}
		addExp(exp);
	}

	/** 角色死亡处罚 */
	public void deathPenalty() {
		int oldLevel = getLevel();
		int needExp = ExpTable.getNeedExpNextLevel(oldLevel);
		int exp = 0;
		if ((oldLevel >= 1) && (oldLevel < 11)) {
			exp = 0;
		} else if ((oldLevel >= 11) && (oldLevel < 45)) {
			
			exp = (int) (needExp * 0.1);
		} else if (oldLevel == 45) {
			
			exp = (int) (needExp * 0.09);
		} else if (oldLevel == 46) {
			
			exp = (int) (needExp * 0.08);
		} else if (oldLevel == 47) {
			
			exp = (int) (needExp * 0.07);
		} else if (oldLevel == 48) {
			
			exp = (int) (needExp * 0.06);
		} else if (oldLevel >= 49) {
			
			exp = (int) (needExp * 0.05);
		}

		if (exp == 0) {
			return;
		}

		if (getExpRes() >= 0) {
			setExpRes(getExpRes() + 1);
		}
		addExp(-exp);
	}

	private int _originalEr = 0; // ● 初始 DEX ER 补正

	public int getOriginalEr() {

		return _originalEr;
	}

	/** 回避率变化 */
	public int getEr() {
		if (hasSkillEffect(STRIKER_GALE)) { // 精准射击
			return 0;
		}

		int er = 0;
		if (isKnight()) {
			er = getLevel() / 4; // 骑士
		}
		else if (isCrown() || isElf()) {
			er = getLevel() / 8; // 王族・精灵
		}
		else if (isDarkelf()) {
			er = getLevel() / 6; // 黑暗精灵
		}
		else if (isWizard()) {
			er = getLevel() / 10; // 魔法师
		}
		else if (isDragonKnight()) {
			er = getLevel() / 7; // 龙骑士
		}
		else if (isIllusionist()) {
			er = getLevel() / 9; // 幻术师
		}

		er += (getDex() - 8) / 2;

		er += getOriginalEr();

		if (hasSkillEffect(DRESS_EVASION)) { // 闪避提升
			er += 12;
		}
		if (hasSkillEffect(SOLID_CARRIAGE)) { // 坚固防护
			er += 15;
		}
		return er;
	}

	public L1BookMark getBookMark(String name) {
		for (int i = 0; i < _bookmarks.size(); i++) {
			L1BookMark element = _bookmarks.get(i);
			if (element.getName().equalsIgnoreCase(name)) {
				return element;
			}

		}
		return null;
	}

	public L1BookMark getBookMark(int id) {
		for (int i = 0; i < _bookmarks.size(); i++) {
			L1BookMark element = _bookmarks.get(i);
			if (element.getId() == id) {
				return element;
			}

		}
		return null;
	}

	public int getBookMarkSize() {
		return _bookmarks.size();
	}

	public void addBookMark(L1BookMark book) {
		_bookmarks.add(book);
	}

	public void removeBookMark(L1BookMark book) {
		_bookmarks.remove(book);
	}

	public L1ItemInstance getWeapon() {
		return _weapon;
	}

	public void setWeapon(L1ItemInstance weapon) {
		_weapon = weapon;
	}

	public L1Quest getQuest() {
		return _quest;
	}

	public boolean isCrown() {
		return ((getClassId() == CLASSID_PRINCE) || (getClassId() == CLASSID_PRINCESS));
	}

	public boolean isKnight() {
		return ((getClassId() == CLASSID_KNIGHT_MALE) || (getClassId() == CLASSID_KNIGHT_FEMALE));
	}

	public boolean isElf() {
		return ((getClassId() == CLASSID_ELF_MALE) || (getClassId() == CLASSID_ELF_FEMALE));
	}

	public boolean isWizard() {
		return ((getClassId() == CLASSID_WIZARD_MALE) || (getClassId() == CLASSID_WIZARD_FEMALE));
	}

	public boolean isDarkelf() {
		return ((getClassId() == CLASSID_DARK_ELF_MALE) || (getClassId() == CLASSID_DARK_ELF_FEMALE));
	}

	public boolean isDragonKnight() {
		return ((getClassId() == CLASSID_DRAGON_KNIGHT_MALE) || (getClassId() == CLASSID_DRAGON_KNIGHT_FEMALE));
	}

	public boolean isIllusionist() {
		return ((getClassId() == CLASSID_ILLUSIONIST_MALE) || (getClassId() == CLASSID_ILLUSIONIST_FEMALE));
	}

	private static Logger _log = Logger.getLogger(L1PcInstance.class.getName());
	private ClientThread _netConnection;
	private int _classId;
	private int _type;
	private int _exp;
	private final L1Karma _karma = new L1Karma();
	private boolean _gm;
	private boolean _monitor;
	private boolean _gmInvis;
	private short _accessLevel;
	private int _currentWeapon;
	private final L1PcInventory _inventory;
	private final L1DwarfInventory _dwarf;
	private final L1DwarfForElfInventory _dwarfForElf;
	private final L1Inventory _tradewindow;
	private L1ItemInstance _weapon;
	private L1Party _party;
	private L1ChatParty _chatParty;
	private int _partyID;
	private int _tradeID;
	private boolean _tradeOk;
	private int _tempID;
	private boolean _isTeleport = false;
	private boolean _isDrink = false;
	private boolean _isGres = false;
	private boolean _isPinkName = false;
	private final List<L1BookMark> _bookmarks;
	private L1Quest _quest;
	private MpRegeneration _mpRegen;
	private MpRegenerationByDoll _mpRegenByDoll;
	private MpReductionByAwake _mpReductionByAwake;
	private SkillSound _SkillSound; // 修改持续出现魔法特效 by missu0524
	private HpRegeneration _hpRegen;
	private HpRegenerationByDoll _hpRegenByDoll; // 魔法娃娃回血功能
	private ItemMakeByDoll _itemMakeByDoll;
	private static Timer _regenTimer = new Timer(true);
	private boolean _mpRegenActive;
	private boolean _mpRegenActiveByDoll;
	private boolean _mpReductionActiveByAwake;
	private boolean _SkillSoundActive; // 修改持续出现魔法特效 by missu0524
	private boolean _hpRegenActive;
	private boolean _hpRegenActiveByDoll; // 魔法娃娃回血功能
	private boolean _ItemMakeActiveByDoll;
	private L1EquipmentSlot _equipSlot;
	private L1PcDeleteTimer _pcDeleteTimer;
	private String _accountName; // ● 账号名称

	public String getAccountName() {
		return _accountName;
	}

	public void setAccountName(String s) {
		_accountName = s;
	}

	private short _baseMaxHp = 0; // ● 基本 ＭＡＸＨＰ（1～32767）

	public short getBaseMaxHp() {
		return _baseMaxHp;
	}

	public void addBaseMaxHp(short i) {
		i += _baseMaxHp;
		if (i >= 32767) {
			i = 32767;
		}
		else if (i < 1) {
			i = 1;
		}
		addMaxHp(i - _baseMaxHp);
		_baseMaxHp = i;
	}

	private short _baseMaxMp = 0; // ● 基本 ＭＡＸＭＰ（0～32767）

	public short getBaseMaxMp() {
		return _baseMaxMp;
	}

	public void addBaseMaxMp(short i) {
		i += _baseMaxMp;
		if (i >= 32767) {
			i = 32767;
		}
		else if (i < 0) {
			i = 0;
		}
		addMaxMp(i - _baseMaxMp);
		_baseMaxMp = i;
	}

	private int _baseAc = 0; // ● 基本 ＡＣ（-128～127）

	public int getBaseAc() {
		return _baseAc;
	}

	private int _originalAc = 0; // ● 初始 DEX ＡＣ 补正

	public int getOriginalAc() {

		return _originalAc;
	}

	private byte _baseStr = 0; // ● 基本 ＳＴＲ（1～127）

	public byte getBaseStr() {
		return _baseStr;
	}

	public void addBaseStr(byte i) {
		i += _baseStr;
		if (i >= 127) {
			i = 127;
		}
		else if (i < 1) {
			i = 1;
		}
		addStr((byte) (i - _baseStr));
		_baseStr = i;
	}

	private byte _baseCon = 0; // ● 基本 ＣＯＮ（1～127）

	public byte getBaseCon() {
		return _baseCon;
	}

	public void addBaseCon(byte i) {
		i += _baseCon;
		if (i >= 127) {
			i = 127;
		}
		else if (i < 1) {
			i = 1;
		}
		addCon((byte) (i - _baseCon));
		_baseCon = i;
	}

	private byte _baseDex = 0; // ● 基本 ＤＥＸ（1～127）

	public byte getBaseDex() {
		return _baseDex;
	}

	public void addBaseDex(byte i) {
		i += _baseDex;
		if (i >= 127) {
			i = 127;
		}
		else if (i < 1) {
			i = 1;
		}
		addDex((byte) (i - _baseDex));
		_baseDex = i;
	}

	private byte _baseCha = 0; // ● 基本 ＣＨＡ（1～127）

	public byte getBaseCha() {
		return _baseCha;
	}

	public void addBaseCha(byte i) {
		i += _baseCha;
		if (i >= 127) {
			i = 127;
		}
		else if (i < 1) {
			i = 1;
		}
		addCha((byte) (i - _baseCha));
		_baseCha = i;
	}

	private byte _baseInt = 0; // ● 基本ＩＮＴ（1～127）

	public byte getBaseInt() {
		return _baseInt;
	}

	public void addBaseInt(byte i) {
		i += _baseInt;
		if (i >= 127) {
			i = 127;
		}
		else if (i < 1) {
			i = 1;
		}
		addInt((byte) (i - _baseInt));
		_baseInt = i;
	}

	private byte _baseWis = 0; // ● 基本 ＷＩＳ（1～127）

	public byte getBaseWis() {
		return _baseWis;
	}

	public void addBaseWis(byte i) {
		i += _baseWis;
		if (i >= 127) {
			i = 127;
		}
		else if (i < 1) {
			i = 1;
		}
		addWis((byte) (i - _baseWis));
		_baseWis = i;
	}

	private int _originalStr = 0; // ● 初始  STR

	public int getOriginalStr() {
		return _originalStr;
	}

	public void setOriginalStr(int i) {
		_originalStr = i;
	}

	private int _originalCon = 0; // ● 初始 CON

	public int getOriginalCon() {
		return _originalCon;
	}

	public void setOriginalCon(int i) {
		_originalCon = i;
	}

	private int _originalDex = 0; // ● 初始 DEX

	public int getOriginalDex() {
		return _originalDex;
	}

	public void setOriginalDex(int i) {
		_originalDex = i;
	}

	private int _originalCha = 0; // ● 初始 CHA

	public int getOriginalCha() {
		return _originalCha;
	}

	public void setOriginalCha(int i) {
		_originalCha = i;
	}

	private int _originalInt = 0; // ● 初始 INT

	public int getOriginalInt() {
		return _originalInt;
	}

	public void setOriginalInt(int i) {
		_originalInt = i;
	}

	private int _originalWis = 0; // ● 初始 WIS

	public int getOriginalWis() {
		return _originalWis;
	}

	public void setOriginalWis(int i) {
		_originalWis = i;
	}

	private int _originalDmgup = 0; // ● 初始STR ダメージ补正

	public int getOriginalDmgup() {

		return _originalDmgup;
	}

	private int _originalBowDmgup = 0; // ● 初始DEX 弓ダメージ补正

	public int getOriginalBowDmgup() {

		return _originalBowDmgup;
	}

	private int _originalHitup = 0; // ● 初始STR 命中补正

	public int getOriginalHitup() {

		return _originalHitup;
	}

	private int _originalBowHitup = 0; // ● 初始DEX 命中补正

	public int getOriginalBowHitup() {

		return _originalBowHitup;
	}

	private int _originalMr = 0; // ● 初始WIS 魔法防御

	public int getOriginalMr() {

		return _originalMr;
	}

	private int _originalMagicHit = 0; // ● 初始INT 魔法命中

	public int getOriginalMagicHit() {

		return _originalMagicHit;
	}

	private int _originalMagicCritical = 0; // ● 初始INT 魔法クリティカル

	public int getOriginalMagicCritical() {

		return _originalMagicCritical;
	}

	private int _originalMagicConsumeReduction = 0; // ● 初始INT 消费MP轻减

	public int getOriginalMagicConsumeReduction() {

		return _originalMagicConsumeReduction;
	}

	private int _originalMagicDamage = 0; // ● 初始INT 魔法ダメージ

	public int getOriginalMagicDamage() {

		return _originalMagicDamage;
	}

	private int _originalHpup = 0; // ● 初始CON HP上升值补正

	public int getOriginalHpup() {

		return _originalHpup;
	}

	private int _originalMpup = 0; // ● 初始WIS MP上升值补正

	public int getOriginalMpup() {

		return _originalMpup;
	}

	private int _baseDmgup = 0; // ● 基本伤害补正（-128～127）

	public int getBaseDmgup() {
		return _baseDmgup;
	}

	private int _baseBowDmgup = 0; // ● 弓的基本伤害补正（-128～127）

	public int getBaseBowDmgup() {
		return _baseBowDmgup;
	}

	private int _baseHitup = 0; // ● 基本命中补正（-128～127）

	public int getBaseHitup() {
		return _baseHitup;
	}

	private int _baseBowHitup = 0; // ● 弓的基本命中补正（-128～127）

	public int getBaseBowHitup() {
		return _baseBowHitup;
	}

	private int _baseMr = 0; // ● 基本魔法防御（0～）

	public int getBaseMr() {
		return _baseMr;
	}

	private int _advenHp; // ● // アドバンスド スピリッツで增加しているＨＰ

	public int getAdvenHp() {
		return _advenHp;
	}

	public void setAdvenHp(int i) {
		_advenHp = i;
	}

	private int _advenMp; // ● // アドバンスド スピリッツで增加しているＭＰ

	public int getAdvenMp() {
		return _advenMp;
	}

	public void setAdvenMp(int i) {
		_advenMp = i;
	}

	private int _highLevel; // ● 过去最高等级

	public int getHighLevel() {
		return _highLevel;
	}

	public void setHighLevel(int i) {
		_highLevel = i;
	}

	private int _bonusStats; // ● 割り振ったボーナスステータス

	public int getBonusStats() {
		return _bonusStats;
	}

	public void setBonusStats(int i) {
		_bonusStats = i;
	}

	private int _elixirStats; // ● エリクサーで上がったステータス

	public int getElixirStats() {
		return _elixirStats;
	}

	public void setElixirStats(int i) {
		_elixirStats = i;
	}

	private int _elfAttr; // ● 精灵属性

	public int getElfAttr() {
		return _elfAttr;
	}

	public void setElfAttr(int i) {
		_elfAttr = i;
	}

	private int _elfAttr2; // 精灵第二属性

	public int getElfAttr2() {
		return _elfAttr2;
	}

	public void setElfAttr2(int i) {
		_elfAttr2 = i;
	}

	private int _expRes; // ● 经验值购买

	public int getExpRes() {
		return _expRes;
	}

	public void setExpRes(int i) {
		_expRes = i;
	}

	private int _partnerId; // ● 结婚对象

	public int getPartnerId() {
		return _partnerId;
	}

	public void setPartnerId(int i) {
		_partnerId = i;
	}

	private int _onlineStatus; // ● 角色上线状态

	public int getOnlineStatus() {
		return _onlineStatus;
	}

	public void setOnlineStatus(int i) {
		_onlineStatus = i;
	}

	private int _homeTownId; // ● ホームタウン

	public int getHomeTownId() {
		return _homeTownId;
	}

	public void setHomeTownId(int i) {
		_homeTownId = i;
	}

	private int _contribution; // ● 贡献度

	public int getContribution() {
		return _contribution;
	}

	public void setContribution(int i) {
		_contribution = i;
	}

	private int _pay; // 村庄福利金 此栏位由 HomeTownTimeController 处理 update

	public int getPay() {
		return _pay;
	}

	public void setPay(int i) {
		_pay = i;
	}

	/** 地狱停留时间 (秒) */
	private int _hellTime;

	public int getHellTime() {
		return _hellTime;
	}

	public void setHellTime(int i) {
		_hellTime = i;
	}

	/** 角色封锁 */
	private boolean _banned;

	public boolean isBanned() {
		return _banned;
	}

	public void setBanned(boolean flag) {
		_banned = flag;
	}

	private int _food; // ● 饱食度

	public int get_food() {
		return _food;
	}

	public void set_food(int i) {
		_food = i;
	}

	public L1EquipmentSlot getEquipSlot() {
		return _equipSlot;
	}

	public static L1PcInstance load(String charName) {
		L1PcInstance result = null;
		try {
			result = CharacterTable.getInstance().loadCharacter(charName);
		}
		catch (Exception e) {
			_log.log(Level.SEVERE, e.getLocalizedMessage(), e);
		}
		return result;
	}

	/**
	 * このプレイヤーの状态をストレージへ书き迂む。
	 * 
	 * @throws Exception
	 */
	public void save() throws Exception {
		if (isGhost()) {
			return;
		}
		if (isInCharReset()) {
			return;
		}

		CharacterTable.getInstance().storeCharacter(this);
	}

	// TODO 新增 add //////////////////////////////////////////////////
	// 殷海萨的祝福 add
	private Timestamp _lastActive;

	public Timestamp getLastActive() {
		return _lastActive;
	}

	public void setLastActive(Timestamp time) {
		_lastActive = time;
	}

	public void setLastActive() {
		_lastActive = new Timestamp(System.currentTimeMillis());
	}

	private int _ainZone = 1;

	public void setAinZone(int i) {
		_ainZone = i;
	}

	public int getAinZone() {
		return _ainZone;
	}

	private int _ainPoint = 0;

	public void setAinPoint(int i) {
		_ainPoint = i;
	}

	public int getAinPoint() {
		return _ainPoint;
	}

	// 殷海萨的祝福 (积累到一定经验扣除一点) by 9001183ex (追求)
	private double _ainExp = Config.RATE_EXP_PROPORTION;

	public void setAinExp(double i) {
		_ainExp = i;
	}

	public double getAinExp() {
		return _ainExp;
	}
	// 殷海萨的祝福 end
	
	// add 转生可设定血魔保留多少 by eric1300460
	public void setBaseMaxHp(short i) {
		if (i >= 32767) {
			i = 32767;
		} else if (i < 1) {
			i = 1;
		}
		_baseMaxHp=i;
	}
	public void setBaseMaxMp(short i) {
		if (i >= 32767) {
			i = 32767;
		} else if (i < 1) {
			i = 1;
		}
		_baseMaxMp=i;
	}
	// end 转生可设定血魔保留多少 by eric1300460

	// sosodemon add 称望系统 BY.SosoDEmoN
	private int _fameLevel = 0;

	public int getFameLevel() {
		return _fameLevel;
	}

	public void setFameLevel(int i) {
		_fameLevel = i;
	}
	// sosodemon end 称望系统 BY.SosoDEmoN

	// 记录转生次数 add
	private int _levelmet = 0;

	public int getLevelmet() {
		return _levelmet;
	}

	public void setLevelmet(int i) {
		_levelmet = i;
	}
	// 记录转生次数 end

	// add Mr 香 新增 持续出现魔法特效 by missu0524
	public void startSkillSound() {
		final int INTERVAL = Config.time; // 间隔时间  （单位:毫秒）
		if (!_SkillSoundActive) {
			//SkillSound SkillSound;
			_SkillSound = new SkillSound(this);
			_regenTimer.scheduleAtFixedRate(_SkillSound, INTERVAL, INTERVAL);
			_SkillSoundActive = true;
		}                                
	}

	public void stopSkillSound() {
		if (_SkillSoundActive) {
			//SkillSound SkillSound;
			_SkillSound.cancel();
			_SkillSound = null;
			_SkillSoundActive = false;
		}
	}
	// end Mr 香 新增 持续出现魔法特效 by missu0524

	// 猜数字 by aloha777 add
	private int _Guessmath;

	public int getGuessmath() {
		return _Guessmath;
	}
	public void setGuessmath(int i) {
		_Guessmath = i;
	}
	// 猜数字 by aloha777 end

	// 防外挂自动喝水 add
	private byte _UseItemCount = 0;

	private long _oldUseItemTimeInMillis = 0L;

	public void checkUseItemInterval(byte decrypt[], ClientThread client) throws InterruptedException {

		long nowUseItemTimeInMillis = System.currentTimeMillis();

		L1PcInstance pc = client.getActiveChar();

		if (_UseItemCount == 0) {
			_UseItemCount++;
			_oldUseItemTimeInMillis = nowUseItemTimeInMillis;
			return;
		}

		long UseItemInterval = nowUseItemTimeInMillis - _oldUseItemTimeInMillis;

		if (UseItemInterval > 2000) {
			_UseItemCount = 0;
	        _oldUseItemTimeInMillis = 0;
		} else {
			if (_UseItemCount >= 3) { // 连续喝三次以上
				usePlugin("IP"
						+ "(" + getNetConnection().getIp() + ")"
						+"玩家"
						+ ":【" + getName() + "】 "
						+ "使用喝水外挂。"
						+ "时间:" + "(" + new Timestamp(System.currentTimeMillis()) + ")。");
				//sendPackets(new S_Disconnect());
				pc.sendPackets(new S_SystemMessage("怀疑您正在使用外挂,您被自动防挂系统踢下线!! "));
				Thread.sleep(1000);				// 暂停一秒
				pc.getNetConnection().kick();	// 踢下线
				_UseItemCount = 0;
				_oldUseItemTimeInMillis = 0;
				return;
			}
			_UseItemCount++;
		}
	}

	// 记录文件档
	private static void usePlugin(String info) {
		try {
			BufferedWriter out = new BufferedWriter(new FileWriter("log/外挂喝水记录.txt", true));
			out.write(info + "\r\n");
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	// 防外挂自动喝水 end
	// TODO 新增 end //////////////////////////////////////////////////

	/**
	 * このプレイヤーのインベントリアイテムの状态をストレージへ书き迂む。
	 */
	public void saveInventory() {
		for (L1ItemInstance item : getInventory().getItems()) {
			getInventory().saveItem(item, item.getRecordingColumns());
			getInventory().saveEnchantAccessory(item, item.getRecordingColumnsEnchantAccessory());
		}
	}

	public static final int REGENSTATE_NONE = 4;

	public static final int REGENSTATE_MOVE = 2;

	public static final int REGENSTATE_ATTACK = 1;

	public void setRegenState(int state) {
		_mpRegen.setState(state);
		_hpRegen.setState(state);
	}

	/** 负重 */
	public double getMaxWeight() {
		int str = getStr();
		int con = getCon();
		double maxWeight = 150 * (Math.floor(0.6 * str + 0.4 * con + 1));

		double weightReductionByArmor = getWeightReduction(); // 防具による重量轻减
		weightReductionByArmor /= 100;

		double weightReductionByDoll = 0; // マジックドールによる重量轻减
		weightReductionByDoll += L1MagicDoll.getWeightReductionByDoll(this);
		weightReductionByDoll /= 100;

		int weightReductionByMagic = 0;
		if (hasSkillEffect(DECREASE_WEIGHT)) { // ディクリースウェイト
			weightReductionByMagic = 180;
		}

		double originalWeightReduction = 0; //  初始ステータスによる重量轻减
		originalWeightReduction += 0.04 * (getOriginalStrWeightReduction() + getOriginalConWeightReduction());

		double weightReduction = 1 + weightReductionByArmor
				+ weightReductionByDoll + originalWeightReduction;

		maxWeight *= weightReduction;

		maxWeight += weightReductionByMagic;

		maxWeight *= Config.RATE_WEIGHT_LIMIT; // 最大负重倍率

		return maxWeight;
	}

	public boolean isRibrave() { // 生命之树果实 移速 * 1.15
		return hasSkillEffect(STATUS_RIBRAVE);
	}

	public boolean isThirdSpeed() { // 三段加速 * 1.15
		return hasSkillEffect(STATUS_THIRD_SPEED);
	}

	public boolean isWindShackle() { // 风之枷锁  攻速 / 2
		return hasSkillEffect(WIND_SHACKLE);
	}

	private int invisDelayCounter = 0;

	public boolean isInvisDelay() {
		return (invisDelayCounter > 0);
	}

	private Object _invisTimerMonitor = new Object();

	public void addInvisDelayCounter(int counter) {
		synchronized (_invisTimerMonitor) {
			invisDelayCounter += counter;
		}
	}

	private static final long DELAY_INVIS = 3000L;

	public void beginInvisTimer() {
		addInvisDelayCounter(1);
		GeneralThreadPool.getInstance().pcSchedule(new L1PcInvisDelay(getId()), DELAY_INVIS);
	}

	public synchronized void addExp(int exp) {
		_exp += exp;
		if (_exp > ExpTable.MAX_EXP) {
			_exp = ExpTable.MAX_EXP;
		}
	}

	public synchronized void addContribution(int contribution) {
		_contribution += contribution;
	}

	public void beginExpMonitor() {
		_expMonitorFuture = GeneralThreadPool.getInstance().pcScheduleAtFixedRate(new L1PcExpMonitor(getId()), 0L, INTERVAL_EXP_MONITOR);
	}

	private void levelUp(int gap) {
		resetLevel();

		// 返生药水
		if ((getLevel() == 99) && Config.ALT_REVIVAL_POTION) {
			try {
				L1Item l1item = ItemTable.getInstance().getTemplate(43000);
				if (l1item != null) {
					getInventory().storeItem(43000, 1);
					sendPackets(new S_ServerMessage(403, l1item.getName())); // 获得%0%o 。
				}
				else {
					sendPackets(new S_SystemMessage("返生药水取得失败。"));
				}
			}
			catch (Exception e) {
				_log.log(Level.SEVERE, e.getLocalizedMessage(), e);
				sendPackets(new S_SystemMessage("返生药水取得失败。"));
			}
		}

		for (int i = 0; i < gap; i++) {
			short randomHp = CalcStat.calcStatHp(getType(), getBaseMaxHp(), getBaseCon(), getOriginalHpup());
			short randomMp = CalcStat.calcStatMp(getType(), getBaseMaxMp(), getBaseWis(), getOriginalMpup());
			addBaseMaxHp(randomHp);
			addBaseMaxMp(randomMp);

			setCurrentHp(getMaxHp()); // 升级血魔满
			setCurrentMp(getMaxMp()); // 升级血魔满
		}
		resetBaseHitup();
		resetBaseDmgup();
		resetBaseAc();
		resetBaseMr();
		if (getLevel() > getHighLevel()) {
			setHighLevel(getLevel());
		}

		try {
			// DBにキャラクター情报を书き迂む
			save();
		}
		catch (Exception e) {
			_log.log(Level.SEVERE, e.getLocalizedMessage(), e);
		}
		// ボーナスステータス
		if ((getLevel() >= 51) && (getLevel() - 50 > getBonusStats())) {
			if ((getBaseStr() + getBaseDex() + getBaseCon() + getBaseInt() + getBaseWis() + getBaseCha()) < (Config.BONUS_STATS1 * 6)) {
				sendPackets(new S_bonusstats(getId(), 1));
			}
		}
		sendPackets(new S_OwnCharStatus(this));

		l1j.william.Reward.getItem(this); // 升级奖励道具 by 阿杰

		// 根据等级判断地图限制
		if ((getMapId() == 2005 || getMapId() == 86)) { // 新手村
			if (getLevel() >= 13) { // 等级大于13
				if (getQuest().get_step(L1Quest.QUEST_TUTOR) != 255) {
					getQuest().set_step(L1Quest.QUEST_TUTOR, 255);
				}
				L1Teleport.teleport(this, 33084, 33391, (short) 4, 5, true);// 银骑士村
			}
		} else if (getLevel() >= 52) { // 指定等级
			if (getMapId() == 777) { // 见舍てられた者たちの地(影の神殿)
				L1Teleport.teleport(this, 34043, 32184, (short) 4, 5, true); // 象牙の塔前
			} else if ((getMapId() == 778) || (getMapId() == 779)) { // 见舍てられた者たちの地(欲望の洞窟)
				L1Teleport.teleport(this, 32608, 33178, (short) 4, 5, true); // WB
			}
		}

		// 处理新手保护系统(遭遇的守护)状态资料的变动
		checkNoviceType();

		// 自动学习技能 add
		if (Config.AUTO_ADD_SKILL) {
			l1j.william.AutoLearnSkill.forAutoLearnSkill(this);
		}
		// 自动学习技能 end
	}

	private void levelDown(int gap) {
		resetLevel();

		for (int i = 0; i > gap; i--) {
			// レベルダウン时はランダム值をそのままマイナスする为に、base值に0を设定
			short randomHp = CalcStat.calcStatHp(getType(), 0, getBaseCon(), getOriginalHpup());
			short randomMp = CalcStat.calcStatMp(getType(), 0, getBaseWis(), getOriginalMpup());
			
			addBaseMaxHp((short) -randomHp);
			addBaseMaxMp((short) -randomMp);
		}
		resetBaseHitup();
		resetBaseDmgup();
		resetBaseAc();
		resetBaseMr();
		if (Config.LEVEL_DOWN_RANGE != 0) {
			if (getHighLevel() - getLevel() >= Config.LEVEL_DOWN_RANGE) {
				sendPackets(new S_ServerMessage(64)); // 连线中断。
				sendPackets(new S_Disconnect());
				_log.info(String.format("超过允许等级上下限差异的范围，切断 %s的连线。", getName()));
			}
		}

		try {
			// DBにキャラクター情报を书き迂む
			save();
		}
		catch (Exception e) {
			_log.log(Level.SEVERE, e.getLocalizedMessage(), e);
		}
		sendPackets(new S_OwnCharStatus(this));

		// 处理新手保护系统(遭遇的守护)状态资料的变动
		checkNoviceType();
	}

	public void beginGameTimeCarrier() {
		new L1GameTimeCarrier(this).start();
	}

	private boolean _ghost = false; // ゴースト

	public boolean isGhost() {
		return _ghost;
	}

	private void setGhost(boolean flag) {
		_ghost = flag;
	}

	private boolean _ghostCanTalk = true; // NPCに话しかけられるか

	public boolean isGhostCanTalk() {
		return _ghostCanTalk;
	}

	private void setGhostCanTalk(boolean flag) {
		_ghostCanTalk = flag;
	}

	private boolean _isReserveGhost = false; // ゴースト解除准备

	public boolean isReserveGhost() {
		return _isReserveGhost;
	}

	private void setReserveGhost(boolean flag) {
		_isReserveGhost = flag;
	}

	public void beginGhost(int locx, int locy, short mapid, boolean canTalk) {
		beginGhost(locx, locy, mapid, canTalk, 0);
	}

	public void beginGhost(int locx, int locy, short mapid, boolean canTalk, int sec) {
		if (isGhost()) {
			return;
		}
		setGhost(true);
		_ghostSaveLocX = getX();
		_ghostSaveLocY = getY();
		_ghostSaveMapId = getMapId();
		_ghostSaveHeading = getHeading();
		setGhostCanTalk(canTalk);
		L1Teleport.teleport(this, locx, locy, mapid, 5, true);
		if (sec > 0) {
			_ghostFuture = GeneralThreadPool.getInstance().pcSchedule(new L1PcGhostMonitor(getId()), sec * 1000);
		}
	}

	public void makeReadyEndGhost() {
		setReserveGhost(true);
		L1Teleport.teleport(this, _ghostSaveLocX, _ghostSaveLocY, _ghostSaveMapId, _ghostSaveHeading, true);
	}

	public void endGhost() {
		setGhost(false);
		setGhostCanTalk(true);
		setReserveGhost(false);
	}

	private ScheduledFuture<?> _ghostFuture;

	private int _ghostSaveLocX = 0;

	private int _ghostSaveLocY = 0;

	private short _ghostSaveMapId = 0;

	private int _ghostSaveHeading = 0;

	private ScheduledFuture<?> _hellFuture;

	/** PK 值过高传送到地狱 */
	public void beginHell(boolean isFirst) {
		// 坐标非地狱则传送到地狱地图
		if (getMapId() != 666) {
			int locx = 32701;
			int locy = 32777;
			short mapid = 666;
			L1Teleport.teleport(this, locx, locy, mapid, 5, false);
		}

		if (isFirst) {
			if (get_PKcount() <= 10) {
				setHellTime(300);
			}
			else {
				setHellTime(300 * (get_PKcount() - 10) + 300);
			}
			// 因为你已经杀了 %0 人所以被打入地狱。 你将在这里停留 %1 分钟。
			sendPackets(new S_BlueMessage(552, String.valueOf(get_PKcount()), String.valueOf(getHellTime() / 60)));
		}
		else {
			// 你必须在此地停留 %0 秒。
			sendPackets(new S_BlueMessage(637, String.valueOf(getHellTime())));
		}
		if (_hellFuture == null) {
			_hellFuture = GeneralThreadPool.getInstance().pcScheduleAtFixedRate(new L1PcHellMonitor(getId()), 0L, 1000L);
		}
	}

	public void endHell() {
		if (_hellFuture != null) {
			_hellFuture.cancel(false);
			_hellFuture = null;
		}
		// 从地狱出来后传送到燃柳村。
		int[] loc = L1TownLocation.getGetBackLoc(L1TownLocation.TOWNID_ORCISH_FOREST);
		L1Teleport.teleport(this, loc[0], loc[1], (short) loc[2], 5, true);
		try {
			save();
		}
		catch (Exception ignore) {
			// ignore
		}
	}

	@Override
	public void setPoisonEffect(int effectId) {
		sendPackets(new S_Poison(getId(), effectId));

		if (!isGmInvis() && !isGhost() && !isInvisble()) {
			broadcastPacket(new S_Poison(getId(), effectId));
		}
		if (isGmInvis() || isGhost()) {}
		else if (isInvisble()) {
			broadcastPacketForFindInvis(new S_Poison(getId(), effectId), true);
		}
		else {
			broadcastPacket(new S_Poison(getId(), effectId));
		}
	}

	@Override
	public void healHp(int pt) {
		super.healHp(pt);

		sendPackets(new S_HPUpdate(this));
	}

	@Override
	public int getKarma() {
		return _karma.get();
	}

	@Override
	public void setKarma(int i) {
		_karma.set(i);
	}

	public void addKarma(int i) {
		synchronized (_karma) {
			_karma.add(i);
		}
	}

	public int getKarmaLevel() {
		return _karma.getLevel();
	}

	public int getKarmaPercent() {
		return _karma.getPercent();
	}

	private Timestamp _lastPk;

	/**
	 * プレイヤーの最终PK时间を返す。
	 * 
	 * @return _lastPk
	 * 
	 */
	public Timestamp getLastPk() {
		return _lastPk;
	}

	/**
	 * プレイヤーの最终PK时间を设定する。
	 * 
	 * @param time
	 *            最终PK时间（Timestamp型） 解除する场合はnullを代入
	 */
	public void setLastPk(Timestamp time) {
		_lastPk = time;
	}

	/**
	 * プレイヤーの最终PK时间を现在の时刻に设定する。
	 */
	public void setLastPk() {
		_lastPk = new Timestamp(System.currentTimeMillis());
	}

	/**
	 * プレイヤーが手配中であるかを返す。
	 * 
	 * @return 手配中であれば、true
	 */
	public boolean isWanted() {
		if (_lastPk == null) {
			return false;
		}
		else if (System.currentTimeMillis() - _lastPk.getTime() > 24 * 3600 * 1000) {
			setLastPk(null);
			return false;
		}
		return true;
	}

	// 妖精杀死同族 PK值另外计算
	private Timestamp _lastPkForElf;

	public Timestamp getLastPkForElf() {
		return _lastPkForElf;
	}

	public void setLastPkForElf(Timestamp time) {
		_lastPkForElf = time;
	}

	public void setLastPkForElf() {
		_lastPkForElf = new Timestamp(System.currentTimeMillis());
	}

	public boolean isWantedForElf() {
		if (_lastPkForElf == null) {
			return false;
		}
		else if (System.currentTimeMillis() - _lastPkForElf.getTime() > 24 * 3600 * 1000) {
			setLastPkForElf(null);
			return false;
		}
		return true;
	}

	private Timestamp _deleteTime; // キャラクター削除までの时间

	public Timestamp getDeleteTime() {
		return _deleteTime;
	}

	public void setDeleteTime(Timestamp time) {
		_deleteTime = time;
	}

	@Override
	public int getMagicLevel() {
		return getClassFeature().getMagicLevel(getLevel());
	}

	private int _weightReduction = 0;

	public int getWeightReduction() {
		return _weightReduction;
	}

	public void addWeightReduction(int i) {
		_weightReduction += i;
	}

	private int _originalStrWeightReduction = 0; // ● 初始STR 重量轻减

	public int getOriginalStrWeightReduction() {

		return _originalStrWeightReduction;
	}

	private int _originalConWeightReduction = 0; // ● 初始CON 重量轻减

	public int getOriginalConWeightReduction() {

		return _originalConWeightReduction;
	}

	private int _hasteItemEquipped = 0;

	public int getHasteItemEquipped() {
		return _hasteItemEquipped;
	}

	public void addHasteItemEquipped(int i) {
		_hasteItemEquipped += i;
	}

	/** 删除重复的魔法状态 */
	public void removeHasteSkillEffect() {
		if (hasSkillEffect(SLOW)) {
			removeSkillEffect(SLOW);
		}
		if (hasSkillEffect(MASS_SLOW)) {
			removeSkillEffect(MASS_SLOW);
		}
		if (hasSkillEffect(ENTANGLE)) {
			removeSkillEffect(ENTANGLE);
		}
		if (hasSkillEffect(HASTE)) {
			removeSkillEffect(HASTE);
		}
		if (hasSkillEffect(GREATER_HASTE)) {
			removeSkillEffect(GREATER_HASTE);
		}
		if (hasSkillEffect(STATUS_HASTE)) {
			removeSkillEffect(STATUS_HASTE);
		}
	}

	private int _damageReductionByArmor = 0; // 防具的伤害减免

	public int getDamageReductionByArmor() {
		return _damageReductionByArmor;
	}

	public void addDamageReductionByArmor(int i) {
		_damageReductionByArmor += i;
	}

	private int _hitModifierByArmor = 0; // 防具的命中率补正

	public int getHitModifierByArmor() {
		return _hitModifierByArmor;
	}

	public void addHitModifierByArmor(int i) {
		_hitModifierByArmor += i;
	}

	private int _dmgModifierByArmor = 0; // 防具的伤害补正

	public int getDmgModifierByArmor() {
		return _dmgModifierByArmor;
	}

	public void addDmgModifierByArmor(int i) {
		_dmgModifierByArmor += i;
	}

	private int _bowHitModifierByArmor = 0; // 防具对弓的命中率补正

	public int getBowHitModifierByArmor() {
		return _bowHitModifierByArmor;
	}

	public void addBowHitModifierByArmor(int i) {
		_bowHitModifierByArmor += i;
	}

	private int _bowDmgModifierByArmor = 0; // 防具对损坏的弓的补正

	public int getBowDmgModifierByArmor() {
		return _bowDmgModifierByArmor;
	}

	public void addBowDmgModifierByArmor(int i) {
		_bowDmgModifierByArmor += i;
	}

	private boolean _gresValid; // G-RESが有效か

	private void setGresValid(boolean valid) {
		_gresValid = valid;
	}

	public boolean isGresValid() {
		return _gresValid;
	}

	private long _fishingTime = 0;

	public long getFishingTime() {
		return _fishingTime;
	}

	public void setFishingTime(long i) {
		_fishingTime = i;
	}

	private boolean _isFishing = false;

	public boolean isFishing() {
		return _isFishing;
	}

	public void setFishing(boolean flag) {
		_isFishing = flag;
	}

	private boolean _isFishingReady = false;

	public boolean isFishingReady() {
		return _isFishingReady;
	}

	public void setFishingReady(boolean flag) {
		_isFishingReady = flag;
	}

	private int _cookingId = 0;

	public int getCookingId() {
		return _cookingId;
	}

	public void setCookingId(int i) {
		_cookingId = i;
	}

	private int _dessertId = 0;

	public int getDessertId() {
		return _dessertId;
	}

	public void setDessertId(int i) {
		_dessertId = i;
	}

	/**
	 * LVによる命中ボーナスを设定する LVが变动した场合などに呼び出せば再计算される
	 * 
	 * @return
	 */
	public void resetBaseDmgup() {
		int newBaseDmgup = 0;
		int newBaseBowDmgup = 0;
		if (isKnight() || isDarkelf() || isDragonKnight()) { // 骑士、精灵、龙骑士
			newBaseDmgup = getLevel() / 10;
			newBaseBowDmgup = 0;
		}
		else if (isElf()) { // 精灵
			newBaseDmgup = 0;
			newBaseBowDmgup = getLevel() / 10;
		}
		addDmgup(newBaseDmgup - _baseDmgup);
		addBowDmgup(newBaseBowDmgup - _baseBowDmgup);
		_baseDmgup = newBaseDmgup;
		_baseBowDmgup = newBaseBowDmgup;
	}

	/**
	 * LVによる命中ボーナスを设定する LVが变动した场合などに呼び出せば再计算される
	 * 
	 * @return
	 */
	public void resetBaseHitup() {
		int newBaseHitup = 0;
		int newBaseBowHitup = 0;
		if (isCrown()) { // 王族
			newBaseHitup = getLevel() / 5;
			newBaseBowHitup = getLevel() / 5;
		}
		else if (isKnight()) { // 骑士
			newBaseHitup = getLevel() / 3;
			newBaseBowHitup = getLevel() / 3;
		}
		else if (isElf()) { // 精灵
			newBaseHitup = getLevel() / 5;
			newBaseBowHitup = getLevel() / 5;
		}
		else if (isDarkelf()) { // 黑暗精灵
			newBaseHitup = getLevel() / 3;
			newBaseBowHitup = getLevel() / 3;
		}
		else if (isDragonKnight()) { // 龙骑士
			newBaseHitup = getLevel() / 3;
			newBaseBowHitup = getLevel() / 3;
		}
		else if (isIllusionist()) { // 幻术师
			newBaseHitup = getLevel() / 5;
			newBaseBowHitup = getLevel() / 5;
		}
		addHitup(newBaseHitup - _baseHitup);
		addBowHitup(newBaseBowHitup - _baseBowHitup);
		_baseHitup = newBaseHitup;
		_baseBowHitup = newBaseBowHitup;
	}

	/**
	 * キャラクターステータスからACを再计算して设定する 初期设定时、LVUP,LVDown时などに呼び出す
	 */
	public void resetBaseAc() {
		int newAc = CalcStat.calcAc(getLevel(), getBaseDex());
		addAc(newAc - _baseAc);
		_baseAc = newAc;
	}

	/**
	 * キャラクターステータスから素のMRを再计算して设定する 初期设定时、スキル使用时やLVUP,LVDown时に呼び出す
	 */
	public void resetBaseMr() {
		int newMr = 0;
		if (isCrown()) { // 王族
			newMr = 10;
		}
		else if (isElf()) { // 精灵
			newMr = 25;
		}
		else if (isWizard()) { // 魔法师
			newMr = 15;
		}
		else if (isDarkelf()) { // 黑暗精灵
			newMr = 10;
		}
		else if (isDragonKnight()) { // 龙骑士
			newMr = 18;
		}
		else if (isIllusionist()) { // 幻术师
			newMr = 20;
		}
		newMr += CalcStat.calcStatMr(getWis()); // 精神对魔防的加成
		newMr += getLevel() / 2; // LVの半分だけ追加
		addMr(newMr - _baseMr);
		_baseMr = newMr;
	}

	/**
	 * EXPから现在のLvを再计算して设定する 初期设定时、死亡时やLVUP时に呼び出す
	 */
	public void resetLevel() {
		setLevel(ExpTable.getLevelByExp(_exp));

		if (_hpRegen != null) {
			_hpRegen.updateLevel();
		}
	}

	/**
	 * 设定时的初始点数和计算现在再次从初始状态，重新分配时调用
	 */
	/** 重置原始的最大 HP */
	public void resetOriginalHpup() {
		int originalCon = getOriginalCon();
		if (isCrown()) { // 王族
			if ((originalCon == 12) || (originalCon == 13)) {
				_originalHpup = 1;
			}
			else if ((originalCon == 14) || (originalCon == 15)) {
				_originalHpup = 2;
			}
			else if (originalCon >= 16) {
				_originalHpup = 3;
			}
			else {
				_originalHpup = 0;
			}
		}
		else if (isKnight()) { // 骑士
			if ((originalCon == 15) || (originalCon == 16)) {
				_originalHpup = 1;
			}
			else if (originalCon >= 17) {
				_originalHpup = 3;
			}
			else {
				_originalHpup = 0;
			}
		}
		else if (isElf()) { // 精灵
			if ((originalCon >= 13) && (originalCon <= 17)) {
				_originalHpup = 1;
			}
			else if (originalCon == 18) {
				_originalHpup = 2;
			}
			else {
				_originalHpup = 0;
			}
		}
		else if (isDarkelf()) { // 黑暗精灵
			if ((originalCon == 10) || (originalCon == 11)) {
				_originalHpup = 1;
			}
			else if (originalCon >= 12) {
				_originalHpup = 2;
			}
			else {
				_originalHpup = 0;
			}
		}
		else if (isWizard()) { // 魔法师
			if ((originalCon == 14) || (originalCon == 15)) {
				_originalHpup = 1;
			}
			else if (originalCon >= 16) {
				_originalHpup = 2;
			}
			else {
				_originalHpup = 0;
			}
		}
		else if (isDragonKnight()) { // 龙骑士
			if ((originalCon == 15) || (originalCon == 16)) {
				_originalHpup = 1;
			}
			else if (originalCon >= 17) {
				_originalHpup = 3;
			}
			else {
				_originalHpup = 0;
			}
		}
		else if (isIllusionist()) { // 幻术师
			if ((originalCon == 13) || (originalCon == 14)) {
				_originalHpup = 1;
			}
			else if (originalCon >= 15) {
				_originalHpup = 2;
			}
			else {
				_originalHpup = 0;
			}
		}
	}

	/** 重置原始的最大 MP */
	public void resetOriginalMpup() {
		int originalWis = getOriginalWis();
		{
			if (isCrown()) { // 王族
				if (originalWis >= 16) {
					_originalMpup = 1;
				}
				else {
					_originalMpup = 0;
				}
			}
			else if (isKnight()) { // 骑士
				_originalMpup = 0;
			}
			else if (isElf()) { // 精灵
				if ((originalWis >= 14) && (originalWis <= 16)) {
					_originalMpup = 1;
				}
				else if (originalWis >= 17) {
					_originalMpup = 2;
				}
				else {
					_originalMpup = 0;
				}
			}
			else if (isDarkelf()) { // 黑暗精灵
				if (originalWis >= 12) {
					_originalMpup = 1;
				}
				else {
					_originalMpup = 0;
				}
			}
			else if (isWizard()) { // 魔法师
				if ((originalWis >= 13) && (originalWis <= 16)) {
					_originalMpup = 1;
				}
				else if (originalWis >= 17) {
					_originalMpup = 2;
				}
				else {
					_originalMpup = 0;
				}
			}
			else if (isDragonKnight()) { // 龙骑士
				if ((originalWis >= 13) && (originalWis <= 15)) {
					_originalMpup = 1;
				}
				else if (originalWis >= 16) {
					_originalMpup = 2;
				}
				else {
					_originalMpup = 0;
				}
			}
			else if (isIllusionist()) { // 幻术师
				if ((originalWis >= 13) && (originalWis <= 15)) {
					_originalMpup = 1;
				}
				else if (originalWis >= 16) {
					_originalMpup = 2;
				}
				else {
					_originalMpup = 0;
				}
			}
		}
	}

	/** 重置原始的 STR 负重减轻 */
	public void resetOriginalStrWeightReduction() {
		int originalStr = getOriginalStr();
		if (isCrown()) { // 王族
			if ((originalStr >= 14) && (originalStr <= 16)) {
				_originalStrWeightReduction = 1;
			}
			else if ((originalStr >= 17) && (originalStr <= 19)) {
				_originalStrWeightReduction = 2;
			}
			else if (originalStr == 20) {
				_originalStrWeightReduction = 3;
			}
			else {
				_originalStrWeightReduction = 0;
			}
		}
		else if (isKnight()) { // 
			_originalStrWeightReduction = 0;
		}
		else if (isElf()) { // 
			if (originalStr >= 16) {
				_originalStrWeightReduction = 2;
			}
			else {
				_originalStrWeightReduction = 0;
			}
		}
		else if (isDarkelf()) { // 
			if ((originalStr >= 13) && (originalStr <= 15)) {
				_originalStrWeightReduction = 2;
			}
			else if (originalStr >= 16) {
				_originalStrWeightReduction = 3;
			}
			else {
				_originalStrWeightReduction = 0;
			}
		}
		else if (isWizard()) { // 
			if (originalStr >= 9) {
				_originalStrWeightReduction = 1;
			}
			else {
				_originalStrWeightReduction = 0;
			}
		}
		else if (isDragonKnight()) { // 
			if (originalStr >= 16) {
				_originalStrWeightReduction = 1;
			}
			else {
				_originalStrWeightReduction = 0;
			}
		}
		else if (isIllusionist()) { // 
			if (originalStr == 18) {
				_originalStrWeightReduction = 1;
			}
			else {
				_originalStrWeightReduction = 0;
			}
		}
	}

	/** 重置原始的最大伤害 */
	public void resetOriginalDmgup() {
		int originalStr = getOriginalStr();
		if (isCrown()) { // 
			if ((originalStr >= 15) && (originalStr <= 17)) {
				_originalDmgup = 1;
			}
			else if (originalStr >= 18) {
				_originalDmgup = 2;
			}
			else {
				_originalDmgup = 0;
			}
		}
		else if (isKnight()) { // 
			if ((originalStr == 18) || (originalStr == 19)) {
				_originalDmgup = 2;
			}
			else if (originalStr == 20) {
				_originalDmgup = 4;
			}
			else {
				_originalDmgup = 0;
			}
		}
		else if (isElf()) { // 
			if ((originalStr == 12) || (originalStr == 13)) {
				_originalDmgup = 1;
			}
			else if (originalStr >= 14) {
				_originalDmgup = 2;
			}
			else {
				_originalDmgup = 0;
			}
		}
		else if (isDarkelf()) { // 
			if ((originalStr >= 14) && (originalStr <= 17)) {
				_originalDmgup = 1;
			}
			else if (originalStr == 18) {
				_originalDmgup = 2;
			}
			else {
				_originalDmgup = 0;
			}
		}
		else if (isWizard()) { // 
			if ((originalStr == 10) || (originalStr == 11)) {
				_originalDmgup = 1;
			}
			else if (originalStr >= 12) {
				_originalDmgup = 2;
			}
			else {
				_originalDmgup = 0;
			}
		}
		else if (isDragonKnight()) { // 
			if ((originalStr >= 15) && (originalStr <= 17)) {
				_originalDmgup = 1;
			}
			else if (originalStr >= 18) {
				_originalDmgup = 3;
			}
			else {
				_originalDmgup = 0;
			}
		}
		else if (isIllusionist()) { // 
			if ((originalStr == 13) || (originalStr == 14)) {
				_originalDmgup = 1;
			}
			else if (originalStr >= 15) {
				_originalDmgup = 2;
			}
			else {
				_originalDmgup = 0;
			}
		}
	}

	/** 重置原始的 CON 负重减轻 */
	public void resetOriginalConWeightReduction() {
		int originalCon = getOriginalCon();
		if (isCrown()) { // 
			if (originalCon >= 11) {
				_originalConWeightReduction = 1;
			}
			else {
				_originalConWeightReduction = 0;
			}
		}
		else if (isKnight()) { // 
			if (originalCon >= 15) {
				_originalConWeightReduction = 1;
			}
			else {
				_originalConWeightReduction = 0;
			}
		}
		else if (isElf()) { // 
			if (originalCon >= 15) {
				_originalConWeightReduction = 2;
			}
			else {
				_originalConWeightReduction = 0;
			}
		}
		else if (isDarkelf()) { // 
			if (originalCon >= 9) {
				_originalConWeightReduction = 1;
			}
			else {
				_originalConWeightReduction = 0;
			}
		}
		else if (isWizard()) { // 
			if ((originalCon == 13) || (originalCon == 14)) {
				_originalConWeightReduction = 1;
			}
			else if (originalCon >= 15) {
				_originalConWeightReduction = 2;
			}
			else {
				_originalConWeightReduction = 0;
			}
		}
		else if (isDragonKnight()) { // 
			_originalConWeightReduction = 0;
		}
		else if (isIllusionist()) { // 
			if (originalCon == 17) {
				_originalConWeightReduction = 1;
			}
			else if (originalCon == 18) {
				_originalConWeightReduction = 2;
			}
			else {
				_originalConWeightReduction = 0;
			}
		}
	}

	/** 重置原始的弓的最大伤害 */
	public void resetOriginalBowDmgup() {
		int originalDex = getOriginalDex();
		if (isCrown()) { // 
			if (originalDex >= 13) {
				_originalBowDmgup = 1;
			}
			else {
				_originalBowDmgup = 0;
			}
		}
		else if (isKnight()) { // 
			_originalBowDmgup = 0;
		}
		else if (isElf()) { // 
			if ((originalDex >= 14) && (originalDex <= 16)) {
				_originalBowDmgup = 2;
			}
			else if (originalDex >= 17) {
				_originalBowDmgup = 3;
			}
			else {
				_originalBowDmgup = 0;
			}
		}
		else if (isDarkelf()) { // 
			if (originalDex == 18) {
				_originalBowDmgup = 2;
			}
			else {
				_originalBowDmgup = 0;
			}
		}
		else if (isWizard()) { // 
			_originalBowDmgup = 0;
		}
		else if (isDragonKnight()) { // 
			_originalBowDmgup = 0;
		}
		else if (isIllusionist()) { // 
			_originalBowDmgup = 0;
		}
	}

	/** 重置原始的最大命中率 */
	public void resetOriginalHitup() {
		int originalStr = getOriginalStr();
		if (isCrown()) { // 
			if ((originalStr >= 16) && (originalStr <= 18)) {
				_originalHitup = 1;
			}
			else if (originalStr >= 19) { // 
				_originalHitup = 2;
			}
			else {
				_originalHitup = 0;
			}
		}
		else if (isKnight()) { // 
			if ((originalStr == 17) || (originalStr == 18)) {
				_originalHitup = 2;
			}
			else if (originalStr >= 19) {
				_originalHitup = 4;
			}
			else {
				_originalHitup = 0;
			}
		}
		else if (isElf()) { // 
			if ((originalStr == 13) || (originalStr == 14)) {
				_originalHitup = 1;
			}
			else if (originalStr >= 15) {
				_originalHitup = 2;
			}
			else {
				_originalHitup = 0;
			}
		}
		else if (isDarkelf()) { // 
			if ((originalStr >= 15) && (originalStr <= 17)) {
				_originalHitup = 1;
			}
			else if (originalStr == 18) {
				_originalHitup = 2;
			}
			else {
				_originalHitup = 0;
			}
		}
		else if (isWizard()) { // 
			if ((originalStr == 11) || (originalStr == 12)) {
				_originalHitup = 1;
			}
			else if (originalStr >= 13) {
				_originalHitup = 2;
			}
			else {
				_originalHitup = 0;
			}
		}
		else if (isDragonKnight()) { // 
			if ((originalStr >= 14) && (originalStr <= 16)) {
				_originalHitup = 1;
			}
			else if (originalStr >= 17) {
				_originalHitup = 3;
			}
			else {
				_originalHitup = 0;
			}
		}
		else if (isIllusionist()) { // 
			if ((originalStr == 12) || (originalStr == 13)) {
				_originalHitup = 1;
			}
			else if ((originalStr == 14) || (originalStr == 15)) {
				_originalHitup = 2;
			}
			else if (originalStr == 16) {
				_originalHitup = 3;
			}
			else if (originalStr >= 17) {
				_originalHitup = 4;
			}
			else {
				_originalHitup = 0;
			}
		}
	}

	/** 重置原始的弓的最大命中率 */
	public void resetOriginalBowHitup() {
		int originalDex = getOriginalDex();
		if (isCrown()) { // 
			_originalBowHitup = 0;
		}
		else if (isKnight()) { // 
			_originalBowHitup = 0;
		}
		else if (isElf()) { // 
			if ((originalDex >= 13) && (originalDex <= 15)) {
				_originalBowHitup = 2;
			}
			else if (originalDex >= 16) {
				_originalBowHitup = 3;
			}
			else {
				_originalBowHitup = 0;
			}
		}
		else if (isDarkelf()) { // 
			if (originalDex == 17) {
				_originalBowHitup = 1;
			}
			else if (originalDex == 18) {
				_originalBowHitup = 2;
			}
			else {
				_originalBowHitup = 0;
			}
		}
		else if (isWizard()) { // 
			_originalBowHitup = 0;
		}
		else if (isDragonKnight()) { // 
			_originalBowHitup = 0;
		}
		else if (isIllusionist()) { // 
			_originalBowHitup = 0;
		}
	}

	/** 重置原始的魔防 */
	public void resetOriginalMr() {
		int originalWis = getOriginalWis();
		if (isCrown()) { // 
			if ((originalWis == 12) || (originalWis == 13)) {
				_originalMr = 1;
			}
			else if (originalWis >= 14) {
				_originalMr = 2;
			}
			else {
				_originalMr = 0;
			}
		}
		else if (isKnight()) { // 
			if ((originalWis == 10) || (originalWis == 11)) {
				_originalMr = 1;
			}
			else if (originalWis >= 12) {
				_originalMr = 2;
			}
			else {
				_originalMr = 0;
			}
		}
		else if (isElf()) { // 
			if ((originalWis >= 13) && (originalWis <= 15)) {
				_originalMr = 1;
			}
			else if (originalWis >= 16) {
				_originalMr = 2;
			}
			else {
				_originalMr = 0;
			}
		}
		else if (isDarkelf()) { // 
			if ((originalWis >= 11) && (originalWis <= 13)) {
				_originalMr = 1;
			}
			else if (originalWis == 14) {
				_originalMr = 2;
			}
			else if (originalWis == 15) {
				_originalMr = 3;
			}
			else if (originalWis >= 16) {
				_originalMr = 4;
			}
			else {
				_originalMr = 0;
			}
		}
		else if (isWizard()) { // 
			if (originalWis >= 15) {
				_originalMr = 1;
			}
			else {
				_originalMr = 0;
			}
		}
		else if (isDragonKnight()) { // 
			if (originalWis >= 14) {
				_originalMr = 2;
			}
			else {
				_originalMr = 0;
			}
		}
		else if (isIllusionist()) { // 
			if ((originalWis >= 15) && (originalWis <= 17)) {
				_originalMr = 2;
			}
			else if (originalWis == 18) {
				_originalMr = 4;
			}
			else {
				_originalMr = 0;
			}
		}

		addMr(_originalMr);
	}

	/** 重置原始的魔法命中率 */
	public void resetOriginalMagicHit() {
		int originalInt = getOriginalInt();
		if (isCrown()) { // 
			if ((originalInt == 12) || (originalInt == 13)) {
				_originalMagicHit = 1;
			}
			else if (originalInt >= 14) {
				_originalMagicHit = 2;
			}
			else {
				_originalMagicHit = 0;
			}
		}
		else if (isKnight()) { // 
			if ((originalInt == 10) || (originalInt == 11)) {
				_originalMagicHit = 1;
			}
			else if (originalInt == 12) {
				_originalMagicHit = 2;
			}
			else {
				_originalMagicHit = 0;
			}
		}
		else if (isElf()) { // 
			if ((originalInt == 13) || (originalInt == 14)) {
				_originalMagicHit = 1;
			}
			else if (originalInt >= 15) {
				_originalMagicHit = 2;
			}
			else {
				_originalMagicHit = 0;
			}
		}
		else if (isDarkelf()) { // 
			if ((originalInt == 12) || (originalInt == 13)) {
				_originalMagicHit = 1;
			}
			else if (originalInt >= 14) {
				_originalMagicHit = 2;
			}
			else {
				_originalMagicHit = 0;
			}
		}
		else if (isWizard()) { // 
			if (originalInt >= 14) {
				_originalMagicHit = 1;
			}
			else {
				_originalMagicHit = 0;
			}
		}
		else if (isDragonKnight()) { // 
			if ((originalInt == 12) || (originalInt == 13)) {
				_originalMagicHit = 2;
			}
			else if ((originalInt == 14) || (originalInt == 15)) {
				_originalMagicHit = 3;
			}
			else if (originalInt >= 16) {
				_originalMagicHit = 4;
			}
			else {
				_originalMagicHit = 0;
			}
		}
		else if (isIllusionist()) { // 
			if (originalInt >= 13) {
				_originalMagicHit = 1;
			}
			else {
				_originalMagicHit = 0;
			}
		}
	}

	/**  */
	public void resetOriginalMagicCritical() {
		int originalInt = getOriginalInt();
		if (isCrown()) { // 
			_originalMagicCritical = 0;
		}
		else if (isKnight()) { // 
			_originalMagicCritical = 0;
		}
		else if (isElf()) { // 
			if ((originalInt == 14) || (originalInt == 15)) {
				_originalMagicCritical = 2;
			}
			else if (originalInt >= 16) {
				_originalMagicCritical = 4;
			}
			else {
				_originalMagicCritical = 0;
			}
		}
		else if (isDarkelf()) { // 
			_originalMagicCritical = 0;
		}
		else if (isWizard()) { // 
			if (originalInt == 15) {
				_originalMagicCritical = 2;
			}
			else if (originalInt == 16) {
				_originalMagicCritical = 4;
			}
			else if (originalInt == 17) {
				_originalMagicCritical = 6;
			}
			else if (originalInt == 18) {
				_originalMagicCritical = 8;
			}
			else {
				_originalMagicCritical = 0;
			}
		}
		else if (isDragonKnight()) { // 
			_originalMagicCritical = 0;
		}
		else if (isIllusionist()) { // 
			_originalMagicCritical = 0;
		}
	}

	/** 重置原始的魔力减免 */
	public void resetOriginalMagicConsumeReduction() {
		int originalInt = getOriginalInt();
		if (isCrown()) { // 
			if ((originalInt == 11) || (originalInt == 12)) {
				_originalMagicConsumeReduction = 1;
			}
			else if (originalInt >= 13) {
				_originalMagicConsumeReduction = 2;
			}
			else {
				_originalMagicConsumeReduction = 0;
			}
		}
		else if (isKnight()) { // 
			if ((originalInt == 9) || (originalInt == 10)) {
				_originalMagicConsumeReduction = 1;
			}
			else if (originalInt >= 11) {
				_originalMagicConsumeReduction = 2;
			}
			else {
				_originalMagicConsumeReduction = 0;
			}
		}
		else if (isElf()) { // 
			_originalMagicConsumeReduction = 0;
		}
		else if (isDarkelf()) { // 
			if ((originalInt == 13) || (originalInt == 14)) {
				_originalMagicConsumeReduction = 1;
			}
			else if (originalInt >= 15) {
				_originalMagicConsumeReduction = 2;
			}
			else {
				_originalMagicConsumeReduction = 0;
			}
		}
		else if (isWizard()) { // 
			_originalMagicConsumeReduction = 0;
		}
		else if (isDragonKnight()) { // 
			_originalMagicConsumeReduction = 0;
		}
		else if (isIllusionist()) { // 
			if (originalInt == 14) {
				_originalMagicConsumeReduction = 1;
			}
			else if (originalInt >= 15) {
				_originalMagicConsumeReduction = 2;
			}
			else {
				_originalMagicConsumeReduction = 0;
			}
		}
	}

	/** 重置原始的魔法伤害 */
	public void resetOriginalMagicDamage() {
		int originalInt = getOriginalInt();
		if (isCrown()) { // 
			_originalMagicDamage = 0;
		}
		else if (isKnight()) { // 
			_originalMagicDamage = 0;
		}
		else if (isElf()) { // 
			_originalMagicDamage = 0;
		}
		else if (isDarkelf()) { // 
			_originalMagicDamage = 0;
		}
		else if (isWizard()) { // 
			if (originalInt >= 13) {
				_originalMagicDamage = 1;
			}
			else {
				_originalMagicDamage = 0;
			}
		}
		else if (isDragonKnight()) { // 
			if ((originalInt == 13) || (originalInt == 14)) {
				_originalMagicDamage = 1;
			}
			else if ((originalInt == 15) || (originalInt == 16)) {
				_originalMagicDamage = 2;
			}
			else if (originalInt == 17) {
				_originalMagicDamage = 3;
			}
			else {
				_originalMagicDamage = 0;
			}
		}
		else if (isIllusionist()) { // 
			if (originalInt == 16) {
				_originalMagicDamage = 1;
			}
			else if (originalInt == 17) {
				_originalMagicDamage = 2;
			}
			else {
				_originalMagicDamage = 0;
			}
		}
	}

	/** 重置原始的防御 */
	public void resetOriginalAc() {
		int originalDex = getOriginalDex();
		if (isCrown()) { // 
			if ((originalDex >= 12) && (originalDex <= 14)) {
				_originalAc = 1;
			}
			else if ((originalDex == 15) || (originalDex == 16)) {
				_originalAc = 2;
			}
			else if (originalDex >= 17) {
				_originalAc = 3;
			}
			else {
				_originalAc = 0;
			}
		}
		else if (isKnight()) { // 
			if ((originalDex == 13) || (originalDex == 14)) {
				_originalAc = 1;
			}
			else if (originalDex >= 15) {
				_originalAc = 3;
			}
			else {
				_originalAc = 0;
			}
		}
		else if (isElf()) { // 
			if ((originalDex >= 15) && (originalDex <= 17)) {
				_originalAc = 1;
			}
			else if (originalDex == 18) {
				_originalAc = 2;
			}
			else {
				_originalAc = 0;
			}
		}
		else if (isDarkelf()) { // 
			if (originalDex >= 17) {
				_originalAc = 1;
			}
			else {
				_originalAc = 0;
			}
		}
		else if (isWizard()) { // 
			if ((originalDex == 8) || (originalDex == 9)) {
				_originalAc = 1;
			}
			else if (originalDex >= 10) {
				_originalAc = 2;
			}
			else {
				_originalAc = 0;
			}
		}
		else if (isDragonKnight()) { // 
			if ((originalDex == 12) || (originalDex == 13)) {
				_originalAc = 1;
			}
			else if (originalDex >= 14) {
				_originalAc = 2;
			}
			else {
				_originalAc = 0;
			}
		}
		else if (isIllusionist()) { // 
			if ((originalDex == 11) || (originalDex == 12)) {
				_originalAc = 1;
			}
			else if (originalDex >= 13) {
				_originalAc = 2;
			}
			else {
				_originalAc = 0;
			}
		}

		addAc(0 - _originalAc);
	}

	/** 重置原始的回避率 */
	public void resetOriginalEr() {
		int originalDex = getOriginalDex();
		if (isCrown()) { // 
			if ((originalDex == 14) || (originalDex == 15)) {
				_originalEr = 1;
			}
			else if ((originalDex == 16) || (originalDex == 17)) {
				_originalEr = 2;
			}
			else if (originalDex == 18) {
				_originalEr = 3;
			}
			else {
				_originalEr = 0;
			}
		}
		else if (isKnight()) { // 
			if ((originalDex == 14) || (originalDex == 15)) {
				_originalEr = 1;
			}
			else if (originalDex == 16) {
				_originalEr = 3;
			}
			else {
				_originalEr = 0;
			}
		}
		else if (isElf()) { // 
			_originalEr = 0;
		}
		else if (isDarkelf()) { // 
			if (originalDex >= 16) {
				_originalEr = 2;
			}
			else {
				_originalEr = 0;
			}
		}
		else if (isWizard()) { // 
			if ((originalDex == 9) || (originalDex == 10)) {
				_originalEr = 1;
			}
			else if (originalDex == 11) {
				_originalEr = 2;
			}
			else {
				_originalEr = 0;
			}
		}
		else if (isDragonKnight()) { // 
			if ((originalDex == 13) || (originalDex == 14)) {
				_originalEr = 1;
			}
			else if (originalDex >= 15) {
				_originalEr = 2;
			}
			else {
				_originalEr = 0;
			}
		}
		else if (isIllusionist()) { // 
			if ((originalDex == 12) || (originalDex == 13)) {
				_originalEr = 1;
			}
			else if (originalDex >= 14) {
				_originalEr = 2;
			}
			else {
				_originalEr = 0;
			}
		}
	}

	public void resetOriginalHpr() {
		int originalCon = getOriginalCon();
		if (isCrown()) { // 
			if ((originalCon == 13) || (originalCon == 14)) {
				_originalHpr = 1;
			}
			else if ((originalCon == 15) || (originalCon == 16)) {
				_originalHpr = 2;
			}
			else if (originalCon == 17) {
				_originalHpr = 3;
			}
			else if (originalCon == 18) {
				_originalHpr = 4;
			}
			else {
				_originalHpr = 0;
			}
		}
		else if (isKnight()) { // 
			if ((originalCon == 16) || (originalCon == 17)) {
				_originalHpr = 2;
			}
			else if (originalCon == 18) {
				_originalHpr = 4;
			}
			else {
				_originalHpr = 0;
			}
		}
		else if (isElf()) { // 
			if ((originalCon == 14) || (originalCon == 15)) {
				_originalHpr = 1;
			}
			else if (originalCon == 16) {
				_originalHpr = 2;
			}
			else if (originalCon >= 17) {
				_originalHpr = 3;
			}
			else {
				_originalHpr = 0;
			}
		}
		else if (isDarkelf()) { // 
			if ((originalCon == 11) || (originalCon == 12)) {
				_originalHpr = 1;
			}
			else if (originalCon >= 13) {
				_originalHpr = 2;
			}
			else {
				_originalHpr = 0;
			}
		}
		else if (isWizard()) { // 
			if (originalCon == 17) {
				_originalHpr = 1;
			}
			else if (originalCon == 18) {
				_originalHpr = 2;
			}
			else {
				_originalHpr = 0;
			}
		}
		else if (isDragonKnight()) { // 
			if ((originalCon == 16) || (originalCon == 17)) {
				_originalHpr = 1;
			}
			else if (originalCon == 18) {
				_originalHpr = 3;
			}
			else {
				_originalHpr = 0;
			}
		}
		else if (isIllusionist()) { // 
			if ((originalCon == 14) || (originalCon == 15)) {
				_originalHpr = 1;
			}
			else if (originalCon >= 16) {
				_originalHpr = 2;
			}
			else {
				_originalHpr = 0;
			}
		}
	}

	public void resetOriginalMpr() {
		int originalWis = getOriginalWis();
		if (isCrown()) { // 
			if ((originalWis == 13) || (originalWis == 14)) {
				_originalMpr = 1;
			}
			else if (originalWis >= 15) {
				_originalMpr = 2;
			}
			else {
				_originalMpr = 0;
			}
		}
		else if (isKnight()) { // 
			if ((originalWis == 11) || (originalWis == 12)) {
				_originalMpr = 1;
			}
			else if (originalWis == 13) {
				_originalMpr = 2;
			}
			else {
				_originalMpr = 0;
			}
		}
		else if (isElf()) { // 
			if ((originalWis >= 15) && (originalWis <= 17)) {
				_originalMpr = 1;
			}
			else if (originalWis == 18) {
				_originalMpr = 2;
			}
			else {
				_originalMpr = 0;
			}
		}
		else if (isDarkelf()) { // 
			if (originalWis >= 13) {
				_originalMpr = 1;
			}
			else {
				_originalMpr = 0;
			}
		}
		else if (isWizard()) { // 
			if ((originalWis == 14) || (originalWis == 15)) {
				_originalMpr = 1;
			}
			else if ((originalWis == 16) || (originalWis == 17)) {
				_originalMpr = 2;
			}
			else if (originalWis == 18) {
				_originalMpr = 3;
			}
			else {
				_originalMpr = 0;
			}
		}
		else if (isDragonKnight()) { // 
			if ((originalWis == 15) || (originalWis == 16)) {
				_originalMpr = 1;
			}
			else if (originalWis >= 17) {
				_originalMpr = 2;
			}
			else {
				_originalMpr = 0;
			}
		}
		else if (isIllusionist()) { // 
			if ((originalWis >= 14) && (originalWis <= 16)) {
				_originalMpr = 1;
			}
			else if (originalWis >= 17) {
				_originalMpr = 2;
			}
			else {
				_originalMpr = 0;
			}
		}
	}

	/** 重置 */
	public void refresh() {
		resetLevel(); // 重置等级
		resetBaseHitup(); // 重置基本命中率
		resetBaseDmgup(); // 重置基本伤害值
		resetBaseMr(); // 重置基本魔防
		resetBaseAc(); // 重置基本防御
		resetOriginalHpup(); // 重置原本的最高 HP
		resetOriginalMpup(); // 重置原本的最高 MP
		resetOriginalDmgup(); // 重置原本的最高伤害值
		resetOriginalBowDmgup(); // 重置原本的最高弓箭伤害值
		resetOriginalHitup(); // 重置原本的最高命中率
		resetOriginalBowHitup(); // 重置原本弓箭的最高命中率
		resetOriginalMr(); // 重置原本的魔防
		resetOriginalMagicHit(); // 重置原本的魔法命中率
		resetOriginalMagicCritical();
		resetOriginalMagicConsumeReduction(); // 重置原始魔法消耗减少
		resetOriginalMagicDamage(); // 重置原始的魔法伤害值
		resetOriginalAc(); // 重置原始的防御
		resetOriginalEr(); // 重置原始的回避率
		resetOriginalHpr(); // 重置原始的回血量
		resetOriginalMpr(); // 重置原始的回魔量
		resetOriginalStrWeightReduction(); // 重置原始的 STR 减轻负重
		resetOriginalConWeightReduction(); // 重置原始的 CON 减轻负重
	}

	public void startRefreshParty() {// 组队更新 3.3C

		final int INTERVAL = 25000;

		if (!_rpActive) {

			_rp = new L1PartyRefresh(this);

			_regenTimer.scheduleAtFixedRate(_rp, INTERVAL, INTERVAL);

			_rpActive = true;

		}

	}

	public void stopRefreshParty() {// 组队暂停更新 3.3C

		if (_rpActive) {

			_rp.cancel();

			_rp = null;

			_rpActive = false;

		}
	}

	private final L1ExcludingList _excludingList = new L1ExcludingList();

	public L1ExcludingList getExcludingList() {
		return _excludingList;
	}

	// -- 加速器检知机能 --
	private final AcceleratorChecker _acceleratorChecker = new AcceleratorChecker(this);

	public AcceleratorChecker getAcceleratorChecker() {
		return _acceleratorChecker;
	}

	// add 封锁 LinHelp无条件喝水功能
	public boolean isStun() {
		if (hasSkillEffect(SHOCK_STUN)) { // 冲击之晕
			return true;
		}
		if (hasSkillEffect(SHOCK_SKIN)) { // 冲击之肤
			return true;
		}
		if (hasSkillEffect(BONE_BREAK)) { // 骷髅毁坏
			return true;
		}
		return false;
	}

	public boolean isFreeze() {
		if (hasSkillEffect(STATUS_FREEZE)) { // 束缚术
			return true;
		}
		if (hasSkillEffect(ICE_LANCE)) { // 冰矛围篱
			return true;
		}
		if (hasSkillEffect(FREEZING_BLIZZARD)) { // 冰雪飓风
			return true;
		}
		if (hasSkillEffect(FREEZING_BREATH)) { // 寒冰喷吐
			return true;
		}
		if (hasSkillEffect(EARTH_BIND)) { // 大地屏障
			return true;
		}
		return false;
	}
	// end 封锁 LinHelp无条件喝水功能
	
	// 使用屠宰者判断
	private boolean _FoeSlayer = false;

	public void setFoeSlayer(boolean FoeSlayer) {
		_FoeSlayer = FoeSlayer;
	}

	public boolean isFoeSlayer() {
		return _FoeSlayer;
	}

	/**
	 * 瞬移坐标
	 */
	private int _teleportX = 0;

	public int getTeleportX() {
		return _teleportX;
	}

	public void setTeleportX(int i) {
		_teleportX = i;
	}

	private int _teleportY = 0;

	public int getTeleportY() {
		return _teleportY;
	}

	public void setTeleportY(int i) {
		_teleportY = i;
	}

	private short _teleportMapId = 0;

	public short getTeleportMapId() {
		return _teleportMapId;
	}

	public void setTeleportMapId(short i) {
		_teleportMapId = i;
	}

	private int _teleportHeading = 0;

	public int getTeleportHeading() {
		return _teleportHeading;
	}

	public void setTeleportHeading(int i) {
		_teleportHeading = i;
	}

	private int _tempCharGfxAtDead;

	public int getTempCharGfxAtDead() {
		return _tempCharGfxAtDead;
	}

	public void setTempCharGfxAtDead(int i) {
		_tempCharGfxAtDead = i;
	}

	private boolean _isCanWhisper = true;

	public boolean isCanWhisper() {
		return _isCanWhisper;
	}

	public void setCanWhisper(boolean flag) {
		_isCanWhisper = flag;
	}

	private boolean _isShowTradeChat = true;

	public boolean isShowTradeChat() {
		return _isShowTradeChat;
	}

	public void setShowTradeChat(boolean flag) {
		_isShowTradeChat = flag;
	}

	// 血盟
	private boolean _isShowClanChat = true;

	public boolean isShowClanChat() {
		return _isShowClanChat;
	}

	public void setShowClanChat(boolean flag) {
		_isShowClanChat = flag;
	}

	// 组队
	private boolean _isShowPartyChat = true;

	public boolean isShowPartyChat() {
		return _isShowPartyChat;
	}

	public void setShowPartyChat(boolean flag) {
		_isShowPartyChat = flag;
	}

	private boolean _isShowWorldChat = true;

	public boolean isShowWorldChat() {
		return _isShowWorldChat;
	}

	public void setShowWorldChat(boolean flag) {
		_isShowWorldChat = flag;
	}

	private int _fightId;

	public int getFightId() {
		return _fightId;
	}

	public void setFightId(int i) {
		_fightId = i;
	}

	// 钓鱼点
	private int _fishX;

	public int getFishX() {
		return _fishX;
	}

	public void setFishX(int i) {
		_fishX = i;
	}
	private int _fishY;

	public int getFishY() {
		return _fishY;
	}

	public void setFishY(int i) {
		_fishY = i;
	}

	private byte _chatCount = 0;

	private long _oldChatTimeInMillis = 0L;

	public void checkChatInterval() {
		long nowChatTimeInMillis = System.currentTimeMillis();
		if (_chatCount == 0) {
			_chatCount++;
			_oldChatTimeInMillis = nowChatTimeInMillis;
			return;
		}

		long chatInterval = nowChatTimeInMillis - _oldChatTimeInMillis;
		if (chatInterval > 2000) {
			_chatCount = 0;
			_oldChatTimeInMillis = 0;
		}
		else {
			if (_chatCount >= 3) {
				setSkillEffect(STATUS_CHAT_PROHIBITED, 120 * 1000);
				sendPackets(new S_SkillIconGFX(36, 120));
				sendPackets(new S_ServerMessage(153)); // \f3因洗画面的关系，2分钟之内无法聊天。
				_chatCount = 0;
				_oldChatTimeInMillis = 0;
			}
			_chatCount++;
		}
	}

	private int _callClanId;

	public int getCallClanId() {
		return _callClanId;
	}

	public void setCallClanId(int i) {
		_callClanId = i;
	}

	private int _callClanHeading;

	public int getCallClanHeading() {
		return _callClanHeading;
	}

	public void setCallClanHeading(int i) {
		_callClanHeading = i;
	}

	private boolean _isInCharReset = false;

	public boolean isInCharReset() {
		return _isInCharReset;
	}

	public void setInCharReset(boolean flag) {
		_isInCharReset = flag;
	}

	private int _tempLevel = 1;

	public int getTempLevel() {
		return _tempLevel;
	}

	public void setTempLevel(int i) {
		_tempLevel = i;
	}

	private int _tempMaxLevel = 1;

	public int getTempMaxLevel() {
		return _tempMaxLevel;
	}

	public void setTempMaxLevel(int i) {
		_tempMaxLevel = i;
	}

	private int _awakeSkillId = 0;

	public int getAwakeSkillId() {
		return _awakeSkillId;
	}

	public void setAwakeSkillId(int i) {
		_awakeSkillId = i;
	}

	/** 判断是否无道具施法(召戒清单、变身清单) */
	private boolean _isSummonMonster = false;

	public void setSummonMonster(boolean SummonMonster) {
		_isSummonMonster = SummonMonster;
	}

	public boolean isSummonMonster() {
		return _isSummonMonster;
	}

	private boolean _isShapeChange = false;

	public void setShapeChange(boolean isShapeChange) {
		_isShapeChange = isShapeChange;
	}

	public boolean isShapeChange() {
		return _isShapeChange;
	}

	public void setPartyType(int type) {
		_partyType = type;
	}

	public int getPartyType() {
		return _partyType;
	}

	/****************************** 战斗特化系统 ******************************/
	// 改变战斗特化状态
	public void changeFightType(int oldType, int newType) {
		// 消除既有的战斗特化状态
		switch (oldType) {
			case 1:
				addAc(2);
				addMr(-3);
				sendPackets(new S_Fight(S_Fight.TYPE_JUSTICE_LEVEL1, S_Fight.FLAG_OFF));
				break;

			case 2:
				addAc(4);
				addMr(-6);
				sendPackets(new S_Fight(S_Fight.TYPE_JUSTICE_LEVEL2, S_Fight.FLAG_OFF));
				break;

			case 3:
				addAc(6);
				addMr(-9);
				sendPackets(new S_Fight(S_Fight.TYPE_JUSTICE_LEVEL3, S_Fight.FLAG_OFF));
				break;

			case -1:
				addDmgup(-1);
				addBowDmgup(-1);
				addSp(-1);
				sendPackets(new S_Fight(S_Fight.TYPE_EVIL_LEVEL1, S_Fight.FLAG_OFF));
				break;

			case -2:
				addDmgup(-3);
				addBowDmgup(-3);
				addSp(-2);
				sendPackets(new S_Fight(S_Fight.TYPE_EVIL_LEVEL2, S_Fight.FLAG_OFF));
				break;

			case -3:
				addDmgup(-5);
				addBowDmgup(-5);
				addSp(-3);
				sendPackets(new S_Fight(S_Fight.TYPE_EVIL_LEVEL3, S_Fight.FLAG_OFF));
				break;
		}

		// 增加新的战斗特化状态
		switch (newType) {
			case 1:
				addAc(-2);
				addMr(3);
				sendPackets(new S_Fight(S_Fight.TYPE_JUSTICE_LEVEL1, S_Fight.FLAG_ON));
				break;

			case 2:
				addAc(-4);
				addMr(6);
				sendPackets(new S_Fight(S_Fight.TYPE_JUSTICE_LEVEL2, S_Fight.FLAG_ON));
				break;

			case 3:
				addAc(-6);
				addMr(9);
				sendPackets(new S_Fight(S_Fight.TYPE_JUSTICE_LEVEL3, S_Fight.FLAG_ON));
				break;

			case -1:
				addDmgup(1);
				addBowDmgup(1);
				addSp(1);
				sendPackets(new S_Fight(S_Fight.TYPE_EVIL_LEVEL1, S_Fight.FLAG_ON));
				break;

			case -2:
				addDmgup(3);
				addBowDmgup(3);
				addSp(2);
				sendPackets(new S_Fight(S_Fight.TYPE_EVIL_LEVEL2, S_Fight.FLAG_ON));
				break;

			case -3:
				addDmgup(5);
				addBowDmgup(5);
				addSp(3);
				sendPackets(new S_Fight(S_Fight.TYPE_EVIL_LEVEL3, S_Fight.FLAG_ON));
				break;
		}
	}

	// 确认是否属于新手, 并设定相关状态
	public void checkNoviceType() {
		// 判断是否启动新手保护系统(遭遇的守护)
		if (!Config.NOVICE_PROTECTION_IS_ACTIVE) {
			return;
		}

		// 判断目前等级是否已超过新手阶段
		if (getLevel() > Config.NOVICE_MAX_LEVEL) {
			// 判断之前是否具有新手保护状态
			if (hasSkillEffect(L1SkillId.STATUS_NOVICE)) {
				// 移除新手保护状态
				removeSkillEffect(L1SkillId.STATUS_NOVICE);

				// 关闭遭遇的守护图示
				sendPackets(new S_Fight(S_Fight.TYPE_ENCOUNTER, S_Fight.FLAG_OFF));
			}
		}
		else {
			// 判断是否未具有新手保护状态
			if (!hasSkillEffect(L1SkillId.STATUS_NOVICE)) {
				// 增加新手保护状态
				setSkillEffect(L1SkillId.STATUS_NOVICE, 0);

				// 开启遭遇的守护图示
				sendPackets(new S_Fight(S_Fight.TYPE_ENCOUNTER, S_Fight.FLAG_ON));
			}
		}
	}

	public void receiveDamage(L1Character attacker, double damage/*, boolean isMagicDamage*/) { // 攻击でＨＰを减らすときはここを使用
		if (getCurrentHp() > 0 && !isDead()) {
			if (attacker != this) {
				if (!(attacker instanceof L1EffectInstance) && !knownsObject(attacker)
						&& attacker.getMapId() == this.getMapId()) {
					attacker.onPerceive(this);
				}
			}
			if (damage > 0) {
				delInvis();
				if (attacker instanceof L1PcInstance) {
					L1PinkName.onAction(this, attacker);
				}
				if (attacker instanceof L1PcInstance && ((L1PcInstance) attacker).isPinkName()) {
					// ガードが画面内にいれば、攻击者をガードのターゲットに设定する
					Iterator<L1Object> itr=L1World.getInstance().getVisibleObjects(attacker).iterator();
					while (itr.hasNext()) {
						L1Object object=itr.next();
						if (object instanceof L1GuardInstance) {
							L1GuardInstance guard = (L1GuardInstance) object;
							guard.setTarget(((L1PcInstance) attacker));
						}
					}
					/*for (L1Object object : L1World.getInstance().getVisibleObjects(attacker)) {
						
					}*/
				}
				removeSkillEffect(FOG_OF_SLEEPING);
			}

			if (hasSkillEffect(MORTAL_BODY) && getId() != attacker.getId()) {
				int rnd = RandomArrayList.getInc(100, 1);
				if (damage > 0 && rnd <= 10) {
					if (attacker instanceof L1PcInstance) {
						L1PcInstance attackPc = (L1PcInstance) attacker;
						attackPc.sendPackets(new S_DoActionGFX(attackPc.getId(), ActionCodes.ACTION_Damage));
						attackPc.broadcastPacket(new S_DoActionGFX(attackPc.getId(), ActionCodes.ACTION_Damage));
						attackPc.receiveDamage(this, 30);
					} else if (attacker instanceof L1NpcInstance) {
						L1NpcInstance attackNpc = (L1NpcInstance) attacker;
						attackNpc.broadcastPacket(new S_DoActionGFX(attackNpc.getId(), ActionCodes.ACTION_Damage));
						attackNpc.receiveDamage(this, 30);
					}
				}
			}
			if (attacker.hasSkillEffect(JOY_OF_PAIN) && getId() != attacker.getId()) {
				int nowDamage = getMaxHp() - getCurrentHp();
				if (nowDamage > 0) {
					if (attacker instanceof L1PcInstance) {
						L1PcInstance attackPc = (L1PcInstance) attacker;
						attackPc.sendPackets(new S_DoActionGFX(attackPc.getId(), ActionCodes.ACTION_Damage));
						attackPc.broadcastPacket(new S_DoActionGFX(attackPc.getId(), ActionCodes.ACTION_Damage));
						attackPc.receiveDamage(this, (int) (nowDamage / 5));
					} else if (attacker instanceof L1NpcInstance) {
						L1NpcInstance attackNpc = (L1NpcInstance) attacker;
						attackNpc.broadcastPacket(new S_DoActionGFX(attackNpc.getId(), ActionCodes.ACTION_Damage));
						attackNpc.receiveDamage(this, (int) (nowDamage / 5));
					}
				}
			}
			if (getInventory().checkEquipped(145) // 狂战士斧
					|| getInventory().checkEquipped(149)) { // 牛人斧头
				damage *= 1.5; // 被ダメ1.5倍
			}
			if (hasSkillEffect(ILLUSION_AVATAR)) {
				damage *= 1.5; // 被ダメ1.5倍
			}
			int newHp = getCurrentHp() - (int) (damage);
			if (newHp > getMaxHp()) {
				newHp = getMaxHp();
			}
			if (newHp <= 0) {
				if (isGm()) {
					setCurrentHp(getMaxHp());
				}else if (getInventory().consumeEquippedCharge(22217)) {
					setCurrentHp(getMaxHp());
				} else {
					death(attacker);
				}
			}
			if (newHp > 0) {
				setCurrentHp(newHp);
			}
		} else if (!isDead()) { // 念のため
			System.out.println("警告∶PC的hp减少的运算出现错误。※将视为hp=0作处理");
			death(attacker);
		}
	}
}
