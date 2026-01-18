-- ============================================
-- DATOS DE EJEMPLO - KONTRAK
-- Sistema de Alquiler de Maquinaria de Construcción
-- ============================================

-- 1. EXCAVADORA CATERPILLAR 320
INSERT INTO vehiculo (plaveh, marveh, modveh, anioveh, categoria, potencia, capacidad, dimensiones, peso, accesorios, requiere_certificacion, horas_uso, precioalquilo, estveh, fecharegistro)
VALUES (
    'EXC-001',
    'Caterpillar',
    '320',
    2022,
    'Excavación',
    120.0,
    '1.2 m³',
    '9.5 x 2.8 x 3.2',
    20.5,
    'Martillo hidráulico, cucharón estándar, cucharón trapecio',
    true,
    1250.0,
    800.00,
    'DISPONIBLE',
    '2026-01-15'
);

-- 2. MEZCLADORA DE CONCRETO HONDA
INSERT INTO vehiculo (plaveh, marveh, modveh, anioveh, categoria, potencia, capacidad, dimensiones, peso, accesorios, requiere_certificacion, horas_uso, precioalquilo, estveh, fecharegistro)
VALUES (
    'MEZ-002',
    'Honda',
    'CM-350',
    2023,
    'Mezcla',
    5.5,
    '350 litros',
    '1.8 x 1.2 x 1.5',
    0.18,
    'Ruedas reforzadas, paleta mezcladora extra, protector motor',
    false,
    450.0,
    180.00,
    'DISPONIBLE',
    '2026-01-10'
);

-- 3. COMPACTADORA WACKER NEUSON
INSERT INTO vehiculo (plaveh, marveh, modveh, anioveh, categoria, potencia, capacidad, dimensiones, peso, accesorios, requiere_certificacion, horas_uso, precioalquilo, estveh, fecharegistro)
VALUES (
    'COM-003',
    'Wacker Neuson',
    'BPU 4045A',
    2023,
    'Compactación',
    5.0,
    '85 kg',
    '0.8 x 0.5 x 1.0',
    0.085,
    'Placa vibratoria 450mm, tanque agua integrado',
    false,
    320.0,
    180.00,
    'DISPONIBLE',
    '2026-01-12'
);

-- 4. MARTILLO DEMOLEDOR BOSCH
INSERT INTO vehiculo (plaveh, marveh, modveh, anioveh, categoria, potencia, capacidad, dimensiones, peso, accesorios, requiere_certificacion, horas_uso, precioalquilo, estveh, fecharegistro)
VALUES (
    'MAR-004',
    'Bosch',
    'GSH 27 VC',
    2024,
    'Perforación',
    2.0,
    '68 julios',
    '0.7 x 0.3 x 0.3',
    0.032,
    'Puntas cincel plano, punta cincel pico, maletín transporte',
    false,
    180.0,
    120.00,
    'DISPONIBLE',
    '2026-01-08'
);

-- 5. PLATAFORMA ELEVADORA TIJERA GENIE
INSERT INTO vehiculo (plaveh, marveh, modveh, anioveh, categoria, potencia, capacidad, dimensiones, peso, accesorios, requiere_certificacion, horas_uso, precioalquilo, estveh, fecharegistro)
VALUES (
    'ELE-005',
    'Genie',
    'GS-2646',
    2023,
    'Elevación',
    24.0,
    '227 kg',
    '2.0 x 0.8 x 8.1',
    1.2,
    'Barandas de seguridad, bandeja herramientas, ruedas no marcantes',
    true,
    850.0,
    450.00,
    'DISPONIBLE',
    '2026-01-05'
);
