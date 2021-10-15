package kr.co.base.baseService;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.base.base;
import kr.co.base.baseDAO.baseDAO;
import kr.co.web.common.pagination;
@Service
public class baseServiceImpl implements baseService {
	
	@Inject
	baseDAO dao;
	
	@Override
	public void createBoard(base vo) throws Exception {
		dao.createBoard(vo);
	}

	@Override
	public List<base> listAll(pagination pagination) throws Exception {
		return dao.listAll(pagination);
	}

	@Override
	public void delBoard(Integer boardNo) throws Exception {
		dao.delBoard(boardNo);
	}

	@Override
	public base readBoard(Integer boardNo) throws Exception {
		return dao.readBoard(boardNo);
	}

	@Override
	public void updateBoard(base base) throws Exception {
		dao.updateBoard(base);
	}

	@Override
	public void updateViewCnt(Integer boardNo) throws Exception {
		dao.updateViewCnt(boardNo);
	}

	@Override
	public int getBoardListCnt() throws Exception {
		return dao.getBoardListCnt();
	}

	@Override
	public List<base> search(pagination pagination) throws Exception {
		return dao.search(pagination);
	}

}
