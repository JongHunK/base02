package kr.co.member.memberService;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.member.member;
import kr.co.member.memberDAO.memberDAO;

@Service
public class memberServiceImpl implements memberService {

	@Inject
	memberDAO dao;
	
	@Override
	public void register(member vo) throws Exception {
		dao.register(vo);
	}

	@Override
	public member login(member vo) throws Exception {
		return dao.login(vo);
	}

	@Override
	public void userUpdate(member vo) throws Exception {
		dao.userUpdate(vo);
	}

}
