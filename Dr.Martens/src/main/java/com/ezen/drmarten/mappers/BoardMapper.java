package com.ezen.drmarten.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ezen.drmarten.model.Board;


@Mapper
public interface BoardMapper {

	int saveNotice(Board board);
	int saveQA(Board board);
	int saveReview(Board board);
	int saveMyQna(Board board);
	List<Board> getNoticeList();
	List<Board> getLatestNotice();
	List<Board> getQnaList();
	List<Board> getReviewList();
	List<Board> getMyQnaList();
	List<Board> getQnaListByCategory(String category);
	List<Board> searchQnaList(String search);
	Board getReview(int num);
	Board getMyQna(int num);
	Board getNotice(int num);
	int deleteMyQna(int num);
	int deleteNotice(int num);
	int deleteQa(int num);
	int deleteReview(int num);
	int updateNotice(Board board);
	Board getQa(int num);
	int updateQa(Board board);
	int updateMyQna(Board board);
	int noticeView(int num);
	int qaView(int num);
	List<Board> getProductReview(int product_code);
	List<Board> getMyQnaForProduct(int product_code);
	List<Board> getMyQna2(String email);
	List<Board> getMyQnaRP(String email);
	
}
