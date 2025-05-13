package com.akshay.fullstack_backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import com.akshay.fullstack_backend.exception.UserNotFoundException;
import com.akshay.fullstack_backend.model.User;
import com.akshay.fullstack_backend.repository.UserRepository;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;




@RestController
@CrossOrigin(origins = {"http://localhost:3000"})
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

  @GetMapping("/user/{id}")
  public User getUserById(@PathVariable Long id) {
      return userRepository.findById(id).orElseThrow(()->new UserNotFoundException(id));
  }

  @DeleteMapping("user/{id}")
  public String updateUser(@PathVariable Long id) {
        if(!userRepository.existsById(id)){
            throw new UserNotFoundException(id);
        }
        userRepository.deleteById(id);

        return "User with id"+id+" has been deleted";
        }

  @PutMapping("user/{id}")
  public User updateUser(@RequestBody User newUser, @PathVariable Long id) {
      return userRepository.findById(id).map(user -> {
        user.setUsername(newUser.getUsername());
        user.setEmail(newUser.getEmail());
        user.setName(newUser.getName());
        return userRepository.save(user);
      }).orElseThrow(()->new UserNotFoundException(id));
  
    }
}
