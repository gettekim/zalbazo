package kr.zalbazo.mapper.main;

import java.util.List;
import java.util.Map;

import kr.zalbazo.model.content.Hospital;

public interface MainMapper {

	List<Hospital> listAll(Map map);
	List<Hospital> list();
	
}
