package com.ibps.demo.web;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ibps.demo.User;

@Controller
public class HelloController {
	
	User user;
	
	@RequestMapping(value= "/hello/{id}",method=RequestMethod.GET)
	
	public ModelAndView hello(@PathVariable Integer id,Model model,User user1){
		
		System.out.println("i was here");
		ModelAndView md= new ModelAndView();
		md.setViewName("users/hello");
		
		user1=user.findUser(id);
		//System.out.println("username"+user1.getUsername());
		//List<User> users=user.findAllUsers();
		model.addAttribute("users", user1);
		//md.addObject("users", users);
		//md.addObject("users", user1);
		return md;
		
	}
	@RequestMapping("/hellos/{id}")
	@ResponseBody
	public ModelAndView getUser(@PathVariable Integer id,Model model,User user1){
		
		System.out.println("i was heresdsd");
		ModelAndView md= new ModelAndView();
		md.setViewName("users/hello");
		
		user1=user.findUser(id);
		
		model.addAttribute("users", user1);
		//md.addObject("users", users);
		return md;
		
	}

}
