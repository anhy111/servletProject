package kr.or.ddit.app.basic.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.app.acm.service.AcommodationServiceImpl;
import kr.or.ddit.app.acm.service.IAcommodationService;
import kr.or.ddit.app.acm.vo.AcommodationVO;
import kr.or.ddit.app.tour.service.ITourService;
import kr.or.ddit.app.tour.service.TourServiceImpl;
import kr.or.ddit.app.tour.vo.TourVO;
import kr.or.ddit.app.vehc.service.IVehcService;
import kr.or.ddit.app.vehc.service.VehcServiceImpl;
import kr.or.ddit.app.vehc.vo.VehcVO;

@WebServlet("/detailPage.do")
public class DetailPageController  extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String vehcId = req.getParameter("vehcId");
//		String tourId = req.getParameter("tourId");
//		String acmId = req.getParameter("acmId");

		IVehcService vehcService = VehcServiceImpl.getInstance();
		VehcVO vehc = vehcService.getVehc(vehcId);
		
//		ITourService tourService = TourServiceImpl.getInstance();
//	    TourVO tour = tourService.getTour(tourId);
	    
//	    IAcommodationService acmService = AcommodationServiceImpl.getInstance();
//	    AcommodationVO acm = acmService.getAcm(acmId);
	      
		
		req.setAttribute("vehc", vehc);
//		req.setAttribute("tour", tour);
//		req.setAttribute("acm", acm);
		
		req.getRequestDispatcher("/").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}

