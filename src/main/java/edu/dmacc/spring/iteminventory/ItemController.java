package edu.dmacc.spring.iteminventory;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class ItemController {
	@Autowired ItemDao dao;

	@RequestMapping(value="/form")
	public ModelAndView item() {
		ModelAndView modelAndView = new ModelAndView();

		modelAndView.setViewName("itemForm");
		modelAndView.addObject("item",new Item());

		return modelAndView;
	}
	@RequestMapping(value = "/result")
	public ModelAndView processItem(Item item) {
		ModelAndView modelAndView = new ModelAndView();
		dao.insertItem(item);
		modelAndView.setViewName("itemResult");
		modelAndView.addObject("i",item);
		return modelAndView;
	}
	@RequestMapping(value = "/viewAll")
	public ModelAndView viewAll() {
		ModelAndView modelAndView = new ModelAndView();
		List<Item> allItems = dao.getAllItems();
		modelAndView.setViewName("viewAllItems");
		modelAndView.addObject("all",allItems);
		return modelAndView;
	}
	@Bean
	public ItemDao dao() {
		ItemDao bean = new ItemDao();
		return bean;
	}
}