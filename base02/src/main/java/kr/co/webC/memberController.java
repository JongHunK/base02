package kr.co.webC;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.member.member;
import kr.co.member.memberService.memberService;

@Controller
@RequestMapping(value="/main")
public class memberController {
	
	@Inject
	memberService service;
	
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public String regUserGET() {
		return "/main/register";
	}
	
	
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String regUserPOST(member vo,RedirectAttributes rttr,Model model)throws Exception{
		
		
		String KorErr = null;String idLengthErr = null;String pwCh=null;
		String msg = null ;
		String errmsg = null ;
		if (vo.getUser_id().matches(".*[ㄱ-ㅎㅏ-ㅣ가-힣]+.*")) {
			KorErr = "아이디는 영문만 가능합니다";
			model.addAttribute("idInKorea",KorErr);
			return "/main/register";
		}
		if (vo.getUser_id().length() < 8 || vo.getUser_id().length() > 16) {
			idLengthErr = "아이디 를 확인해주세요";
			model.addAttribute("idLengthErr",idLengthErr);
			return "/main/register";
		}
		if (!vo.getUser_pw().equals(vo.getUser_pw_ch())) {
			pwCh = "비밀번호가 동일하지않습니다";
			model.addAttribute("pwCh",pwCh);
			return "/main/register";
		}
		if (service.idCheck(vo) == "0") {
			msg = "사용가능한 아이디입니다";
		}else {
			msg = "이미 사용중인 아이디입니다";
			model.addAttribute("errmsg",errmsg);
			return "/main/register";
		}
		
		
		
		try {
			service.register(vo);
		} catch (Exception e) {
			errmsg = "등록 오류";
		}
		
		model.addAttribute("msg",msg);
		
		model.addAttribute("success","회원가입 성공!");
		return "redirect:/baseMain/main";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(member vo,HttpServletRequest req,RedirectAttributes rttr,Model model )throws Exception {
		HttpSession session = req.getSession();
		member login = service.login(vo);
		
		if (login == null) {
			session.setAttribute("member",null);
			rttr.addFlashAttribute("msg",false);
		}else {
			session.setAttribute("member", login);
		}
		
		return "redirect:/baseMain/main";
	}
	@RequestMapping(value="/logout",method = RequestMethod.GET)
	public String logout(HttpSession session)throws Exception{
		
		session.invalidate();
		
		return "redirect:/baseMain/main";
		
	}
	
	@RequestMapping(value="/LoginPage",method=RequestMethod.GET)
	public String loginPageGET() {
		return "/main/LoginPage";
	}
	@RequestMapping(value="/LoginPage",method = RequestMethod.POST)
	public String loginPage(member vo,HttpServletRequest req,RedirectAttributes rttr,Model model)throws Exception{
		
		HttpSession session = req.getSession();
		member login = service.login(vo);
		
		if (login == null) {
			session.setAttribute("member",null);
			rttr.addFlashAttribute("msg",false);
		}else {
			session.setAttribute("member", login);
		}
		
		return "redirect:/baseMain/main";
		
	}
	
	
	
	@RequestMapping(value="/userInfo",method=RequestMethod.GET)
	public String userInfo() {
		
		return "/main/userInfo";
		
	}
	
	@RequestMapping(value="/userInfoUpdate",method=RequestMethod.GET)
	public String userInfoUpdateGET() {
		
		return "/main/userInfoUpdate";
	}
	@RequestMapping(value="/userInfoUpdate",method=RequestMethod.POST)
	public String userInfoUpdatePOST(member vo,HttpSession session,Model model)throws Exception {
		//service.updateBoardWriter(user_new_name);
		service.userUpdate(vo);
		//model.addAttribute("updateReload","회원정보가 수정되었습니다. 다시 로그인 해주세요");
		session.invalidate();
		return "redirect:/baseMain/main";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
