package kr.co.base.baseDAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.base.base;
import kr.co.web.common.pagination;

@Repository
public class baseDAOImp implements baseDAO {
	@Inject
	SqlSession sqlSession;
	
	private String namespce="kr.co.mapper.baseMapper";
	
	@Override
	public void createBoard(base vo) throws Exception {
		sqlSession.insert(namespce+".insertBoard",vo);
	}

	@Override
	public List<base> listAll() throws Exception {
		return sqlSession.selectList(namespce+".ListAll");
	}

	@Override
	public void delBoard(Integer boardNo) throws Exception {
		sqlSession.delete(namespce+".delBoard",boardNo);
	}

	@Override
	public base readBoard(Integer boardNo) throws Exception {
		return sqlSession.selectOne(namespce+".readBoard", boardNo);
	}

	@Override
	public void updateViewCnt(Integer boardNo) throws Exception {
		sqlSession.update(namespce+".updateViewCnt", boardNo);
	}

	@Override
	public void updateBoard(base base) throws Exception {
		sqlSession.update(namespce+".updateBoard", base);
	}

	@Override
	public int getBoardListCnt(pagination pagination) throws Exception {
		return sqlSession.selectOne(namespce+"getBoardListCnt");
	}

}
