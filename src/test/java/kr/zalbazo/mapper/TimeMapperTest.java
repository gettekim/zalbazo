package kr.zalbazo.mapper;

import lombok.extern.log4j.Log4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/root-context.xml")
@Log4j
public class TimeMapperTest {

    @Autowired
    private TimeMapper timeMapper;
    @Test
    public void timeMapperTest(){
        log.info(timeMapper.getTime());
        log.info(timeMapper.getTime2());
    }

}