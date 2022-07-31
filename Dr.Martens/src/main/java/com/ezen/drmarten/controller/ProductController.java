package com.ezen.drmarten.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.ezen.drmarten.mappers.ProductMapper;
import com.ezen.drmarten.model.Product;
import com.ezen.drmarten.model.Product_attach;
import com.ezen.drmarten.service.ProductService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	private ProductMapper dao;
	@Autowired
	private ProductService svc;
 
	@GetMapping("")
	public String index(Model model, @RequestParam(name = "page", required = false, defaultValue = "1") int page) {
		PageHelper.startPage(page, 5);
		PageInfo<Product> productList = new PageInfo<Product>(svc.getList());
		model.addAttribute("product", productList);
		return "/product/product_view";
	}

	@PostMapping("/files/add")
	@ResponseBody
	public String add(@RequestParam("files") MultipartFile[] mfiles, HttpServletRequest request,
			Product pro) {
		ServletContext context = request.getServletContext();
		String fileSavePath = context.getRealPath("/WEB-INF/files/"+pro.getName());
		String savePath ="resources/img/"+pro.getName()+"/";
		try {
			//프로덕트 객체 생성.
			Product product = new Product();
			product.setName(pro.getName());
			product.setMade(pro.getMade());
			product.setMaterial(pro.getMaterial());
			product.setColor(pro.getColor());
			product.setGender(pro.getGender());
			product.setCategory(pro.getCategory());
			product.setPrice(pro.getPrice());
			
			//제품 번호 생성
			java.util.Date date= new Date();
			SimpleDateFormat format1 = new SimpleDateFormat ( "yyMMdd");
			String time = format1.format(date)+"00";
			int savecode = Integer.valueOf(time);
			
			product.setProduct_code(savecode);
			
			
			
			//db 에 프로덕트 테이블에 저장.
			boolean add_upload = dao.add_upload(product) > 0;
			boolean add_attach = false; 
			
			Product_attach attach = new Product_attach();
			List<String> list = new ArrayList<>();
			if(mfiles.length>0) {
				  File file = new File(fileSavePath); 
				  
				  if (file.exists()) {
					  
				  }else {
					  Path temp = Paths.get(fileSavePath);
					  Files.createDirectory(temp);
				  }
				boolean added = svc.add_stock(pro);	
				
				
				for (int i = 0; i < mfiles.length; i++) {
//					String[] token = mfiles[i].getOriginalFilename().split("\\.");
//					String fname = token[0] + "_" + System.nanoTime() + "." + token[1];
					String fname = mfiles[i].getOriginalFilename();
					mfiles[i].transferTo(new File(fileSavePath + "/" + fname));
					
					attach.setProduct_code(savecode);
					attach.setFname(fname);
					attach.setFpath(savePath);
					add_attach = dao.add_attach(attach) > 0;
				}
			}else {
				System.out.println("ATTACH DB저장 실패");
				add_attach=false;
			}
			boolean two = add_upload == true && add_attach == true;
			return "{\"added\":" + two + "}";
		} catch (Exception e) {
			e.printStackTrace();
			return "파일 저장 실패:";
		}
	}
	@PostMapping("/files/addFiles")
	@ResponseBody
	public String addFiles(@RequestParam("files") MultipartFile[] mfiles, HttpServletRequest request,
			Product pro) throws IllegalStateException, IOException {
		ServletContext context = request.getServletContext();
		String fileSavePath = context.getRealPath("/resources/img/"+pro.getName()+"/");
		String savePath ="resources/img/"+pro.getName()+"/";
		int code = dao.getCodeByName(pro.getName());
		boolean add_attach = false; 
		Product_attach attach = new Product_attach();
		if(mfiles.length>0) {
			  File file = new File(fileSavePath); 
			  
			  if (file.exists()) {
				  
			  }else {
				  Path temp = Paths.get(fileSavePath);
				  Files.createDirectory(temp);
			  }
			
			
			
			for (int i = 0; i < mfiles.length; i++) {
				String fname = mfiles[i].getOriginalFilename();
				mfiles[i].transferTo(new File(fileSavePath + "/" + fname));
				
				attach.setProduct_code(code);
				attach.setFname(fname);
				attach.setFpath(savePath);
				add_attach = dao.add_attach2(attach) > 0;
			}
		}else {
			System.out.println("ATTACH DB저장 실패");
			add_attach=false;
		}
		boolean two =  add_attach == true;
		return "{\"added\":" + two + "}";
	} 
	
	
	//size별 재고 갯수 추가 메소드
	@PostMapping("/files/addStock") 
	@ResponseBody
	public String addStock( HttpServletRequest request,
			Product pro) {
		//서비스로 짬때리기
		boolean added = svc.add_stock(pro);
		 
		
		return "재고 추가 성공";
	}
	@PostMapping("/files/searchName")
	public String searchLikeName( HttpServletRequest request,
			Product pro,Model model) {
		//서비스로 짬때리기
		List<Product> likeNameList = svc.searchLikeName(pro);
		//유사이름으로 검색된 List정보를 view페이지로 전송
		model.addAttribute("list", likeNameList);
		 
		
		return "/product/listView";
	}
	
	@GetMapping("/category/{String}")
	public String categorySearch(HttpServletRequest request,Model model,
								@PathVariable("String") String search) {
		List<Product> list = svc.categorySearch(search);
		
		model.addAttribute("list", list);
		
		return "/product/listView";
	}
	
	@GetMapping("/product/erase")
	public String delete(Product pro) throws Exception {
		svc.delete(pro);
		return "/product/listView";
	}
}
