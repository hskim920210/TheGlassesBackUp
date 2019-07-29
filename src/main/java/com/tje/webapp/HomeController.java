package com.tje.webapp;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tje.model.SimpleBoardItemView;
import com.tje.service.AllItemListService;

import com.tje.model.*;
import com.tje.service.*;

@Controller
public class HomeController {
	@Autowired
	private AllItemListService ilService;
	@Autowired
	SimpleBoardFreeViewSelectByDateDescService sbfvsbddService;
	@Autowired
	SimpleBoardReviewViewSelectByDateDescService sbrvsbddService;
	@Autowired
	Board_NoticeSelectAllByBoardIdDescService b_nsabdService;
	
	@RequestMapping("/")
	public String home(HttpServletResponse res, HttpServletRequest req) {
		
		try {
			res.sendRedirect(req.getContextPath() + "/home");
		} catch (IOException e) {
		}
		return null;
	}
	
	
	@RequestMapping("/home")
	public String index() {
		return "home";
	}
	
	@RequestMapping("/cs")
	public String Cs() {
		return "cs";
	}	
	
	@RequestMapping("/notice")
	public String Notice(Model model) {
		List<Board_Notice> board_noticeList = (List<Board_Notice>)b_nsabdService.service();
		System.out.println(board_noticeList);
		model.addAttribute("board_noticeList", board_noticeList);
		return "notice";
	}	
	
	@RequestMapping("/qna")
	public String Qna() {
		return "qna";
	}	
	
	@RequestMapping("/free")
	public String Free(Model model) {
		List<SimpleBoardFreeView> simpleBoardFreeViewList = (List<SimpleBoardFreeView>)sbfvsbddService.service();
		model.addAttribute("simpleBoardFreeViewList", simpleBoardFreeViewList);
		return "free";
	}
	
	@RequestMapping("/item")
	public String Item(Model model) {
		List<SimpleBoardItemView> result =  (List<SimpleBoardItemView>) ilService.service();
		model.addAttribute("item_list", result);
		return "item";
	}
	
	@RequestMapping("/review")
	public String Review(Model model) {
		List<SimpleBoardReviewView> result = (List<SimpleBoardReviewView>)sbrvsbddService.service();
		model.addAttribute("simpleBoardReviewViewList", result);
		return "review";
	}
	
	@RequestMapping("/cart")
	public String Cart() {
		return "cart";
	}
	
	@GetMapping("/regist")
	public String registGet(HttpSession session) {
		session.removeAttribute("login_sns_member");
		return "regist";
	}
}
