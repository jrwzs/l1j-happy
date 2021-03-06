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
package l1j.server.server.datatables;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;

import l1j.server.L1DatabaseFactory;
import l1j.server.server.utils.SQLUtil;
import l1j.william.L1Blend;

public class BlendTable {
	private static Logger _log = Logger.getLogger(BlendTable.class.getName());

	private static BlendTable _instance;

	private final HashMap<Integer, L1Blend> _itemIdIndex = new HashMap<Integer, L1Blend>();

	public static BlendTable getInstance() {
		if (_instance == null) {
			_instance = new BlendTable();
		}
		return _instance;
	}

	private BlendTable() {
		loadBlendTable();
	}

	private void loadBlendTable() {
		Connection con = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		try {

			con = L1DatabaseFactory.getInstance().getConnection();
			pstm = con.prepareStatement("SELECT * FROM william_item_blend");
			rs = pstm.executeQuery();
			fillBlendTable(rs);
		} catch (SQLException e) {
			_log.log(Level.SEVERE,
					"error while creating william_item_blend table", e);
		} finally {
			SQLUtil.close(rs);
			SQLUtil.close(pstm);
			SQLUtil.close(con);
		}
	}

	private void fillBlendTable(ResultSet rs) throws SQLException {
		while (rs.next()) {
			int item_id = rs.getInt("item_id");			// ????????????
			int checkLevel = rs.getInt("checkLevel");	// ????????????
			int checkClass = rs.getInt("checkClass");	// ????????????
			int rnd = rs.getInt("rnd");					// DB??????????????????
			int checkItem = rs.getInt("checkItem");		// ????????????????????????????????????
			int hpConsume = rs.getInt("hpConsume");		// ??????????????????
			int mpConsume = rs.getInt("mpConsume");		// ??????????????????
			int material = rs.getInt("material");		// ??????????????????
			int material_count = rs.getInt("material_count");		// ?????????????????? ??????
			int material_2 = rs.getInt("material_2");	// ??????????????????2
			int material_2_count = rs.getInt("material_2_count");	// ??????????????????2 ??????
			int material_3 = rs.getInt("material_3");	// ??????????????????3
			int material_3_count = rs.getInt("material_3_count");	// ??????????????????3 ??????
			int new_item = rs.getInt("new_item");		// ?????????????????????
			int new_item_counts = rs.getInt("new_item_counts");// ??????????????????
			int new_Enchantlvl_SW = rs.getInt("new_Enchantlvl_SW");	// ?????????(???????????????)??????????????????????????????
																	// ??????:1 ??????:0
			int new_item_Enchantlvl = rs.getInt("new_item_Enchantlvl");// ?????????????????????
			int removeItem = rs.getInt("removeItem");	// ????????????????????????
			String message = rs.getString("message");	// ??????????????????
			int item_Html = rs.getInt("item_Html");		// ????????????????????????????????????

			L1Blend Item_Blend = new L1Blend(item_id, checkLevel, checkClass,
					rnd, checkItem, hpConsume, mpConsume, material,
					material_count, material_2, material_2_count, material_3,
					material_3_count, new_item, new_item_counts,
					new_Enchantlvl_SW, new_item_Enchantlvl, removeItem,
					message, item_Html);
			_itemIdIndex.put(item_id, Item_Blend);
		}
	}

	public L1Blend getTemplate(int itemId) {
		return _itemIdIndex.get(itemId);
	}

}
