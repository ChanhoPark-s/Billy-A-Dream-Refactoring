package product.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import member.model.MemberBean;
import member.model.MemberDao;
import product.model.ProductBean;
import product.model.ProductDao;
import util.PagingProduct;

@Controller
public class ProductSearchLocationController {
	private final String command = "search_by_mylocation.prd";
	private String getPage = "productSearchResultByMyAddress";
	
	@Autowired
	private ProductDao pdao;
	
	@Autowired
	private MemberDao mdao;
	
	@RequestMapping(command)
	public String detailForm(@RequestParam("whatColumn") String whatColumn, 
								@RequestParam("keyword") String keyword,
								@RequestParam(value = "add2Name", required = false) String add2Name,
								@RequestParam(value = "pageNumber", required = false) String pageNumber,
								HttpServletRequest request,
								Model model,
								HttpSession session) {
		
		System.out.println("\n + ProductSearchLocationController ���� �Ѱܹ��� 4���� ��");
		System.out.println("whatColumn:" + whatColumn);
		System.out.println("keyword: " + keyword);
		System.out.println("add2Name: " + add2Name);
		System.out.println("pageNumber: " + pageNumber + "\n");
		
		//for searching without seperating upper or lower case
		keyword = keyword.toUpperCase();
		
		//making map with whatColumn and keyword
		Map<String, String> map = new HashMap<String, String>();
		map.put("whatColumn", whatColumn); // genre or grade or actor
		map.put("keyword", "%" + keyword + "%"); // �̸� %�� �ٿ��� �Ѱ���� ��.
		map.put("add2Name", add2Name);
		
		//getting getTotalCount of searchResult for paging
		int totalCount = pdao.getTotalSearchCount(map);
		System.out.println("totalCount of the result list by search: " + totalCount);
		
		//gettig request url to make the link of paging number
		String url = request.getContextPath() + "/" + command; // url = "/ex/list.tv" ������ ��ȣ�� �̷��� �־���� �ؼ�.
				
		
		//making bottom paging element                 ����¡���������������� �̰� ���ſ� �°� �����ؾ���. ����ϴ� Ŭ���� ��ü�� �ٸ��ɷ� �������.
		PagingProduct pageInfo = new PagingProduct(pageNumber, null, totalCount, url, whatColumn, keyword, add2Name); // null ��ſ� 3�� �ѱ�� �� �������� 3���� ������
		
		//getting result only need to show in this page
		List<ProductBean> resultProductList = pdao.getProductListBySearch(map, pageInfo);
		System.out.println("size of the list will be shown in this page: " + resultProductList.size());		
				
		model.addAttribute("resultProductList", resultProductList);
		model.addAttribute("pageInfo", pageInfo);
		
		
		
//		//to get Addr1
//		String id = (String)session.getAttribute("id");
//		MemberBean mb = mdao.getById(id);
//		
//		String areaNum = null;
//		String addr1 = mb.getAdd1_sido();
//		System.out.println("\n" + "addr1 : " + addr1);
//		if(addr1.equals("����")) {
//			areaNum = "11";
//		}else if(addr1.equals("��õ")) {
//			areaNum = "28";
//		}
		
		model.addAttribute("areaNum", 11);
		

		
		return getPage;
	}
}