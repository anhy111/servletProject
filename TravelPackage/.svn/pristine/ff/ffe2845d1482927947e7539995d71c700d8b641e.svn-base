package kr.or.ddit.app.rsv.service;

import java.util.List;

import kr.or.ddit.app.rsv.dao.IRsvDAO;
import kr.or.ddit.app.rsv.dao.RsvDAOImpl;
import kr.or.ddit.app.rsv.vo.RsvVO;

public class RsvServiceImpl implements IRsvService {

	private static IRsvService RsvService;
	private IRsvDAO rsvDao;

	private RsvServiceImpl() {
		rsvDao = RsvDAOImpl.getInstace();
	}

	public static IRsvService getInstance() {
		if (RsvService == null) {
			RsvService = new RsvServiceImpl();
		}
		return RsvService;
	}

	@Override
	public int registerRsv(RsvVO rv) {
		int cnt = rsvDao.insertRsv(rv);
		return cnt;
	}

	@Override
	public int modifyRsv(RsvVO rv) {
		int cnt = rsvDao.updateRsv(rv);
		return cnt;
	}

	@Override
	public int removeRsv(String RsvId) {
		int cnt = rsvDao.deleteRsv(RsvId);
		return cnt;
	}

	@Override
	public List<RsvVO> getAllRsvList() {
		List<RsvVO> rsvList = rsvDao.getAllRsvList();
		return rsvList;
	}

	@Override
	public List<RsvVO> getRsvList(RsvVO rv) {
		List<RsvVO> rsvList2 = rsvDao.getRsvList(rv);
		return rsvList2;
	}
}
