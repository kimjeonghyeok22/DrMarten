package com.ezen.drmarten.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ezen.drmarten.model.Product;
import com.ezen.drmarten.model.Product_attach;
import com.ezen.drmarten.model.Product_size;


@Mapper
public interface ProductMapper {

	List<Product> getList();

	int add_upload(Product product);

	int add_attach(Product_attach attach);
	
	//이미 생성된 제품에 사진만 추가
	int add_attach2(Product_attach attach);
	
	//제품명으로 제품코드 가져오기
	int getCodeByName(String name);

	int addStock(List<Product_size> list);

	List<Product> searchLikeName(String name);

	List<Product_attach> searchAttachByCode(int product_code);

	List<Product_size> serachSizeByCode(int product_code);

	List<Product> categorySearch(String category);

	int deleteAtt(int code);

	int deleteSize(int code);

	int deleteProduct(int code);
}
