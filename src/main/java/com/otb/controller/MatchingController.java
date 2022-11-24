package com.otb.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
		System.out.println("Matching Controller: main;;;");
		System.out.println("매칭 메인 페이지 : " + model);
		
		Map<String, Object> tabContent = matchingService.tabContent();
		model.addAttribute("tabContent", tabContent);
		
		return "/matching/list";
	}
	
	// 매칭 메인페이지/매칭글 등록폼 - 시도 코드에 맞는 시군구 리스트
	@ResponseBody
	@RequestMapping("/tabContentSigunguList")
	public List<SigunguVo> tabContentSigunguList(int sidoCode) {
		System.out.println("Matching Controller : API-tabContentSigunguList;;;");
		System.out.println("시도 코드 : " + sidoCode);

		List<SigunguVo> sigunguList = matchingService.tabContentSigunguList(sidoCode);

		return sigunguList;
	}

	// 매칭 메인페이지/매칭글 등록폼 - 테마 코드에 맞는 게임 리스트
	@ResponseBody
	@RequestMapping("/tabContentGameList")
	public List<GameVo> tabContentGameList(int themeNo) {
		System.out.println("Matching Controller : API-tabContentGameList;;;");
		System.out.println("테마 코드 : " + themeNo);

		List<GameVo> gameList = matchingService.tabContentGameList(themeNo);
		return gameList;
	}
	
	// 매칭리스트 API
	@ResponseBody
	@RequestMapping("/list")
	public Map<String, Object> list(@RequestParam(value= "keyword[]", required= false, defaultValue= "") List<String> keyword) {
		System.out.println("Matching Controller : API-list;;;");
		System.out.println("keyword= " + keyword);
		Map<String, Object> matchingListMap = matchingService.list(keyword);
		System.out.println("Matching Controller : list; " + matchingListMap);
		return matchingListMap;
	}

	// 매칭글 작성 폼
	@RequestMapping("/writeForm")
	public String writeForm(HttpSession session, Model model) {
		System.out.println("Matching Controller : writeForm;;;");

		// 로그인 유저 정보
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int authUserNo = authUser.getUserNo();
		System.out.println("로그인 유저 번호 : " + authUserNo);

		// 글쓰기 폼에서 필요한(사용할) 데이터 Map
		Map<String, Object> writeUserMap = matchingService.writeUserInfo(authUserNo);
		System.out.println("사용자 작성 번호 : " + writeUserMap);
		model.addAttribute("writeUserMap", writeUserMap);

		return "/matching/writeForm";
	}
	// 매칭글 작성 폼 - 게임 전체 리스트
	@ResponseBody
	@RequestMapping("/gameList")
	public List<GameVo> gameList() {
		System.out.println("Matching Controller : API-gameList;;;");
		
		List<GameVo> gameList = matchingService.gameList();
		
		return gameList;
	}

	// 매칭글 등록
	@RequestMapping("/write")
	public String write(@ModelAttribute MatchingVo matchingVo, HttpSession session) {
		System.out.println("Matching Controller : write;;;");
		System.out.println("매칭글 등록 정보" + matchingVo);
		
		// matchingVo에 글 작성자(userNo) 추가하기
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		int userNo = authUser.getUserNo();
		matchingVo.setUserNo(userNo);
		System.out.println("글 작성자 추가 : " + matchingVo);

		// 글쓰기 폼에서 받은 데이터 묶어서 INSERT
		int matchingNo = matchingService.write(matchingVo);

		return "redirect:/matching/read?no=" + matchingNo;
	}

	// 매칭글 읽기
	@RequestMapping("/read")
	public String read(HttpSession session, Model model, @RequestParam("no") int matchingNo) {
		System.out.println("Matching Controller : read;;;");
		System.out.println("매칭 번호 : " + matchingNo);

		// 클릭한 매칭글 번호 받아서 데이터(글/작성자 정보) 불러오기
		Map<String, Object> readInfo = matchingService.read(matchingNo);
		System.out.println("읽기 정보" + readInfo);
		model.addAttribute("readInfo", readInfo);

		return "/matching/read";
	}

	// 매칭글 읽기 - 매칭 참가 신청
	@ResponseBody
	@RequestMapping("/joinMatching")
	public Map<String, Object> joinMaching(@ModelAttribute MatchingGroupVo matchingGroupVo) {
		System.out.println("Matching Controller : API-joinMatching;;;");
		System.out.println("매칭 참가 그룹 : " + matchingGroupVo);
		
		// 매칭글 번호 / 매칭 최대인원 확인
		// 매칭에 참가하는 유저no, 매칭no로 매칭 참가
		Map<String, Object> joinMatchingInfo = matchingService.joinMatching(matchingGroupVo);
		System.out.println("참가 매칭 정보 : " + joinMatchingInfo);
		
		return joinMatchingInfo;
	}
	// 매칭글 읽기 - 매칭 참가 취소
	@ResponseBody
	@RequestMapping("/outMatching")
	public int outMatching(@ModelAttribute MatchingGroupVo matchingGroupVo) {
		System.out.println("Matching Controller : API-outMatching;;;");
		System.out.println("Matching Controller : API-outMatching;;; " + matchingGroupVo);
		int matchingMember = matchingService.outMatching(matchingGroupVo);
		
		return matchingMember;
	}
	
	// 매칭글 읽기 - 매칭상태 변경
	@ResponseBody
	@RequestMapping("statusComplete")
	public int statusComplete(@RequestParam("matchingNo") int matchingNo) {
		System.out.println("Matching Controller : API-statusComplete;;;");
		System.out.println("상태 변경 : " + matchingNo);
		
		int statusComplete = matchingService.statusComplete(matchingNo);
		return statusComplete;
	}
	
	// 매칭글 읽기 - 댓글 등록/출력
	@ResponseBody
	@RequestMapping("/commentWrite")
	public CommentVo commentWrite(@ModelAttribute CommentVo commentVo) {
		System.out.println("Matching Controller : API-commentWrite;;;");
		System.out.println("댓글 정보 : " + commentVo);
		
		CommentVo commentInfo = matchingService.commentWriteInfo(commentVo);
		
		return commentInfo;
	}
	
	// 매칭글 읽기 - 답글 등록/출력
	@ResponseBody
	@RequestMapping("/replyWrite")
	public ReplyVo replyWrite(@ModelAttribute ReplyVo replyVo) {
		System.out.println("Matching Controller : API-replyWrite;;;");
		System.out.println("답글 정보 : " + replyVo);
		
		ReplyVo replyInfo = matchingService.replyWriteInfo(replyVo);
		
		return replyInfo;
	}
	
	// 매칭글/매칭그룹 삭제
	@ResponseBody
	@RequestMapping("/matchingDelete")
	public int matchingDelete(@RequestParam("matchingNo") int matchingNo) {
		System.out.println("Matching Controller : matchingDelete;;;");
		System.out.println("삭제 번호 " + matchingNo);
		
		int delete = matchingService.matchingDelete(matchingNo);

		return delete;
	}
	
		

}
