package kr.zalbazo.service;

import java.math.BigDecimal;
import java.util.List;

import kr.zalbazo.model.content.Animal;
import kr.zalbazo.model.content.Content;


public interface AnimalService {
	
    void register(Animal animal);
    Animal get(Long animalId);
    boolean modify(Animal animal);
    boolean remove(Long animalId);
    //List<Content> getList(Long categoryId);
    List<Animal> getList();
}
