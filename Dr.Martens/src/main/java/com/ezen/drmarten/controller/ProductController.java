package com.ezen.drmarten.controller;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.ezen.drmarten.mappers.BoardMapper;
import com.ezen.drmarten.mappers.ProductMapper;
import com.ezen.drmarten.model.Board;
import com.ezen.drmarten.model.Product;
import com.ezen.drmarten.model.Product_attach;
import com.ezen.drmarten.model.Product_size;
import com.ezen.drmarten.service.ProductService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


@SessionAttributes("itemCart")
@Controller
@RequestMapping("/DrMarten/product")
public class ProductController {

	@Autowired
	private ProductMapper dao;
	@Autowired
	private BoardMapper bdao;
	@Autowired
	private ProductService svc;

	@GetMapping("")
	public String index(Model model, @RequestParam(name = "page", required = false, defaultValue = "1") int page) {
		PageHelper.startPage(page, 10);
		PageInfo<Product> productList = new PageInfo<Product>(svc.getList());
		model.addAttribute("product", productList);
		return "/product/product_view";
	}

	@GetMapping("detail_product/{product_code}")
	public String detail(Model model, @PathVariable(name = "product_code") int product_code, HttpServletRequest request,
			@SessionAttribute(name = "FirstProduct", required = false) List<Product> firstProduct) {
		HttpSession session = request.getSession();
		try {
			if (session.getAttribute(String.valueOf(product_code)) != null) {
				Product product = svc.getProduct(product_code);
				List<Product_attach> att = svc.getAttByCode(product_code);
				// 제품이름_comments.png 는 제품설명의 이미지 파일 이기 때문에 배제하는 코드.
				for (int i = 0; i < att.size(); i++) {
					String[] temp = att.get(i).getFname().split("_");
					String[] temp2 = temp[1].split(".png");
					if (temp2[0].contentEquals("comments")) {
						model.addAttribute("attComment", att.get(i));
						att.remove(i);
					}
				}
				List<Product_size> size = dao.serachSizeByCode(product_code);
				List<Board> review = bdao.getProductReview(product_code);
				List<Board> qa = bdao.getMyQnaForProduct(product_code);
				List<Board> rplist = bdao.getMyQnaRP();

				int review_count = review.size();
				float score = 0;
				String writer = "";
				for (int j = 0; j < review.size(); j++) {
					writer = review.get(j).getWriter();
					score += review.get(j).getScore();
				}
				if (score > 0) {
					score = score / review_count;
					double score2 = Math.floor(score * 10) / 10;
					model.addAttribute("score", score2);
				} else {
					model.addAttribute("score", 0.0);
				}

				model.addAttribute("size", size);
				model.addAttribute("att", att);
				model.addAttribute("cnt", review_count);
				model.addAttribute("review", review);
				model.addAttribute("qa", qa);
				model.addAttribute("rp", rplist);
				//
				addCurrent(firstProduct, product);

				model.addAttribute("product", product);

				return "/product/detail_view";
			} else {
				session.setAttribute(String.valueOf(product_code), product_code);

				svc.addViewCount(product_code);
				Product product = svc.getProduct(product_code);
				List<Product_attach> att = svc.getAttByCode(product_code);
				List<Product_size> size = dao.serachSizeByCode(product_code);
				model.addAttribute("size", size);
				model.addAttribute("att", att);
				model.addAttribute("product", product);
				addCurrent(firstProduct, product);
				return "/product/detail_view";
			}
		} catch (Exception e) {
			System.out.println("생성되어있지 않은 세션의 값을 검증하는 부분에서 발생하는에러");
			return "/product/detail_view";
		}
	}
	@PostMapping("/files/add")
	@ResponseBody
	public String add(@RequestParam("files") MultipartFile[] mfiles, HttpServletRequest request,
			Product pro) {
		ServletContext context = request.getServletContext();
		//상대경로로 이미 다른 파일들이 많이 지정되어있어서 물리적으로 상대경로를 뜯어 고침.
		String rPath = context.getRealPath("");
		String fileSavePath = rPath.substring(0,rPath.length()-7)+"/resources/static/img/"+pro.getName()+"/";
		
		//properties파일에 지정한 상대경로를 불러오는 코드.
		//String fileSavePath = context.getRealPath("/resources/static/img/"+pro.getName()+"/");
		String savePath ="resources/img/"+pro.getName()+"/";
		try {
			//프로덕트 객체 생성.
			Product product = new Product();
			product.setName(pro.getName());
			product.setMade(pro.getMade());
			product.setMaterial(pro.getMaterial());
			product.setColor(pro.getColor());
			System.out.println(pro.getGender());
			product.setGender(pro.getGender());
			product.setCategory(pro.getCategory());
			product.setPrice(pro.getPrice());
			product.setDiscount(pro.getDiscount());
			
			
			if(pro.getOnlineonly().contentEquals("예")) {
				product.setOnlineonly("yes");
			}else {
				product.setOnlineonly("no");
			}
			
			if(pro.getVegan().contentEquals("예")) {
				product.setVegan("yes");
			}else {
				product.setVegan("no");
			}
			
			
			
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
		String rPath = context.getRealPath("");
		String fileSavePath = rPath.substring(0,rPath.length()-7)+"/resources/static/img/"+pro.getName()+"/";
		
		//properties파일에 지정한 상대경로를 불러오는 코드.
		//String fileSavePath = context.getRealPath("/resources/static/img/"+pro.getName()+"/");
		String savePath ="resources/img/"+pro.getName()+"/";
		int code = pro.getProduct_code();
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
		 
		
		return "{\"added\":" + added + "}";
	}
	@PostMapping("/files/searchName")
	public String searchLikeName( HttpServletRequest request,
			@RequestParam(name = "search_text")String pName,Model model) {
		//서비스로 짬때리기
		List<Product> likeNameList = svc.searchLikeName(pName);
		//유사이름으로 검색된 List정보를 view페이지로 전송
		model.addAttribute("searchKey",pName);
		model.addAttribute("list", likeNameList);
		
		
		return "/product/listView";
	}
	
	@GetMapping("/category/{cate}")
	public String categorySearch(Model model,@PathVariable(name = "cate")String key) {
		
		PageInfo<Product> productList = new PageInfo<Product>(svc.categorySearch(key));
		model.addAttribute("product", productList);
		return "/product/product_view";
	} 
	@GetMapping("/gender/category/{gender}/{cate}")
	public String genderSearch(Model model,@PathVariable(name = "cate")String category
			,@PathVariable(name = "gender")String gender) {
		
		PageInfo<Product> productList = new PageInfo<Product>(svc.genderSearch(gender,category));
		model.addAttribute("product", productList);
		return "/product/product_view";
	} 
	@GetMapping("/category/{category}/{discount}")
	public String categoryAndDiscount(Model model,@PathVariable(name = "category")String category
			,@PathVariable(name = "discount")Integer discount) {
		
		PageInfo<Product> productList = new PageInfo<Product>(svc.duelCategorySearch(category,discount));
		model.addAttribute("product", productList);
		return "/product/product_view";
	} 
	@GetMapping("/best")
	public String bestTop3(Model model) {
		
		PageInfo<Product> productList = new PageInfo<Product>(svc.bestSearch());
		model.addAttribute("product", productList);
		return "/product/product_view";
	} 
	 
	@PostMapping("/erase")
	@ResponseBody
	public String delete(Product pro) throws Exception {
		boolean del = svc.delete(pro);
		
		return "{\"added\":" + del + "}";
	}
	 
	@PostMapping("/sell")  
	@ResponseBody
	public String sell(Product pro
			,@RequestParam(name = "sellCount", required = false, defaultValue = "1") int sellCount
			,@RequestParam(name = "product_size")int product_size) throws Exception {
		System.out.println("");
		boolean res = svc.sell(pro,sellCount,product_size);
		System.out.println(res);
		return "{\"added\":" + res + "}";
	}
	@PostMapping("/cartAdd")  
	@ResponseBody
	//장바니에 담기를 위한 메소드 장바구니가 어떤형식으로 진행되는지 파악 후 작업 가능.
	public String cartAdd(Model model,Product pro
			,@RequestParam("number")int count
			,@RequestParam("sized")int size)throws Exception {
		String imgPath = "resources/img/"+pro.getName()+"/"+pro.getName()+"_main.png";
		
		int price = pro.getPrice();
		int product_code = pro.getProduct_code();
		String name = pro.getName();
		
		//boolean temp = 장바구니쪽 db 추가.
		boolean temp = true;
		return "{\"added\":" + temp + "}";
	}
	
	
	
	// 최근 본 상품 페이지
	private void addCurrent(List<Product> firstProduct, Product product) {

		if (firstProduct == null) {
			System.out.println("아무것도 안해두댐");
		} else {

			int productDot = firstProduct.indexOf(product);
			if (productDot == -1) {
				firstProduct.add(product);
			} else {
				firstProduct.remove(productDot);
				firstProduct.add(product);
			}

		}
	}
} 



