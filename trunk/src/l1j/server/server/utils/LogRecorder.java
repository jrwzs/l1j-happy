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
package l1j.server.server.utils;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

import l1j.server.server.model.TimeInform;
import l1j.server.server.model.Instance.L1ItemInstance;
import l1j.server.server.model.Instance.L1PcInstance;

/**
 * Log Recorder 纪录存取
 * 
 * @author ibm
 */
public class LogRecorder {
	/* BufferedWriter */
	static BufferedWriter out;

	/** base */
	public static void writeLog(String messenge) {
		try {
			out = new BufferedWriter(new FileWriter("log\\Log.log", true));
			out.write(messenge + "\r\n");
			out.close();
		} catch (IOException e) {
			System.out.println("以下是错误讯息: " + e.getMessage());
		}
	}

	/**
	 * Weapon Log
	 * 
	 * @param pc
	 *            玩家
	 */
	public static void writeWeaponLog(String messenge, L1PcInstance pc) {
		try {
			File WeaponLog = new File("log\\WeaponLog.log");
			if (WeaponLog.createNewFile()) {
				out = new BufferedWriter(new FileWriter("log\\WeaponLog.log",
						false));
				out.write("※以下是[冲升武器]的所有纪录※" + "\r\n");
				out.close();
			}
			out = new BufferedWriter(new FileWriter("log\\WeaponLog.log", true));// true:从尾端写起
			out.write("\r\n");// 每次填写资料都控一行 // |false:从头写
			out.write("来自帐号: " + pc.getAccountName() 
					+ ", 来自玩家: "+ pc.getName() + ", " + messenge + "。" + "\r\n");
			out.close();
		} catch (IOException e) {
			System.out.println("以下是错误讯息: " + e.getMessage());
		}
	}

	/**
	 * Bug Log
	 * 
	 * @param pc
	 *            玩家
	 */
	public static void writeBugLog(String messenge, L1PcInstance pc) {
		try {
			File BugLog = new File("log\\BugLog.log");
			if (BugLog.createNewFile()) {
				out = new BufferedWriter(new FileWriter("log\\BugLog.txt",
						false));
				out.write("※以下是所有玩家提供的BUG清单※" + "\r\n");
				out.write(messenge + "\r\n");
				out.close();
			}
			out = new BufferedWriter(new FileWriter("log\\BugLog.txt", true));
			out.write("\r\n");// 每次填写资料都控一行
			out.write("来自玩家: " + pc.getName() + ": " + messenge + "\r\n");
			out.close();

		} catch (IOException e) {
			System.out.println("以下是错误讯息: " + e.getMessage());
		}
	}

	/**
	 * Armor Log
	 * 
	 * @param pc
	 *            玩家
	 */
	public static void writeArmorLog(String messenge, L1PcInstance pc) {
		try {
			File ArmorLog = new File("log\\ArmorLog.log");
			if (ArmorLog.createNewFile()) {
				out = new BufferedWriter(new FileWriter("log\\ArmorLog.log",
						false));
				out.write("※以下是[冲升防具]的所有纪录※" + "\r\n");
				out.close();
			}
			out = new BufferedWriter(new FileWriter("log\\ArmorLog.log", true));
			out.write("\r\n");// 每次填写资料都控一行
			out.write("来自帐号: " + pc.getAccountName() + ", 来自玩家: "
					+ pc.getName() + ", " + messenge + "。" + "\r\n");
			out.close();
		} catch (IOException e) {
			System.out.println("以下是错误讯息: " + e.getMessage());
		}
	}

	/**
	 * Trade Log
	 * 
	 * @param sender
	 *            主动交易者
	 * @param receiver
	 *            被交易者
	 * @param l1iteminstance1
	 *            物品
	 * 
	 **/
	public static void writeTradeLog(L1PcInstance sender,
			L1PcInstance receiver, L1ItemInstance l1iteminstance1) {
		try {
			File TradeLog = new File("log\\TradeLog.log");
			if (TradeLog.createNewFile()) {
				out = new BufferedWriter(new FileWriter("log\\TradeLog.log",
						false));
				out.write("※以下是玩家[交易]的所有纪录※" + "\r\n");
				out.close();
			}
			out = new BufferedWriter(new FileWriter("log\\TradeLog.log", true));
			out.write("\r\n");// 每次填写资料都控一行
			out.write("来自帐号: " + sender.getAccountName() 
					+ ", 来自玩家: "+ sender.getName() 
					+ ",将  +"+ l1iteminstance1.getEnchantLevel()+ l1iteminstance1.getName() 
					+ "("+ l1iteminstance1.getCount() + "个)," 
					+ "交易给 " + " 帐号:"+ receiver.getAccountName() 
					+ "的 " + receiver.getName()+ " 玩家。" + "\r\n");
			out.close();
		} catch (IOException e) {
			System.out.println("以下是错误讯息: " + e.getMessage());
		}
	}

	/**
	 * Robots Log
	 * 
	 * @param player
	 *            使用外挂或加速器的玩家
	 */
	public static void writeRobotsLog(L1PcInstance player) {
		try {
			File RobotsLog = new File("log\\RobotsLog.log");
			if (RobotsLog.createNewFile()) {
				out = new BufferedWriter(new FileWriter("log\\RobotsLog.log",
						false));
				out.write("※以下是玩家[使用加速器&外挂]的所有纪录※" + "\r\n");
				out.close();
			}
			out = new BufferedWriter(new FileWriter("log\\RobotsLog.log", true));
			out.write("\r\n");// 每次填写资料都控一行
			out.write("加速器纪录 → 来自帐号: " + player.getAccountName() 
					+ ", 来自玩家: "+ player.getName() 
					+ ", 〈时间〉" + TimeInform.getNowTime(3, 0)
					+ "\r\n");
			out.close();
		} catch (IOException e) {
			System.out.println("以下是错误讯息: " + e.getMessage());
		}
	}

	/**
	 * 丢弃物品纪录
	 * @param player
	 */
	public static void writeDropLog(L1PcInstance player, L1ItemInstance item) {
		try {
			File DropLog = new File("log\\DropLog.log");
			if (DropLog.createNewFile()) {
				out = new BufferedWriter(new FileWriter("log\\DropLog.log",
						false));
				out.write("※以下是玩家[丢弃物品]的所有纪录※" + "\r\n");
				out.close();
			}
			out = new BufferedWriter(new FileWriter("log\\DropLog.log", true));
			out.write("\r\n");// 每次填写资料都控一行
			out.write("来自帐号: " + player.getAccountName() 
					+ "来自ip: " + player.getNetConnection().getIp()
					+ ",来自玩家: "+ player.getName() 
					+ ",地点: " + item.getLocation()
					+ ",〈时间〉" + TimeInform.getNowTime(3, 0)
					+ ",丢弃了: " + item.getCount() + " 个 " + item.getName()
					+ ",是否受祝福: " + item.getBless() 
					+ ",加成值: "+ item.getEnchantLevel() 
					+ ",属性强化类型: "+item.getAttrEnchantKind()
					+ ",属性强化等级: "+item.getAttrEnchantLevel()
					+ "\r\n");
			out.close();
		} catch (IOException e) {
			System.out.println("以下是错误讯息: " + e.getMessage());
		}
	}
}
