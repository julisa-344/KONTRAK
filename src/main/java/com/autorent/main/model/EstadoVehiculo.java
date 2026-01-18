package com.autorent.main.model;

public enum EstadoVehiculo {
    DISPONIBLE,         // Disponible para alquiler
    OCUPADO,            // En uso por un contratista (No visible)
    EN_MANTENIMIENTO,   // En mantenimiento o reparación (No visible)
    ELIMINADO           // Dado de baja (No visible)
}
