package com.kksg.todo.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kksg.todo.entites.Todo;

public interface TodoRepo extends JpaRepository<Todo, Integer> {

	List<Todo> findByTitle(String title);

	List<Todo> findByIsDone(boolean done);
}
