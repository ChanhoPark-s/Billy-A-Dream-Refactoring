package contect.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import contect.model.ContectBean;
import contect.model.ContectDao;

@Controller
public class ContectViewController {
	
	private final String command="board.ctc";
	private String getPage="contectBoard"; 
	
	@Autowired
	ContectDao contectDao;
	
	@RequestMapping(command)
	public String contectView(Model model,
			@RequestParam(value="whatColumn",required = false) String whatColumn,
			@RequestParam(value="keyword",required = false) String keyword) {
		Map<String, String> map=new HashMap<String, String>();
		map.put("whatColumn", whatColumn);
		map.put("keyword", "%"+keyword+"%");
		List<ContectBean> lists = contectDao.selectAllContect(map);
		model.addAttribute("contect_lists", lists);
		return getPage;
	}

}
