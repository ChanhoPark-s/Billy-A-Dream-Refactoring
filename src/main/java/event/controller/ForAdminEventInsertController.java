package event.controller;


import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import event.model.EventBean;
import event.model.EventDao;






@Controller
public class ForAdminEventInsertController {
	
	private final String command="insert.evt";
	private String getPage="/eventInsertForm";
	private String gotoPage = "redirect:/list.evt";
	
	
	@Autowired
	ServletContext servletContext;

	@Autowired
	private EventDao eventDao;

	
	@RequestMapping(value= command,method=RequestMethod.GET)
	public String insert() {
		
		return getPage;
	}
	
	@RequestMapping(value= command,method=RequestMethod.POST)
	public ModelAndView insert(@ModelAttribute("event") @Valid EventBean event, 	
							BindingResult result) {
		
		System.out.println("???????:"+event.getEventImage());
		System.out.println("?????:"+ event.getTitle());
		System.out.println("???????:"+event.getWriter());
		System.out.println("??벤????????:"+event.getEventdate());
		System.out.println("?????:"+event.getWrite());
		
		
		ModelAndView mav = new ModelAndView();
		
		if(result.hasErrors()) {
			mav.setViewName(getPage);
			
			
			
			return mav;
		}
		

		MultipartFile multi = event.getUpload();
                        System.out.println("multi.getName():"+multi.getName());
		System.out.println("multi.getOriginalFilename():"+multi.getOriginalFilename());
		System.out.println("event.getEventImage():"+event.getEventImage());
		
		
		eventDao.insertEvent(event);
		
		String uploadPath = servletContext.getRealPath("/resources/images");
		System.out.println("uploadPath:"+uploadPath);
		
		String uploadPath2 = servletContext.getRealPath("/resources");
		//resources ???? ?????? ???????? ?ʴ´ٸ? ????.
		File folder = new File(uploadPath2);
		if (!folder.exists()) {
			folder.mkdir(); //???? ?????մϴ?.
			System.out.println(uploadPath + " ?????? resources ?????? ?????Ǿ????ϴ?.");
		}
		
		//resources/images ???? ?????? ???????? ?ʴ´ٸ? ????.
		File folder2 = new File(uploadPath);
		if (!folder2.exists()) {
			folder2.mkdir(); //???? ?????մϴ?.
			System.out.println(uploadPath + " ?????? images ?????? ?????Ǿ????ϴ?.");
		}
		
		
		
		
		File file = new File(uploadPath+"/"+multi.getOriginalFilename());
		try {
			multi.transferTo(file);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	
		
		
		mav.setViewName(gotoPage);
		return mav;
		
		

	}

	
}
