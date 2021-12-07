package kr.co.member.memberDAO;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.member.member;


@Repository
public class memberDAOImp implements memberDAO {
	@Inject
	SqlSession sqlsession;
	
	
	String namespace="kr.co.mapper.memberMapper";

	@Override
	public void register(member vo) throws Exception {
		sqlsession.insert(namespace+".register",vo);
	}

	@Override
	public member login(member vo) throws Exception {
		return sqlsession.selectOne(namespace+".login",vo);
	}

	@Override
	public void userUpdate(member vo) throws Exception {
		sqlsession.update(namespace+".updateUser",vo);
	}

	@Override
	public void updateBoardWriter(String user_new_name) throws Exception {
		sqlsession.update(namespace+".updateBoardWriter",user_new_name);
	}

}
