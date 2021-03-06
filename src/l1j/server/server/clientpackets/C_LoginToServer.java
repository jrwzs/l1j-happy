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
package l1j.server.server.clientpackets;

import static l1j.server.server.model.skill.L1SkillId.COOKING_1_0_N;
import static l1j.server.server.model.skill.L1SkillId.COOKING_1_0_S;
import static l1j.server.server.model.skill.L1SkillId.COOKING_1_6_N;
import static l1j.server.server.model.skill.L1SkillId.COOKING_1_6_S;
import static l1j.server.server.model.skill.L1SkillId.COOKING_2_0_N;
import static l1j.server.server.model.skill.L1SkillId.COOKING_2_0_S;
import static l1j.server.server.model.skill.L1SkillId.COOKING_2_6_N;
import static l1j.server.server.model.skill.L1SkillId.COOKING_2_6_S;
import static l1j.server.server.model.skill.L1SkillId.COOKING_3_0_N;
import static l1j.server.server.model.skill.L1SkillId.COOKING_3_0_S;
import static l1j.server.server.model.skill.L1SkillId.COOKING_3_6_N;
import static l1j.server.server.model.skill.L1SkillId.COOKING_3_6_S;
import static l1j.server.server.model.skill.L1SkillId.EFFECT_BEGIN;
import static l1j.server.server.model.skill.L1SkillId.EFFECT_BLOODSTAIN_OF_ANTHARAS;
import static l1j.server.server.model.skill.L1SkillId.EFFECT_BLOODSTAIN_OF_FAFURION;
import static l1j.server.server.model.skill.L1SkillId.EFFECT_END;
import static l1j.server.server.model.skill.L1SkillId.STATUS_THIRD_SPEED;
import static l1j.server.server.model.skill.L1SkillId.COOKING_WONDER_DRUG;
import static l1j.server.server.model.skill.L1SkillId.MIRROR_IMAGE;
import static l1j.server.server.model.skill.L1SkillId.SHAPE_CHANGE;
import static l1j.server.server.model.skill.L1SkillId.STATUS_BLUE_POTION;
import static l1j.server.server.model.skill.L1SkillId.STATUS_BRAVE;
import static l1j.server.server.model.skill.L1SkillId.STATUS_BRAVE2;
import static l1j.server.server.model.skill.L1SkillId.STATUS_CHAT_PROHIBITED;
import static l1j.server.server.model.skill.L1SkillId.STATUS_ELFBRAVE;
import static l1j.server.server.model.skill.L1SkillId.STATUS_HASTE;
import static l1j.server.server.model.skill.L1SkillId.STATUS_RIBRAVE;
import static l1j.server.server.model.skill.L1SkillId.UNCANNY_DODGE;

import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.Collection;
import java.util.logging.Level;
import java.util.logging.Logger;

import l1j.server.Config;
import l1j.server.L1DatabaseFactory;
import l1j.server.server.Account;
import l1j.server.server.ActionCodes;
import l1j.server.server.ClientThread;
import l1j.server.server.WarTimeController;
import l1j.server.server.datatables.CharacterTable;
import l1j.server.server.datatables.GetBackRestartTable;
import l1j.server.server.datatables.SkillsTable;
import l1j.server.server.model.Getback;
import l1j.server.server.model.L1CastleLocation;
import l1j.server.server.model.L1Clan;
import l1j.server.server.model.L1Cooking;
import l1j.server.server.model.L1PolyMorph;
import l1j.server.server.model.L1War;
import l1j.server.server.model.L1World;
import l1j.server.server.model.Instance.L1PcInstance;
import l1j.server.server.model.Instance.L1SummonInstance;
import l1j.server.server.model.skill.L1BuffUtil;
import l1j.server.server.model.skill.L1SkillUse;
import l1j.server.server.serverpackets.S_ActiveSpells;
import l1j.server.server.serverpackets.S_AddSkill;
import l1j.server.server.serverpackets.S_Bookmarks;
import l1j.server.server.serverpackets.S_CharTitle;
import l1j.server.server.serverpackets.S_CharacterConfig;
import l1j.server.server.serverpackets.S_InitialAbilityGrowth;
import l1j.server.server.serverpackets.S_InvList;
import l1j.server.server.serverpackets.S_Karma;
import l1j.server.server.serverpackets.S_Liquor;
import l1j.server.server.serverpackets.S_LoginGame;
import l1j.server.server.serverpackets.S_MapID;
import l1j.server.server.serverpackets.S_OwnCharPack;
import l1j.server.server.serverpackets.S_OwnCharStatus;
import l1j.server.server.serverpackets.S_PacketBox;
import l1j.server.server.serverpackets.S_SPMR;
import l1j.server.server.serverpackets.S_ServerMessage;
import l1j.server.server.serverpackets.S_SkillBrave;
import l1j.server.server.serverpackets.S_SkillHaste;
import l1j.server.server.serverpackets.S_SkillIconExp;
import l1j.server.server.serverpackets.S_SkillIconGFX;
import l1j.server.server.serverpackets.S_SkillIconThirdSpeed;
import l1j.server.server.serverpackets.S_SummonPack;
import l1j.server.server.serverpackets.S_SystemMessage;
import l1j.server.server.serverpackets.S_War;
import l1j.server.server.serverpackets.S_Weather;
import l1j.server.server.serverpackets.S_bonusstats;
import l1j.server.server.templates.L1BookMark;
import l1j.server.server.templates.L1GetBackRestart;
import l1j.server.server.templates.L1Skills;
import l1j.server.server.utils.SQLUtil;

// Referenced classes of package l1j.server.server.clientpackets:
// ClientBasePacket
//

/**
 * ?????????????????????????????????????????????????????????
 */
public class C_LoginToServer extends ClientBasePacket {

	private static final String C_LOGIN_TO_SERVER = "[C] C_LoginToServer";

	private static Logger _log = Logger.getLogger(C_LoginToServer.class.getName());

	public C_LoginToServer(byte abyte0[], ClientThread client)
			throws FileNotFoundException, Exception {
		super(abyte0);

		String login = client.getAccountName();

		String charName = readS();

		if(client.getAccount() == null) {
			_log.info("????????????????????????????????? ????????????: " + charName
					+ " IP??????: " + client.getHostname());
			client.close();
			return;
		}

		Account account1 = client.getAccount();
//		String login = account.getName();
		if (client.getActiveChar() != null) {
			_log.info("??????????????????????????????????????? " + client.getHostname() + ") ?????????");
			client.close();
			return;
		}

		for(String s :account1.getCharacters()) {
			L1PcInstance t = L1PcInstance.load(s);
			if(t == null) continue;
			if (t.getOnlineStatus()==1) {
				_log.info("???????????????????????????????????????????????? ????????????: " + charName + " ??????: " + login
						+ " IP??????: " + client.getHostname());
				client.close();
				return;
			}
		}
		//?????????????????????
		L1PcInstance pc = L1PcInstance.load(charName);
		if ((pc == null) || !login.equals(pc.getAccountName())) {
			_log.info("?????????????????? ????????????:" + charName + " ?????????" + login
					+ " IP?????????" + client.getHostname());
			client.close();
			return;
		}
		//?????????????????????
		if (pc != null) {
			if (pc.getOnlineStatus()==1) {
				_log.info("?????????????????????????????? ????????????: " + charName + " ??????: " + login
						+ " IP??????: " + client.getHostname());
				client.close();
				return;
			}
		}

		if (Config.LEVEL_DOWN_RANGE != 0) {
			if (pc.getHighLevel() - pc.getLevel() >= Config.LEVEL_DOWN_RANGE) {
				_log.info("???????????????????????????????????????????????????: ???????????????" + charName + " ?????????"
						+ login + " IP?????????" + client.getHostname());
				client.kick();
				return;
			}
		}

		// ??????????????? by eric1300460
		if (Config.GUI) {
			l1j.eric.gui.J_Main.getInstance().addPlayerTable(login, charName,
					client.getHostname());
		}

		_log.info("???????????????????????????: ???????????????" + charName + " ?????????" + login+ " IP?????????" + client.getHostname());

		int currentHpAtLoad = pc.getCurrentHp();
		int currentMpAtLoad = pc.getCurrentMp();
		pc.clearSkillMastery();//????????????????????????????????????  by sero
		pc.setOnlineStatus(1);
		CharacterTable.updateOnlineStatus(pc);
		L1World.getInstance().storeObject(pc);

		pc.setNetConnection(client);
		pc.setPacketOutput(client);
		client.setActiveChar(pc);

		/** ?????????????????? */
		S_InitialAbilityGrowth AbilityGrowth = new S_InitialAbilityGrowth(pc);
		pc.sendPackets(AbilityGrowth);

		/*
		 * S_Unknown1 s_unknown1 = new S_Unknown1(); pc.sendPackets(s_unknown1);
		 * S_Unknown2 s_unknown2 = new S_Unknown2(); pc.sendPackets(s_unknown2);
		 */
		pc.sendPackets(new S_LoginGame());
		bookmarks(pc);

		// Online = 1
		Account account = Account.load(pc.getAccountName());
		Account.online(account, true);

		// ??????????????????????????????????????????
		GetBackRestartTable gbrTable = GetBackRestartTable.getInstance();
		L1GetBackRestart[] gbrList = gbrTable.getGetBackRestartTableList();
		for (L1GetBackRestart gbr : gbrList) {
			if (pc.getMapId() == gbr.getArea()) {
				pc.setX(gbr.getLocX());
				pc.setY(gbr.getLocY());
				pc.setMap(gbr.getMapId());
				break;
			}
		}

		// altsettings.properties ??? GetBack ????????? true ???????????????
		if (Config.GET_BACK) {
			int[] loc = Getback.GetBack_Location(pc, true);
			pc.setX(loc[0]);
			pc.setY(loc[1]);
			pc.setMap((short) loc[2]);
		}

		// ????????????????????????????????????????????????????????????????????????
		int castle_id = L1CastleLocation.getCastleIdByArea(pc);
		if (0 < castle_id) {
			if (WarTimeController.getInstance().isNowWar(castle_id)) {
				L1Clan clan = L1World.getInstance().getClan(pc.getClanname());
				if (clan != null) {
					if (clan.getCastleId() != castle_id) {
						// ????????????
						int[] loc = new int[3];
						loc = L1CastleLocation.getGetBackLoc(castle_id);
						pc.setX(loc[0]);
						pc.setY(loc[1]);
						pc.setMap((short) loc[2]);
					}
				} else {
					// ????????????????????????
					int[] loc = new int[3];
					loc = L1CastleLocation.getGetBackLoc(castle_id);
					pc.setX(loc[0]);
					pc.setY(loc[1]);
					pc.setMap((short) loc[2]);
				}
			}
		}

		L1World.getInstance().addVisibleObject(pc);
		S_ActiveSpells s_activespells = new S_ActiveSpells(pc);
		pc.sendPackets(s_activespells);

		pc.beginGameTimeCarrier();

		S_OwnCharStatus s_owncharstatus = new S_OwnCharStatus(pc);
		pc.sendPackets(s_owncharstatus);

		S_MapID s_mapid = new S_MapID(pc.getMapId(), pc.getMap().isUnderwater());
		pc.sendPackets(s_mapid);

		S_OwnCharPack s_owncharpack = new S_OwnCharPack(pc);
		pc.sendPackets(s_owncharpack);

		pc.sendPackets(new S_SPMR(pc));

		// XXX S_OwnCharPack ?????????????????????
		S_CharTitle s_charTitle = new S_CharTitle(pc.getId(), pc.getTitle());
		pc.sendPackets(s_charTitle);
		pc.broadcastPacket(s_charTitle);

		pc.sendVisualEffectAtLogin(); // ?????????????????????????????????????????????

		pc.sendPackets(new S_Weather(L1World.getInstance().getWeather()));

		items(pc);
		skills(pc);
		buff(client, pc);
		pc.turnOnOffLight();

		pc.sendPackets(new S_Karma(pc)); // ?????????
		/* ????????? */
		pc.sendPackets(new S_PacketBox(88, pc.getDodge())); // ???
		pc.sendPackets(new S_PacketBox(101, pc.getNdodge())); // ???
		/* ????????? */

		// TODO ??????????????????
		int ainOutTime = Config.RATE_AIN_OUTTIME;
		int ainMaxPercent = Config.RATE_MAX_CHARGE_PERCENT;

		if (pc.getLevel() >= 49) { // TODO 49????????? ????????????????????????
			if (pc.getMap().isSafetyZone(pc.getLocation())) {
				pc.setAinZone(1);
			} else {
				pc.setAinZone(0);
			}

			if (pc.getAinPoint() >= 1) {
				pc.sendPackets(new S_SkillIconExp(pc.getAinPoint()));// ???????????????????????????1?????????
			}
			if (pc.getAinZone() == 1) {
				Calendar cal = Calendar.getInstance();
				long startTime = (cal.getTimeInMillis() - pc.getLastActive()
						.getTime()) / 60000;

				if (startTime >= ainOutTime) {
					long outTime = startTime / ainOutTime;
					long saveTime = outTime + pc.getAinPoint();
					if (saveTime >= 1 && saveTime <= ainMaxPercent) {
						pc.setAinPoint((int) saveTime);
					} else if (saveTime > ainMaxPercent) {
						pc.setAinPoint(ainMaxPercent);
					}
				}
			}
		}

		if (pc.getCurrentHp() > 0) {
			pc.setDead(false);
			pc.setStatus(0);
		} else {
			pc.setDead(true);
			pc.setStatus(ActionCodes.ACTION_Die);
		}

		// ??????????????????????????? by ??????
		if (Config.GITorF) {
			if (!pc.hasSkillEffect(1920)) {
				pc.setSkillEffect(1920, Config.GIT * 60000);//?????????
			}
		}

		if ((pc.getLevel() >= 51) && (pc.getLevel() - 50 > pc.getBonusStats())) {
			if ((pc.getBaseStr() + pc.getBaseDex() + pc.getBaseCon()
					+ pc.getBaseInt() + pc.getBaseWis() + pc.getBaseCha()) < (Config.BONUS_STATS1 * 6)) {
				pc.sendPackets(new S_bonusstats(pc.getId(), 1));
			}
		}

		if (Config.CHARACTER_CONFIG_IN_SERVER_SIDE) {
			pc.sendPackets(new S_CharacterConfig(pc.getId()));
		}

		serchSummon(pc);

		WarTimeController.getInstance().checkCastleWar(pc);

		// ?????????????????? ?????? GM
		Collection<L1PcInstance> allGM = L1World.getInstance().getAllPlayers();
		for (L1PcInstance object: allGM) {
			if (object instanceof L1PcInstance) {
				L1PcInstance GM = (L1PcInstance) object;
				if(pc.getClanid() >= 0&&(GM.getAccessLevel()== 100||GM.getAccessLevel()== 200)) {//xxyyzzxyz & ?????????
					String msg = "";
					if (pc.isCrown())
						msg = "??????";
					else if (pc.isKnight())
						msg = "??????";
					else if (pc.isElf())
						msg = "??????";
					else if (pc.isWizard())
						msg = "??????";
					else if (pc.isDarkelf())
						msg = "????????????";
					else if (pc.isDragonKnight())
						msg = "?????????";
					else if (pc.isIllusionist())
						msg = "?????????";
					GM.sendPackets(new S_SystemMessage((
							"????????? "+pc.getName()+" ???" +
							"????????? "+client.getAccountName()+" ???" +
							"IP???"+client.getIp()+"????????????"+msg+"?????????")));
				}
			}
		}

		if (pc.getClanid() != 0) { // ?????????
			L1Clan clan = L1World.getInstance().getClan(pc.getClanname());
			if (clan != null) {
				if ((pc.getClanid() == clan.getClanId()) && // ?????????????????????????????????????????????????????????
						pc.getClanname().toLowerCase()
								.equals(clan.getClanName().toLowerCase())) {
					L1PcInstance[] clanMembers = clan.getOnlineClanMember();
					for (L1PcInstance clanMember : clanMembers) {
						if (clanMember.getId() != pc.getId()) {
							clanMember.sendPackets(new S_ServerMessage(843, pc
									.getName())); // ?????????????????????%0%s????????????????????????????????????
						}
					}

					// ?????????????????????
					for (L1War war : L1World.getInstance().getWarList()) {
						boolean ret = war.CheckClanInWar(pc.getClanname());
						if (ret) { // ?????????
							String enemy_clan_name = war.GetEnemyClanName(pc
									.getClanname());
							if (enemy_clan_name != null) {
								// ???????????????????????????_???????????????????????????
								pc.sendPackets(new S_War(8, pc.getClanname(),
										enemy_clan_name));
							}
							break;
						}
					}
				} else {
					pc.setClanid(0);
					pc.setClanname("");
					pc.setClanRank(0);
					pc.save(); // ????????????????????????????????????
				}
			}
		}

		if (pc.getPartnerId() != 0) { // ?????????
			L1PcInstance partner = (L1PcInstance) L1World.getInstance()
					.findObject(pc.getPartnerId());
			if ((partner != null) && (partner.getPartnerId() != 0)) {
				if ((pc.getPartnerId() == partner.getId())
						&& (partner.getPartnerId() == pc.getId())) {
					pc.sendPackets(new S_ServerMessage(548)); // ??????????????????????????????????????????????????????
					partner.sendPackets(new S_ServerMessage(549)); // ?????????????????????????????????????????????????????????????????????
				}
			}
		}

		if (currentHpAtLoad > pc.getCurrentHp()) {
			pc.setCurrentHp(currentHpAtLoad);
		}
		if (currentMpAtLoad > pc.getCurrentMp()) {
			pc.setCurrentMp(currentMpAtLoad);
		}
		pc.startHpRegeneration();
		pc.startMpRegeneration();
		pc.startObjectAutoUpdate();
		client.CharReStart(false);
		pc.beginExpMonitor();
		pc.save(); // ????????????????????????????????????

		pc.sendPackets(new S_OwnCharStatus(pc));

		if (pc.getHellTime() > 0) {
			pc.beginHell(false);
		}

		// ????????????????????????(???????????????)?????????????????????
		pc.checkNoviceType();
	}

	public static void items(L1PcInstance pc) {
		// ????????????????????????????????????
		CharacterTable.getInstance().restoreInventory(pc);

		pc.sendPackets(new S_InvList(pc.getInventory().getItems()));
	}

	private void bookmarks(L1PcInstance pc) {

		Connection con = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		try {

			con = L1DatabaseFactory.getInstance().getConnection();
			pstm = con
					.prepareStatement("SELECT * FROM character_teleport WHERE char_id=? ORDER BY name ASC");
			pstm.setInt(1, pc.getId());

			rs = pstm.executeQuery();
			while (rs.next()) {
				L1BookMark bookmark = new L1BookMark();
				bookmark.setId(rs.getInt("id"));
				bookmark.setCharId(rs.getInt("char_id"));
				bookmark.setName(rs.getString("name"));
				bookmark.setLocX(rs.getInt("locx"));
				bookmark.setLocY(rs.getInt("locy"));
				bookmark.setMapId(rs.getShort("mapid"));
				S_Bookmarks s_bookmarks = new S_Bookmarks(bookmark.getName(),bookmark.getMapId(), bookmark.getId());
				pc.addBookMark(bookmark);
				pc.sendPackets(s_bookmarks);
			}

		} catch (SQLException e) {
			_log.log(Level.SEVERE, e.getLocalizedMessage(), e);
		} finally {
			SQLUtil.close(rs);
			SQLUtil.close(pstm);
			SQLUtil.close(con);
		}
	}

	private void skills(L1PcInstance pc) {
		Connection con = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		try {

			con = L1DatabaseFactory.getInstance().getConnection();
			pstm = con
					.prepareStatement("SELECT * FROM character_skills WHERE char_obj_id=?");
			pstm.setInt(1, pc.getId());
			rs = pstm.executeQuery();
			int i = 0;
			int lv1 = 0;
			int lv2 = 0;
			int lv3 = 0;
			int lv4 = 0;
			int lv5 = 0;
			int lv6 = 0;
			int lv7 = 0;
			int lv8 = 0;
			int lv9 = 0;
			int lv10 = 0;
			int lv11 = 0;
			int lv12 = 0;
			int lv13 = 0;
			int lv14 = 0;
			int lv15 = 0;
			int lv16 = 0;
			int lv17 = 0;
			int lv18 = 0;
			int lv19 = 0;
			int lv20 = 0;
			int lv21 = 0;
			int lv22 = 0;
			int lv23 = 0;
			int lv24 = 0;
			int lv25 = 0;
			int lv26 = 0;
			int lv27 = 0;
			int lv28 = 0;
			while (rs.next()) {
				int skillId = rs.getInt("skill_id");
				L1Skills l1skills = SkillsTable.getInstance().getTemplate(
						skillId);
				if (l1skills.getSkillLevel() == 1) {
					lv1 |= l1skills.getId();
				}
				if (l1skills.getSkillLevel() == 2) {
					lv2 |= l1skills.getId();
				}
				if (l1skills.getSkillLevel() == 3) {
					lv3 |= l1skills.getId();
				}
				if (l1skills.getSkillLevel() == 4) {
					lv4 |= l1skills.getId();
				}
				if (l1skills.getSkillLevel() == 5) {
					lv5 |= l1skills.getId();
				}
				if (l1skills.getSkillLevel() == 6) {
					lv6 |= l1skills.getId();
				}
				if (l1skills.getSkillLevel() == 7) {
					lv7 |= l1skills.getId();
				}
				if (l1skills.getSkillLevel() == 8) {
					lv8 |= l1skills.getId();
				}
				if (l1skills.getSkillLevel() == 9) {
					lv9 |= l1skills.getId();
				}
				if (l1skills.getSkillLevel() == 10) {
					lv10 |= l1skills.getId();
				}
				if (l1skills.getSkillLevel() == 11) {
					lv11 |= l1skills.getId();
				}
				if (l1skills.getSkillLevel() == 12) {
					lv12 |= l1skills.getId();
				}
				if (l1skills.getSkillLevel() == 13) {
					lv13 |= l1skills.getId();
				}
				if (l1skills.getSkillLevel() == 14) {
					lv14 |= l1skills.getId();
				}
				if (l1skills.getSkillLevel() == 15) {
					lv15 |= l1skills.getId();
				}
				if (l1skills.getSkillLevel() == 16) {
					lv16 |= l1skills.getId();
				}
				if (l1skills.getSkillLevel() == 17) {
					lv17 |= l1skills.getId();
				}
				if (l1skills.getSkillLevel() == 18) {
					lv18 |= l1skills.getId();
				}
				if (l1skills.getSkillLevel() == 19) {
					lv19 |= l1skills.getId();
				}
				if (l1skills.getSkillLevel() == 20) {
					lv20 |= l1skills.getId();
				}
				if (l1skills.getSkillLevel() == 21) {
					lv21 |= l1skills.getId();
				}
				if (l1skills.getSkillLevel() == 22) {
					lv22 |= l1skills.getId();
				}
				if (l1skills.getSkillLevel() == 23) {
					lv23 |= l1skills.getId();
				}
				if (l1skills.getSkillLevel() == 24) {
					lv24 |= l1skills.getId();
				}
				if (l1skills.getSkillLevel() == 25) {
					lv25 |= l1skills.getId();
				}
				if (l1skills.getSkillLevel() == 26) {
					lv26 |= l1skills.getId();
				}
				if (l1skills.getSkillLevel() == 27) {
					lv27 |= l1skills.getId();
				}
				if (l1skills.getSkillLevel() == 28) {
					lv28 |= l1skills.getId();
				}
				i = lv1 + lv2 + lv3 + lv4 + lv5 + lv6 + lv7 + lv8 + lv9 + lv10
						+ lv11 + lv12 + lv13 + lv14 + lv15 + lv16 + lv17 + lv18
						+ lv19 + lv20 + lv21 + lv22 + lv23 + lv24 + lv25 + lv26
						+ lv27 + lv28;

				//????????????????????????????????? by 0936690278
				pc.setSkillMastery(skillId);//XXX ???????????????????????? skill
				// END

			}
			if (i > 0) {
				pc.sendPackets(new S_AddSkill(lv1, lv2, lv3, lv4, lv5, lv6,
						lv7, lv8, lv9, lv10, lv11, lv12, lv13, lv14, lv15,
						lv16, lv17, lv18, lv19, lv20, lv21, lv22, lv23, lv24,
						lv25, lv26, lv27, lv28));
			}
		} catch (SQLException e) {
			_log.log(Level.SEVERE, e.getLocalizedMessage(), e);
		} finally {
			SQLUtil.close(rs);
			SQLUtil.close(pstm);
			SQLUtil.close(con);
		}
	}

	private void serchSummon(L1PcInstance pc) {
		for (L1SummonInstance summon : L1World.getInstance().getAllSummons()) {
			if (summon.getMaster().getId() == pc.getId()) {
				summon.setMaster(pc);
				pc.addPet(summon);
				for (L1PcInstance visiblePc : L1World.getInstance()
						.getVisiblePlayer(summon)) {
					visiblePc.sendPackets(new S_SummonPack(summon, visiblePc));
				}
			}
		}
	}

	private void buff(ClientThread clientthread, L1PcInstance pc) {
		Connection con = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		try {

			con = L1DatabaseFactory.getInstance().getConnection();
			pstm = con
					.prepareStatement("SELECT * FROM character_buff WHERE char_obj_id=?");
			pstm.setInt(1, pc.getId());
			rs = pstm.executeQuery();
			while (rs.next()) {
				int skillid = rs.getInt("skill_id");
				int remaining_time = rs.getInt("remaining_time");
				int time = 0;
				switch (skillid) {
				case SHAPE_CHANGE: // ??????
					int poly_id = rs.getInt("poly_id");
					L1PolyMorph.doPoly(pc, poly_id, remaining_time,
							L1PolyMorph.MORPH_BY_LOGIN);
					break;
				case STATUS_BRAVE: // ????????????
					pc.sendPackets(new S_SkillBrave(pc.getId(), 1,
							remaining_time));
					pc.broadcastPacket(new S_SkillBrave(pc.getId(), 1, 0));
					pc.setBraveSpeed(1);
					pc.setSkillEffect(skillid, remaining_time * 1000);
					break;
				case STATUS_ELFBRAVE: // ????????????
					pc.sendPackets(new S_SkillBrave(pc.getId(), 3,
							remaining_time));
					pc.broadcastPacket(new S_SkillBrave(pc.getId(), 3, 0));
					pc.setBraveSpeed(3);
					pc.setSkillEffect(skillid, remaining_time * 1000);
					break;
				case STATUS_BRAVE2: // ????????????
					pc.sendPackets(new S_SkillBrave(pc.getId(), 5,
							remaining_time));
					pc.broadcastPacket(new S_SkillBrave(pc.getId(), 5, 0));
					pc.setBraveSpeed(5);
					pc.setSkillEffect(skillid, remaining_time * 1000);
					break;
				case STATUS_HASTE: // ??????
					pc.sendPackets(new S_SkillHaste(pc.getId(), 1,
							remaining_time));
					pc.broadcastPacket(new S_SkillHaste(pc.getId(), 1, 0));
					pc.setMoveSpeed(1);
					pc.setSkillEffect(skillid, remaining_time * 1000);
					break;
				case STATUS_BLUE_POTION: // ????????????
					pc.sendPackets(new S_SkillIconGFX(34, remaining_time));
					pc.setSkillEffect(skillid, remaining_time * 1000);
					break;
				case STATUS_CHAT_PROHIBITED: // ??????
					pc.sendPackets(new S_SkillIconGFX(36, remaining_time));
					pc.setSkillEffect(skillid, remaining_time * 1000);
					break;
				case STATUS_THIRD_SPEED: // ????????????
					time = remaining_time / 4;
					pc.sendPackets(new S_Liquor(pc.getId(), 8)); // ?????? *
																	// 1.15
					pc.broadcastPacket(new S_Liquor(pc.getId(), 8)); // ?????? *
																		// 1.15
					pc.sendPackets(new S_SkillIconThirdSpeed(time));
					pc.setSkillEffect(skillid, time * 4 * 1000);
					break;
				case MIRROR_IMAGE: // ??????
				case UNCANNY_DODGE: // ????????????
					time = remaining_time / 16;
					pc.addDodge((byte) 5); // ????????? + 50%
					// ?????????????????????
					pc.sendPackets(new S_PacketBox(88, pc.getDodge()));
					pc.sendPackets(new S_PacketBox(21, time));
					pc.setSkillEffect(skillid, time * 16 * 1000);
					break;
				case EFFECT_BLOODSTAIN_OF_ANTHARAS: // ?????????????????????
					remaining_time = remaining_time / 60;
					if (remaining_time != 0) {
						L1BuffUtil.bloodstain(pc, (byte) 0, remaining_time,
								false);
					}
					break;
				case EFFECT_BLOODSTAIN_OF_FAFURION: // ??????????????????
					remaining_time = remaining_time / 60;
					if (remaining_time != 0) {
						L1BuffUtil.bloodstain(pc, (byte) 1, remaining_time,
								false);
					}
					break;
				default:
					// ????????????
					if (((skillid >= COOKING_1_0_N) && (skillid <= COOKING_1_6_N))
							|| ((skillid >= COOKING_1_0_S) && (skillid <= COOKING_1_6_S))
							|| ((skillid >= COOKING_2_0_N) && (skillid <= COOKING_2_6_N))
							|| ((skillid >= COOKING_2_0_S) && (skillid <= COOKING_2_6_S))
							|| ((skillid >= COOKING_3_0_N) && (skillid <= COOKING_3_6_N))
							|| ((skillid >= COOKING_3_0_S) && (skillid <= COOKING_3_6_S))) {
						L1Cooking.eatCooking(pc, skillid, remaining_time);
					}
					// ?????????????????????????????????
					else if (skillid == STATUS_RIBRAVE
							|| (skillid >= EFFECT_BEGIN && skillid <= EFFECT_END)
							|| skillid == COOKING_WONDER_DRUG) {
						;
					} else {
						L1SkillUse l1skilluse = new L1SkillUse();
						l1skilluse.handleCommands(clientthread.getActiveChar(),
								skillid, pc.getId(), pc.getX(), pc.getY(),
								null, remaining_time, L1SkillUse.TYPE_LOGIN);
					}
					break;
				}
			}
		} catch (SQLException e) {
			_log.log(Level.SEVERE, e.getLocalizedMessage(), e);
		} finally {
			SQLUtil.close(rs);
			SQLUtil.close(pstm);
			SQLUtil.close(con);
		}
	}

	@Override
	public String getType() {
		return C_LOGIN_TO_SERVER;
	}
}
