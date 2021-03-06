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

import java.util.Map;

import l1j.server.server.serverpackets.S_ServerMessage;
import l1j.server.server.utils.collections.Maps;

public class LoginController {
	private static LoginController _instance;

	private Map<String, ClientThread> _accounts = Maps.newConcurrentMap();

	private int _maxAllowedOnlinePlayers;

	private LoginController() {
	}

	public static LoginController getInstance() {
		if (_instance == null) {
			_instance = new LoginController();
		}
		return _instance;
	}

	public ClientThread[] getAllAccounts() {
		return _accounts.values().toArray(new ClientThread[_accounts.size()]);
	}

	public int getOnlinePlayerCount() {
		return _accounts.size();
	}

	public int getMaxAllowedOnlinePlayers() {
		return _maxAllowedOnlinePlayers;
	}

	public void setMaxAllowedOnlinePlayers(int maxAllowedOnlinePlayers) {
		_maxAllowedOnlinePlayers = maxAllowedOnlinePlayers;
	}

	private void kickClient(final ClientThread client) {
		if (client == null) {
			return;
		}

		GeneralThreadPool.getInstance().execute(new Runnable() {
			@Override
			public void run() {
				if (client.getActiveChar() != null) {
					client.getActiveChar()
							.sendPackets(new S_ServerMessage(357));
				}

				try {
					Thread.sleep(1000);
				} catch (Exception e) {
				}
				client.kick();
			}
		});
	}

	public synchronized void login(ClientThread client, Account account)
			throws GameServerFullException, AccountAlreadyLoginException {
		if (!account.isValid()) {
			// ??????????????????????????????????????????
			// ????????????????????????????????????
			throw new IllegalArgumentException("????????????????????????!!");
		}
		if ((getMaxAllowedOnlinePlayers() <= getOnlinePlayerCount())
				&& !account.isGameMaster()) {
			throw new GameServerFullException();
		}
		if (_accounts.containsKey(account.getName())) {
			kickClient(_accounts.remove(account.getName()));
			throw new AccountAlreadyLoginException();
		}

		_accounts.put(account.getName(), client);
	}

	public synchronized boolean logout(ClientThread client) {
		if (client.getAccountName() == null) {
			return false;
		}
		return _accounts.remove(client.getAccountName()) != null;
	}
}
