package kr.zalbazo.service;

import java.util.List;

import kr.zalbazo.model.content.Hospital;

public interface MainService {

	// 05. 게시글 전체 목록 ==> 검색옵션, 키워드 매개변수 추가
	public List<Hospital> listAll(String searchOption, String keyword) throws Exception;
	public List<Hospital> list() throws Exception;
	
	
//	// 07. 게시글 레코드 갯수 메서드 추가
//	public int countArticle(String searchOption, String keyword) throws Exception;
}
