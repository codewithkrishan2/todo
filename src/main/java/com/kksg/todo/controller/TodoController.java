package com.kksg.todo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kksg.todo.entites.Todo;
import com.kksg.todo.service.TodoService;

import jakarta.validation.Valid;

@Controller
public class TodoController {

	@Autowired
	private TodoService todoService;
	
	
	//Welcome Page
	@GetMapping
	public String welcome(Model model) {
		
		List<Todo> allTodos = todoService.getAllTodos();
		model.addAttribute("todos", allTodos);
		return "index";
	}
	
	
	//Display Add page
	@GetMapping("/add")
	public String displayAdd() {
		return "addtodo";
	}
	
	//Add a new todo
	
	@PostMapping("/add")
	public ModelAndView addNewTodo(@Valid Todo todo, BindingResult result) {

		Todo addedTodo = todoService.add(todo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("todoos", addedTodo);
		mv.setViewName("redirect:/");
		return mv;
	}
	
	//Delete a todo
	@GetMapping("/delete")
	public ModelAndView deleteTodo(@RequestParam Integer id) {

		todoService.delete(id);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/");
		return mv;
	}
	
	//show update a todo page
	
	@GetMapping("/update")
	public String updateTodo(@RequestParam Integer id, Model model) {
		
		Todo todo = todoService.getById(id);
		model.addAttribute("todo", todo);
		return "update";
	}
	
	//Update a todo
	@PostMapping("/update")
	public ModelAndView updateTodo(@Valid Todo todo, BindingResult result) {
		
		Todo updatedTodo = todoService.update(todo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("todo", updatedTodo);
		mv.setViewName("redirect:/");
		return mv;
	}
}
