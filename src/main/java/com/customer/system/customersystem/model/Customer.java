package com.customer.system.customersystem.model;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "customer")
public class Customer {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    private String nama;
    
    @Column(columnDefinition = "text")
    private String alamat;

    @Column(columnDefinition = "char(50)")
    private String kota;
    
    @Column(columnDefinition = "char(50)")
    private String provinsi;
    
    @Column(name = "tgl_registrasi")
    private LocalDateTime tglRegistrasi;
    
    private String status;
}
