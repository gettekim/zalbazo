package kr.zalbazo.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.zalbazo.mapper.content.ContentMapper;
import kr.zalbazo.mapper.main.MainMapper;
import kr.zalbazo.model.content.Hospital;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class MainServiceImpl implements MainService {

	 @Autowired
	    private MainMapper mapper;
	@Override
	public List<Hospital> listAll(String searchOption, String keyword) throws Exception {
		 Map<String, String> map = new HashMap<String, String>();
		    map.put("searchOption", searchOption);
		    map.put("keyword", keyword);
		
	    return mapper.listAll(map);
	}
	@Override
	public List<Hospital> list() throws Exception {
		// TODO Auto-generated method stub
		return mapper.list();
	}
	 
//	@Override
//	public int countArticle(String searchOption, String keyword) throws Exception {
//	    return boardDao.countArticle(searchOption, keyword);
//	}


}
