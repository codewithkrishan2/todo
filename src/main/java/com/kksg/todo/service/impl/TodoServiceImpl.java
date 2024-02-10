package com.kksg.todo.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kksg.todo.entites.Todo;
import com.kksg.todo.repo.TodoRepo;
import com.kksg.todo.service.TodoService;

@Service
public class TodoServiceImpl implements TodoService {

	@Autowired
	private TodoRepo todoRepo;
	
	
	// Add Todo
	@Override
	public Todo add(Todo todo) {
		todo.setTitle(todo.getTitle());
		todo.setAddedDate(new Date());
		todo.setDueDate(todo.getDueDate());
		todo.setIsDone(false);
		return todoRepo.save(todo);
	}

	@Override
	public Todo update(Todo todo) {
		Todo todo1 = todoRepo.findById(todo.getId()).orElseThrow(()-> new RuntimeException("Todo not found"));
		todo1.setTitle(todo.getTitle());
		todo1.setAddedDate(new Date());
		todo1.setDueDate(todo.getDueDate());
		todo1.setIsDone(todo.getIsDone());
		return todoRepo.save(todo1);		
	}

	@Override
	public void delete(int id) {
		todoRepo.deleteById(id);
	}

	@Override
	public Todo getById(int id) {
		return todoRepo.findById(id).orElseThrow(()-> new RuntimeException("Todo not found"));
	}

	@Override
	public List<Todo> getAllTodos() {
		return  todoRepo.findAll();
		
	}

	@Override
	public List<Todo> getByTitle(String title) {
		return todoRepo.findByTitle(title);
	}

	@Override
	public List<Todo> getByIsDone(boolean isDone) {
		return todoRepo.findByIsDone(isDone);
	}

}
