package com.kksg.todo.service;

import java.util.List;

import com.kksg.todo.entites.Todo;

public interface TodoService {

	public Todo add(Todo todo);
	
	public Todo update(Todo todo);
	
	public void delete(int id);
	
	public Todo getById(int id);
	
	public List<Todo> getAllTodos();
	
	public List<Todo> getByTitle(String title);
	
	public List<Todo> getByIsDone(boolean isDone);
	
	
}
