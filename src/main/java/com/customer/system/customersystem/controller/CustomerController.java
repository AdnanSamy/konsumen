package com.customer.system.customersystem.controller;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.customer.system.customersystem.dto.MessageResponse;
import com.customer.system.customersystem.model.Customer;
import com.customer.system.customersystem.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    private CustomerService customerService;

    public CustomerController(CustomerService customerService) {
        this.customerService = customerService;
    }

    @GetMapping
    public String index(){
        return "main";
    }

    @GetMapping("/api")
    @ResponseBody
    public List<Customer> getAll(){
        List<Customer> customers = customerService.getAll();

        return customers;
    }

    @GetMapping("/api/{id}")
    @ResponseBody
    public Customer getOne(@PathVariable Long id){
        Customer customers = customerService.getOne(id);

        return customers;
    }

    @PostMapping("/api")
    @ResponseBody
    public ResponseEntity<?> insert(@RequestBody Customer customer){

        customerService.insert(customer);
        return ResponseEntity.ok(new MessageResponse("success"));
    }

    @PutMapping("/api")
    @ResponseBody
    public ResponseEntity<?> update(@RequestBody Customer customer){
        customerService.update(customer);

        return ResponseEntity.ok(new MessageResponse("success"));
    }

    @DeleteMapping("/api/{id}")
    @ResponseBody
    public ResponseEntity<?> delete(@PathVariable Long id){
        customerService.delete(id);

        return ResponseEntity.ok(new MessageResponse("success"));
    }
}
