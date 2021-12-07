package kr.co.member.memberDAO;

import kr.co.member.member;

public interface memberDAO {
	public void register(member vo)throws Exception;
	public member login(member vo)throws Exception;
	public void userUpdate(member vo)throws Exception;
	
	public void updateBoardWriter(String user_new_name)throws Exception;
	
}