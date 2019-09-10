package kr.zalbazo.mapper.userpage;

import java.math.BigDecimal;
import java.util.List;

import kr.zalbazo.model.content.Animal;

public interface AnimalMapper {


    void insert(Animal animal);

    Animal read(Long animalId);

    List<Animal> getList();

    int delete(Long animalId);

    int update(Animal animal);    

}

