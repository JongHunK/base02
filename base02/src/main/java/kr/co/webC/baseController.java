
package kr.co.webC;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.base.base;
import kr.co.base.baseService.baseService;
import kr.co.member.member;
import kr.co.member.memberService.memberService;

@Controller
@RequestMapping(value = "/baseMain/*")
public class baseController {

	@Inject
	baseService service;
	
	memberService memberService;

	@RequestMapping(value = "/main", method = RequestMethod.GET) 
	public String main(Model model)throws Exception {
		model.addAttribute("list", service.listAll());
		return "/baseMain/main";
	}

	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public void createGET(base baord, Model model) throws Exception {
	}

	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public String createPOST(base board, RedirectAttributes rttr) throws Exception {

		board.setView_count(0);
		service.createBoard(board);
		return "redirect:/baseMain/main";
	}

	@RequestMapping(value = "/listAll", method = RequestMethod.POST)
	public String listAll(Model model) throws Exception {
		return "";
	}

	@RequestMapping(value = "/remove", method = RequestMethod.POST)
	public String removePOST(@RequestParam("bno") int boardNo, RedirectAttributes rttr) throws Exception {
		service.delBoard(boardNo); 
		return "redirect:/baseMain/main";
	}

	@RequestMapping(value = "/update", method = RequestMethod.GET) 
	public String modifyGET(int bno, Model model) throws Exception {
		model.addAttribute(service.readBoard(bno)); 
		return "baseMain/update";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String modifyPOST(base base, RedirectAttributes rttr) throws Exception {
		service.updateBoard(base); 
		return "redirect:/baseMain/main";
	}

	@RequestMapping(value = "/read", method = RequestMethod.GET) 
	public void read(@RequestParam("bno") int bno, Model model) throws Exception {
		service.updateViewCnt(bno);
		model.addAttribute(service.readBoard(bno)); 
	}

}
