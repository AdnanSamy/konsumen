package com.customer.system.customersystem.service;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.client.ResourceAccessException;

import com.customer.system.customersystem.model.Customer;
import com.customer.system.customersystem.repository.CustomerRepository;

@Service
public class CustomerService {
    private CustomerRepository customerRepository;

    public CustomerService(CustomerRepository customerRepository) {
        this.customerRepository = customerRepository;
    }

    public List<Customer> getAll() {

        List<Customer> customers = customerRepository.findAll();

        return customers;
    }

    public Customer getOne(Long id) {
        Customer customer = customerRepository.findById(id)
                .orElseThrow(() -> new ResourceAccessException("Customer not Found.."));

        return customer;
    }

    public void update(Customer customer) {
        Customer customerUpdate = customerRepository.findById(customer.getId())
                .orElseThrow(() -> new ResourceAccessException("Customer not Found.."));

        customerUpdate.setAlamat(customer.getAlamat());
        customerUpdate.setKota(customer.getKota());
        customerUpdate.setNama(customer.getNama());
        customerUpdate.setProvinsi(customer.getProvinsi());
        customerUpdate.setStatus(customer.getStatus());
        
        customerRepository.save(customerUpdate);
    }

    public void insert(Customer customer){
        Customer insertCustomer = new Customer();

        insertCustomer.setAlamat(customer.getAlamat());
        insertCustomer.setKota(customer.getKota());
        insertCustomer.setNama(customer.getNama());
        insertCustomer.setProvinsi(customer.getProvinsi());
        insertCustomer.setStatus(customer.getStatus());
        insertCustomer.setTglRegistrasi(LocalDateTime.now());

        customerRepository.save(insertCustomer);
    }

    public void delete(Long id){

        customerRepository.deleteById(id);
    }
}
