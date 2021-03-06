package boxOffice.service.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boxOffice.dao.ReviewDao;
import boxOffice.model.Review;

public class ReviewView implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String pageNum = request.getParameter("pageNum");
		int rvNum = Integer.parseInt(request.getParameter("rvNum"));			
		ReviewDao rd = ReviewDao.getInstance();
		rd.readCountUpdate(rvNum);	// 조회수 증가
		
		Review review = rd.selectRview(rvNum);	// 리뷰 불러오기
		
		request.setAttribute("review", review);
		request.setAttribute("rvNum", rvNum);
		request.setAttribute("pageNum", pageNum);
		
		return "reviewView";
	}

}
