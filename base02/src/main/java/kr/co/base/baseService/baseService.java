package kr.co.base.baseService;

import java.util.List;

import kr.co.base.base;
import kr.co.web.common.pagination;

public interface baseService {
	public void createBoard(base vo) throws Exception;
	public List<base> listAll(pagination pagination) throws Exception;
	public void delBoard(Integer boardNo) throws Exception;
	public base readBoard(Integer boardNo)throws Exception;
	public void updateBoard(base base)throws Exception;
	public void updateViewCnt(Integer boardNo)throws Exception;
	
	public int getBoardListCnt() throws Exception;
}
