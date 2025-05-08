package com.akshay.fullstack_backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import com.akshay.fullstack_backend.model.User;
import com.akshay.fullstack_backend.repository.UserRepository;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;



@RestController
public class UserController {

  @Autowired
  private UserRepository userRepository;

  @GetMapping("/health")
  public String healthCheck() {
      return "OK";
  }
  

  @PostMapping("/user")
  User newUser(@RequestBody User newUser) {
      //TODO: process POST request
      
      return userRepository.save(newUser);
  }

  @GetMapping("/users")
  List<User> getAllUsers() {
      return userRepository.findAll();
  }
  
  
}
