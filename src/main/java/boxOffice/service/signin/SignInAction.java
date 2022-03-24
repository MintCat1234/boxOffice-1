package boxOffice.service.signin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import boxOffice.dao.*;
import boxOffice.model.*;

public class SignInAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		int result = 0;
		
		MemberDao md = MemberDao.getInstance();
		Member member = new Member();
		member = md.select(id);
		
		if (member == null || member.getMemberDel().equals("y")) {
			result = -1; // 없는 아이디
		} else if (member.getPassword().equals(password)) {
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			result = 1; // 로그인 성공
		}
		
		request.setAttribute("result", result);
		return "signIn";
	}

}
