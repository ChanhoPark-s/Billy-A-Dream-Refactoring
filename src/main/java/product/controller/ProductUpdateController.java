package product.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import product.model.ProductBean;
import product.model.ProductDao;

@Controller
public class ProductUpdateController {
	
	private final String command = "update.prd";
	private String getPage ="productUpdateForm";
	private String gotoPage ="redirect:/";
	
	@Autowired
	ProductDao productDao;
	
	@Autowired
	ServletContext servletContext; // ������Ʈ 1���� �ϳ��� �ڵ����� �������. �׷��� �׳� Autowired�� ���൵ ���Ե�.
	
	@RequestMapping(value = command, method = RequestMethod.GET)
	public String showUpdateForm(@RequestParam("no") String pno, Model model) {
		System.out.println("ProductUpdateController");
		ProductBean pb = productDao.getByNo(pno);
		model.addAttribute("pb", pb);
		return getPage;
	}
	
	/*
	@RequestMapping(value = command, method = RequestMethod.POST)
	public String doUpdate(ProductBean pbean) { // Ŀ�ǵ� ��ü ���·� ����
		System.out.println("ProductInsertController�� POST ��û ����");
		
		MultipartFile[] upload = pbean.getUpload();
		
		if(upload == null) {
			System.out.println("�Ѿ�� �����Ͱ� �����ϴ�.");
		}
		else {
			String tempImages = ""; 
			
			for(MultipartFile multi :upload) {
				System.out.println(multi.getOriginalFilename());
				//1. ���� ���ε�
				//System.out.println("multi.getName():" + multi.getName()); // upload : <input> �±��� name �Ӽ�
				System.out.println("multi.getOriginalFilename():" + multi.getOriginalFilename()); // ���� ������ ȭ���� ���ϸ�
				//System.out.println("pbean.getImage():" + pbean.getImage()); // �̰� ���� ���� ������ ȭ�ϸ�, �̰� �̿��ص� �������
				
				
				String uploadPath = servletContext.getRealPath("/resources");
				System.out.println("uploadPath: " + uploadPath);
				
				//resources ��� ������ �������� �ʴ´ٸ� ����.
				File folder = new File(uploadPath);
				if (!folder.exists()) {
					folder.mkdir(); //���� �����մϴ�.
					System.out.println(uploadPath + " ����� resources ������ �����Ǿ����ϴ�.");
				}
				
				UUID uuid = UUID.randomUUID();

				File file = new File(uploadPath + "/" + uuid.toString()+"_" + multi.getOriginalFilename()); // multi.getOriginalFilename() ��� pbean.getImage() �� ����ص� ��.
				
				if(tempImages == "") {
					tempImages = uuid.toString()+"_" + multi.getOriginalFilename();
				}else {
					tempImages +=  "," + uuid.toString()+"_" + multi.getOriginalFilename();
				}
				
				try {
					multi.transferTo(file); // ���ϴ� ��ġ�� ������ �ø��� ���� �� �����. �� ���� ����� ���ÿ� ���ε� ��.
					
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				} 
			}
			
			pbean.setImages(tempImages);
		}
		
		System.out.println(pbean);
		
		int cnt = -1;
		cnt = productDao.insertProduct(pbean);
		
		if(cnt > 0 ) {
			System.out.println("��ǰ ���Լ���");
		}else {
			System.out.println("��ǰ ���Խ���");
		}
		
		return gotoPage;
	}
	*/
}