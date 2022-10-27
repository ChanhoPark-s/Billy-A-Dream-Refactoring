package member.controller;

import java.net.Inet4Address;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import member.model.MemberBean;
import member.model.MemberDao;
import member.model.MemberIpBean;
import member.model.MemberIpDao;

@Controller
public class memberLoginController {
	
	
	private final String command = "login.mb";
	private String getPage = "login";
	
	@Autowired
	private MemberDao mdao;
	
	@Autowired
	private MemberIpDao midao;
	
	@RequestMapping(value = command , method = RequestMethod.GET)//占싸깍옙占쏙옙창占쏙옙占쏙옙 占쏙옙占쏙옙
	public String login() {
		
		return getPage;
	}
	
	@ResponseBody
	@RequestMapping(value = command , method = RequestMethod.POST)
	public String login(@RequestParam("id")String id,@RequestParam("pw")String pw,HttpSession session) throws UnknownHostException {
		
		//BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		
		
		MemberBean mb = mdao.getById(id); 
		
		String ip = Inet4Address.getLocalHost().getHostAddress();// 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙
		
		boolean flag = false;
		
		if (mb != null) { // 占쌔댐옙 占쏙옙占싱듸옙 占쌍댐옙占쏙옙
			String getpw = mb.getPw();

			if (getpw != null) { // 占쌔댐옙 占쏙옙橘占싫ｏ옙占� 占쏙옙占쏙옙占쏙옙
				

				if (pw.equals(getpw)) { // 占쏙옙호화占쌔쇽옙 占승댐옙占쏙옙 확占쏙옙
					System.out.println("isblackList:"+mb.getIsblacklist());
					if(mb.getIsblacklist().equals("0")) {
						
						if (id.equals("admin")) { // 占쏙옙 占쏙옙占싱듸옙 admin 占싱몌옙 admin占쏙옙占쏙옙 占쏙옙
							session.setAttribute("id", id);
							return "admin";// admin 占싱몌옙 index占쏙옙占싹뤄옙
						} else {
							
							List<MemberIpBean> lists = midao.getAllByMno(mb.getMno()); // mno 占쏙옙 占쌔댐옙占싹댐옙 ip占쏙옙占싱븝옙 占쏙옙占쌘듸옙 占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙
							
							for (MemberIpBean mib : lists) {
								if (ip.equals(mib.getIp())) { // 占쌔댐옙 占쏙옙占싱듸옙 占쏙옙溝占� 占쏙옙占쏙옙占실곤옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占실띰옙 占쏙옙占쏙옙占쏙옙 확占쏙옙
									session.setAttribute("id", id);
									flag = true;
									return "yes";
								}
							}
							if (!flag) { // 占쌔댐옙占쏙옙占쏙옙풔占� 占쏙옙溝占쏙옙占� 占쏙옙占쏙옙. 占쏙옙占쏙옙求占� 占쏙옙占쏙옙占쏙옙占쏙옙 占싼어가占쏙옙 占쏙옙占쏙옙. 占쌕듸옙 response
								return "Insertip";
							}
						}
						// 占쌔댐옙 占쏙옙占싱듸옙占쏙옙 mno 占쏙옙 占쌔댐옙占싹댐옙 memberip 占쏙옙占싱븝옙占쏙옙 ip占쏙옙占쏙옙 占쏙옙占쏙옙占싶쇽옙 체크
					}
					else {
						return "black";
					}
				}
			}
		}
		/*
		if(request.getAttribute("destination").equals(null)) {
			return (String)request.getAttribute("destination");
		}
		*/
		
		return "ye"; // 占쌔댐옙占싹댐옙 占쏙옙橘占싫ｏ옙占� 占쏙옙占쏙옙占쏙옙 占쌓놂옙 占싣뱄옙占신놂옙 占쏙옙占쏙옙
	}
}
