package member.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import member.model.MemberBean;
import member.model.MemberDao;
import member.model.getRandomPassword;

@Controller 
public class checkController {
	
	
	@Autowired
	private MemberDao mdao;
	
	
	
	//===========// �뜝�룞�삕�뜝�떛�벝�삕 �뜝�뙥釉앹삕泥댄겕================================
	@ResponseBody 
	@RequestMapping("idcheck.mb")
	public String idcheck(@RequestParam("id") String id) {
		
		int cnt = mdao.idCheck(id);
		
		if(cnt>0)
			return "no";
		
		return "yes";
	}
	
	
	//=======// �뜝�룞�삕�뜝�떛�벝�삕 李얍뜝�룞�삕===================================
	@ResponseBody 
	@RequestMapping("findid.mb")
	public String FindID(@RequestParam("name") String name,@RequestParam("hp") String hp) {
		
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("name", name);
		map.put("hp", hp);
		
		String id = mdao.FindId(map); 
		if( id != null) {
			return id;
		}
		
		return "null";
	}
	
	
	//==========// �뜝�룞�삕艅섇뜝�떕占� 李얍뜝�룞�삕==============================================
	@ResponseBody 
	@RequestMapping("findpw.mb")
	public String FindPW(@RequestParam("id") String id,@RequestParam("hp") String hp) throws Exception {
		
		//BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("id", id);
		map.put("hp", hp);
		
		int result = mdao.FindPW(map);
		String temporaryPw = getRandomPassword.tempPassword(8);// �뜝�룞�삕�뜝�룞�삕�뜝�떥�슱�삕�뜝�룞�삕 �뜝�룞�삕艅섇뜝�떕占�
		System.out.println("占쎌뿫占쎈뻻�뜮袁⑨옙甕곕뜇�깈 :"+temporaryPw);
		//String securePassword = encoder.encode(temporaryPw);// �뜝�룞�삕�뜝�룞�삕�뜝�떥�슱�삕�뜝�뙏�눦�삕 �뜝�룞�삕�샇�솕 �뜝�룞�삕�뜝�룞�삕
		
		if(result>0) {
			
			map.put("id", id);
			map.put("securePassword", temporaryPw);
			
			MemberBean mb = mdao.getById(id);// �뜝�룞�삕�뜝�떛�벝�삕 �뜝�뙏�뙋�삕�뜝�떦�뙋�삕 �뜝�떛紐뚯삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�떢�눦�삕 �뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕
			
			int cnt = mdao.resetPW(map);
			System.out.println("�뜝�룞�삕艅섇뜝�떕占� �뜝�떗源띿삕�솕 �뜝�룞�삕�뜝占� :"+cnt);
			
			//sendEMAIL.sendMail(mb.getEmail(), "[Billy A Dream] �뜝�뙂�떆釉앹삕艅섇뜝�떕占� �뜝�뙥�눦�삕", "[Billy A Dream] �뜝�뙂�룞�삕 �뜝�룞�삕艅섇뜝�떕節륁삕�뜝占� ' "+temporaryPw+" ' �뜝�뙃�땲�뙋�삕.");
			return "yes";
		}
		else {
			return "null";
		} 
	}
	//==========// �쉶�뜝�룞�삕�깉�뜝�룞�삕 �뜝�룞�삕 �뜝�룞�삕艅섇뜝�떕占� �솗�뜝�룞�삕==============================================
	@ResponseBody 
	@RequestMapping("quitPw.mb")
	public String quitPw(@RequestParam("id") String id,@RequestParam("pw") String pw,HttpSession session) throws Exception {
		
		//BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		
		MemberBean mb = mdao.getById(id);
		
		if(pw.equals(mb.getPw())){
			mdao.deleteMember(id);// �쉶�뜝�룞�삕�깉�뜝�룞�삕
			session.invalidate(); // �뜝�룞�삕�뜝�떎�맂怨ㅼ삕 �뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕
			return "yes";
		}
		return "null";
	}
	//==========// �쉶�뜝�룞�삕�깉�뜝�룞�삕 �뜝�룞�삕 �뜝�룞�삕艅섇뜝�떕占� �솗�뜝�룞�삕==============================================
	@ResponseBody 
	@RequestMapping("ipHpCheck.mb")
	public String ipHpCheck(@RequestParam("id") String id,@RequestParam("hp") String hp,HttpSession session) throws Exception {
		
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("id", id);
		map.put("hp", hp);
		
		int cnt = mdao.ipHpCheck(map);
		
		if(cnt>0) {
			return "";
		}
		
		return "null";
	}

}