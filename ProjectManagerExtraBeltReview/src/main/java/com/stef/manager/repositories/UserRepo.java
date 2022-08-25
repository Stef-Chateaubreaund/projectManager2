package com.stef.manager.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.stef.manager.models.Project;
import com.stef.manager.models.User;

@Repository
public interface UserRepo extends CrudRepository<User, Long> {
	List<User> findAll();
	Optional<User> findByEmail(String email);
	User findByIdIs(Long id);
	List<User> findAllByProjects(Project project);
	List<User> findByProjectsNotContains(Project project);
}
