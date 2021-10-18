package com.otb.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.otb.sevice.MatchingService;
import com.otb.vo.CommentVo;
import com.otb.vo.GameVo;
import com.otb.vo.MatchingGroupVo;
import com.otb.vo.MatchingVo;
import com.otb.vo.ReplyVo;
import com.otb.vo.SigunguVo;
import com.otb.vo.UserVo;

@Controller
@RequestMapping(value = "/matching", method = { RequestMethod.GET, RequestMethod.POST })
public class MatchingController {

	@Autowired
	private MatchingService matchingService;

	// 매칭 메인페이지(tab-content, ajax리스트)
	@RequestMapping("/main")
	public String main(Model model) {
		System.out.println("매칭 컨트롤러: main;;;");
		
		Map<String, Object> tabContent = matchingService.tabContent();
		model.addAttribute("tabContent", tabContent);
		
		return "/matching/list";
	}
	
	// 매칭 메인페이지/매칭글 등록폼 - 시도 코드에 맞는 시군구 리스트
	@ResponseBody
	@RequestMapping("/tabContentSigunguList")
	public List<SigunguVo> tabContentSigunguList(int sidoCode) {
		System.out.println("매칭 컨트롤러: API-tabContentSigunguList;;;");
		System.out.println(sidoCode);

		List<SigunguVo> sigunguList = matchingService.tabContentSigunguList(sidoCode);

		return sigunguList;
	}

	// 매칭 메인페이지/매칭글 등록폼 - 테마 코드에 맞는 게임 리스트
	@ResponseBody
	@RequestMapping("/tabContentGameList")
	public List<GameVo> tabContentGameList(int themeNo) {
		System.out.println("매칭 컨트롤러: API-tabContentGameList;;;");
		System.out.println(themeNo);

		List<GameVo> gameList = matchingService.tabContentGameList(themeNo);
		return gameList;
	}
	
	// 매칭리스트 API
	@ResponseBody
	@RequestMapping("/list")
	public Map<String, Object> list(@RequestParam(value= "keyword[]", required= false, defaultValue= "") List<String> keyword) {
		System.out.println("매칭 컨트롤러: API-list;;;");
		System.out.println("keyword= " + keyword);
		Map<String, Object> matchingListMap = matchingService.list(keyword);
		System.out.println("매칭 컨트롤러: list;;; " + matchingListMap);
		return matchingListMap;
	}

	// 매칭글 작성 폼
	@RequestMapping("/writeForm")
	public String writeForm(HttpSession session, Model model) {
		System.out.println("매칭 컨트롤러: writeForm;;;");

		// 로그인 유저 정보
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int authUserNo = authUser.getUserNo();
		System.out.println(authUserNo);

		// 글쓰기 폼에서 필요한(사용할) 데이터 Map
		Map<String, Object> writeUserMap = matchingService.writeUserInfo(authUserNo);
		System.out.println(writeUserMap);
		model.addAttribute("writeUserMap", writeUserMap);

		return "/matching/writeForm";
	}
	// 매칭글 작성 폼 - 게임 전체 리스트
	@ResponseBody
	@RequestMapping("/gameList")
	public List<GameVo> gameList() {
		System.out.println("매칭 컨트롤러: API-gameList;;;");
		
		List<GameVo> gameList = matchingService.gameList();
		
		return gameList;
	}

	// 매칭글 등록
	@RequestMapping("/write")
	public String write(@ModelAttribute MatchingVo matchingVo, HttpSession session) {
		System.out.println("매칭 컨트롤러: write;;;");
		System.out.println(matchingVo);
		
		// matchingVo에 글 작성자(userNo) 추가하기
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		int userNo = authUser.getUserNo();
		matchingVo.setUserNo(userNo);
		System.out.println(matchingVo);

		// 글쓰기 폼에서 받은 데이터 묶어서 INSERT
		int write = matchingService.write(matchingVo);

		return "redirect:/matching/main";
	}

	// 매칭글 읽기
	@RequestMapping("/read")
	public String read(HttpSession session, Model model, @RequestParam("no") int matchingNo) {
		System.out.println("매칭 컨트롤러: read;;;");
		System.out.println(matchingNo);

		// 클릭한 매칭글 번호 받아서 데이터(글/작성자 정보) 불러오기
		Map<String, Object> readInfo = matchingService.read(matchingNo);
		System.out.println(readInfo);
		model.addAttribute("readInfo", readInfo);

		return "/matching/read";
	}

	// 매칭글 읽기 - 매칭 참가 신청
	@ResponseBody
	@RequestMapping("/joinMatching")
	public Map<String, Object> joinMaching(@ModelAttribute MatchingGroupVo matchingGroupVo) {
		System.out.println("매칭 컨트롤러: API-joinMatching;;;");
		System.out.println(matchingGroupVo);
		
		// 매칭글 번호 / 매칭 최대인원 확인
		// 매칭에 참가하는 유저no, 매칭no로 매칭 참가
		Map<String, Object> joinMatchingInfo = matchingService.joinMatching(matchingGroupVo);
		System.out.println(joinMatchingInfo);
		
		return joinMatchingInfo;
	}
	// 매칭글 읽기 - 매칭 참가 취소
	@ResponseBody
	@RequestMapping("/outMatching")
	public int outMatching(@ModelAttribute MatchingGroupVo matchingGroupVo) {
		System.out.println("매칭 컨트롤러: API-outMatching;;;");
		System.out.println("매칭 컨트롤러: API-outMatching;;; " + matchingGroupVo);
		int matchingMember = matchingService.outMatching(matchingGroupVo);
		
		return matchingMember;
	}
	
	// 매칭글 읽기 - 매칭상태 변경
	@ResponseBody
	@RequestMapping("statusComplete")
	public int statusComplete(@RequestParam("matchingNo") int matchingNo) {
		System.out.println("매칭 컨트롤러: API-statusComplete;;;");
		System.out.println(matchingNo);
		
		int statusComplete = matchingService.statusComplete(matchingNo);
		return statusComplete;
	}
	
	// 매칭글 읽기 - 댓글 등록/출력
	@ResponseBody
	@RequestMapping("/commentWrite")
	public CommentVo commentWrite(@ModelAttribute CommentVo commentVo) {
		System.out.println("매칭 컨트롤러: API-commentWrite;;;");
		System.out.println(commentVo);
		
		CommentVo commentInfo = matchingService.commentWriteInfo(commentVo);
		
		return commentInfo;
	}
	
	// 매칭글 읽기 - 답글 등록/출력
	@ResponseBody
	@RequestMapping("/replyWrite")
	public ReplyVo replyWrite(@ModelAttribute ReplyVo replyVo) {
		System.out.println("매칭 컨트롤러: API-replyWrite;;;");
		System.out.println(replyVo);
		
		ReplyVo replyInfo = matchingService.replyWriteInfo(replyVo);
		
		return replyInfo;
	}
	
	// 매칭글/매칭그룹 삭제
	@ResponseBody
	@RequestMapping("/matchingDelete")
	public int matchingDelete(@RequestParam("matchingNo") int matchingNo) {
		System.out.println("매칭 컨트롤러: matchingDelete;;;");
		System.out.println(matchingNo);
		
		int delete = matchingService.matchingDelete(matchingNo);

		return delete;
	}

}
