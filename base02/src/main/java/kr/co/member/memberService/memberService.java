package kr.co.member.memberService;

import kr.co.member.member;

public interface memberService {
	public void register(member vo)throws Exception;
	public member login(member vo)throws Exception;
	public void userUpdate(member vo)throws Exception;
}
