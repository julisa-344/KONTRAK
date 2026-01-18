package com.autorent.main.model;

import jakarta.persistence.*;
import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

import java.time.LocalDate;

@Data
@Entity
@Table(name = "vehiculo")
public class Vehiculo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idveh")
    Integer id;

    @Column(name = "plaveh")
    String placa;

    @Column(name = "marveh")
    String marca;

    @Column(name = "modveh")
    String modelo;

    @Column(name = "anioveh")
    Integer anio;

    // Categoría de maquinaria (Excavación, Mezcla, Compactación, Perforación, Elevación)
    @Column(name = "categoria")
    String categoria;

    // Potencia en HP (caballos de fuerza)
    @Column(name = "potencia")
    Double potencia;

    // Capacidad o tonelaje según el tipo de máquina
    @Column(name = "capacidad")
    String capacidad;

    // Dimensiones en metros (ejemplo: "2.5 x 1.8 x 2.0")
    @Column(name = "dimensiones")
    String dimensiones;

    // Peso en toneladas
    @Column(name = "peso")
    Double peso;

    // Accesorios incluidos
    @Column(name = "accesorios", length = 500)
    String accesorios;

    // Requiere certificación especial para operar
    @Column(name = "requiere_certificacion")
    Boolean requiereCertificacion;

    // Horas de uso (equivalente a kilometraje)
    @Column(name = "horas_uso")
    Double horasUso;

    @Column(name = "precioalquilo")
    Double precioalquilo;

    @Enumerated(EnumType.STRING)
    @Column(name = "estveh")
    private EstadoVehiculo estveh;

    @Column(name = "fecharegistro")
    LocalDate fecharegistro;

    @Column(name = "fotoveh")
    String foto;

    @Transient
    private MultipartFile archivoFoto;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "idprop")
    private Usuario usuario;
}
