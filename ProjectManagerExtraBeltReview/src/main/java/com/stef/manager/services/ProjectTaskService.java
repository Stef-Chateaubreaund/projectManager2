package com.stef.manager.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.stef.manager.models.Task;
import com.stef.manager.repositories.TaskRepo;

@Service
public class ProjectTaskService {
	private final TaskRepo taskRepo;
	
	public ProjectTaskService(TaskRepo taskRepo) {
		this.taskRepo = taskRepo;
	}
	
	public List<Task> allTasks(){
		return taskRepo.findAll();
	}
	
	public List<Task> projectTasks(Long projectId){
		return taskRepo.findByProjectIdIs(projectId);
	}
	
	public Task addTask(Task task) {
		return taskRepo.save(task);
	}
	
	public void deleteTask(Task task) {
		taskRepo.delete(task);
	}
}