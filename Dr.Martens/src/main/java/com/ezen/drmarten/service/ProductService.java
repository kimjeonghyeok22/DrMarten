package com.ezen.drmarten.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ezen.drmarten.mappers.ProductMapper;
import com.ezen.drmarten.model.Product;
import com.ezen.drmarten.model.Product_attach;
import com.ezen.drmarten.model.Product_size;

@Service
public class ProductService {

	@Autowired
	private ProductMapper dao;
	
	
	public boolean insert(Product product) {
		
		return false;
	}


	public boolean add_stock(Product pro) {
		int code = dao.getCodeByName(pro.getName(),pro.getColor());
		//List<Product_size> 를 전송하기 위한 키 code을 리스트에 삽입
		for(int i=0; i < pro.getSize().size();i++) {
			pro.getSize().get(i).setProduct_code(code);
		}
		//리스트 전송을 위한 변수 생성
		List<Product_size> sizeList = pro.getSize();
		
		//저장된 list값으로 DB저장
		System.out.println("재고 추가 성공");
		return dao.addStock(sizeList)==sizeList.size();
	}


	public List<Product> searchLikeName(String pName) {
		//DB에서 유사이름 검색에 대한 상품의 정보를 호출.
		pName=pName.toUpperCase();
		List<Product> list = dao.searchLikeName(pName);
		//사진 정보 불러오기
		List<Product_attach> attList;
		List<Product_size> sizeList;
		for(int i =0;i<list.size();i++) {
			//list 로 불러온 값 중 code를 이용해 AttList 를 생성
			attList = dao.searchAttachByCode(list.get(i).getProduct_code());
			//마찬가지로 code를 이용해 SizeList를 생성
			sizeList = dao.serachSizeByCode(list.get(i).getProduct_code());
			//list에 해당 객체들을 추가.
			list.get(i).setAttach(attList);
			list.get(i).setSize(sizeList);
		}
		return list;
	}


	public List<Product> getList() {
		List<Product> list = dao.getList();
		List<Product_attach> attList;
		List<Product_size> sizeList;
		for(int i =0;i<list.size();i++) {
			//list 로 불러온 값 중 code를 이용해 AttList 를 생성
			attList = dao.searchAttachByCode(list.get(i).getProduct_code());
			//마찬가지로 code를 이용해 SizeList를 생성
			sizeList = dao.serachSizeByCode(list.get(i).getProduct_code());
			//list에 해당 객체들을 추가.
			list.get(i).setAttach(attList);
			list.get(i).setSize(sizeList);
		}
		return list;
	}


	public List<Product> categorySearch(String search) {
		//카테고리 검색 조건에 맞는 list를 검색해옴.
		List<Product> list = dao.categorySearch(search);
		//검색된 list의 세부사항을 불러옴.
		List<Product_attach> attList;
		List<Product_size> sizeList;
		for(int i =0;i<list.size();i++) {
			//list 로 불러온 값 중 code를 이용해 AttList 를 생성
			attList = dao.searchAttachByCode(list.get(i).getProduct_code());
			//마찬가지로 code를 이용해 SizeList를 생성
			sizeList = dao.serachSizeByCode(list.get(i).getProduct_code());
			//list에 해당 객체들을 추가.
			list.get(i).setAttach(attList);
			list.get(i).setSize(sizeList); 
		}
		return list;
	}
	public List<Product> duelCategorySearch(String category, Integer discount) {
		List<Product> list = dao.duelCategorySearch(category,discount);
		List<Product_attach> attList;
		List<Product_size> sizeList;
		for(int i =0;i<list.size();i++) {
			//list 로 불러온 값 중 code를 이용해 AttList 를 생성
			attList = dao.searchAttachByCode(list.get(i).getProduct_code());
			//마찬가지로 code를 이용해 SizeList를 생성
			sizeList = dao.serachSizeByCode(list.get(i).getProduct_code());
			//list에 해당 객체들을 추가.
			list.get(i).setAttach(attList);
			list.get(i).setSize(sizeList); 
		}
		return list;
	}
	public List<Product> bestSearch() {
		List<Product> list = dao.bestSearch();
		List<Product_attach> attList;
		List<Product_size> sizeList;
		for(int i =0;i<list.size();i++) {
			//list 로 불러온 값 중 code를 이용해 AttList 를 생성
			attList = dao.searchAttachByCode(list.get(i).getProduct_code());
			//마찬가지로 code를 이용해 SizeList를 생성
			sizeList = dao.serachSizeByCode(list.get(i).getProduct_code());
			//list에 해당 객체들을 추가.
			list.get(i).setAttach(attList);
			list.get(i).setSize(sizeList); 
		}
		return list;
	}

	@Transactional(rollbackFor = {Exception.class})
	public boolean delete(Product pro) throws Exception {
		int code = pro.getProduct_code();
		boolean delAtt = dao.deleteAtt(code)>0;
		if(!delAtt){throw new Exception("첨부파일 삭제하다 발생한 오류");}
		boolean delSize = dao.deleteSize(code)>0;
		if(!delSize){throw new Exception("사이즈 및 재고 삭제하다 발생한 오류");}
		boolean delProduct = dao.deleteProduct(code)>0;
		if(!delProduct){throw new Exception("제품 삭제하다 발생한 오류");}
		
		return delAtt&delSize&delProduct==true;
	}


	public boolean sell(Product pro,Integer sellCount,Integer size) {
		//이름을 입력 받아야 함.
		Integer code = pro.getProduct_code();
		boolean sellPoduct = dao.sellProduct(code,sellCount,size)>0;
		return sellPoduct;
	}


	public Product getProduct(int product_code) {
		Product product = new Product();
		product = dao.getProductByCode(product_code);
		return product;
	}


	public boolean addViewCount(int product_code) {
		return dao.addViewCount(product_code)>0;
	}


	public List<Product_attach> getAttByCode(int product_code) {
		
		return dao.searchAttachByCode(product_code);
	}


	


	
	
}
