package kr.zalbazo.controller.mypage;

import java.math.BigDecimal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.zalbazo.model.content.Animal;
import kr.zalbazo.service.AnimalService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping({"/mypage"})
public class AnimalController {


    @Autowired
    private AnimalService service;

    @PostMapping("/register")
    public String register(Animal animal){
      
        service.register(animal);
        
       
        
        return "redirect:/mypage/list";
    }
    @GetMapping("/register")
    public String register(){
    	
    
    	return "mypage/animal/register";
    }

    @RequestMapping("/list")
    public String list(Model model, Animal animal){


    	model.addAttribute("AnimalList", service.getList());
    	
    	return "mypage/animal/list";
    }


    @GetMapping("/modify")
    public String modify(@RequestParam("id") Long animalId, Model model,Animal animal){
        
    	
    	model.addAttribute("animal",service.get(animalId));
    	System.out.println(animalId);
    	return "mypage/animal/modify";
    	
    }

    @PostMapping("/modify")
    public String modify(Animal animal,RedirectAttributes rttr){

       service.modify(animal);
       rttr.addFlashAttribute("result", "success");
       
        return "redirect:/mypage/list";
    }

    @RequestMapping("/remove")
    public String remove(@RequestParam("id") Long animalId, RedirectAttributes rttr,Animal animal){
    	
        service.remove(animalId);
        rttr.addFlashAttribute("result", "success");
       
        return "redirect:/mypage/list";
    }
}