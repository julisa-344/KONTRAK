-- ============================================
-- DATOS DE EJEMPLO - KONTRAK (PostgreSQL)
-- Sistema de Alquiler de Maquinaria de Construcción
-- ============================================

-- PASO 1: Crear usuario administrador (password: admin123)
INSERT INTO usuario (nomprop, apeprop, dniprop, emailprop, password, rol, estprop) 
VALUES ('Miguel', 'Administrador', '87654321', 'admin@kontrak.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhCy', 'propietario', true)
ON CONFLICT (emailprop) DO NOTHING;

-- PASO 2: Crear usuario contratista de prueba (password: admin123)
INSERT INTO usuario (nomprop, apeprop, dniprop, emailprop, password, rol, estprop) 
VALUES ('Juan', 'Pérez', '12345678', 'juan@test.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhCy', 'cliente', true)
ON CONFLICT (emailprop) DO NOTHING;

-- PASO 3: Insertar las 5 maquinarias
-- Nota: idprop debe coincidir con el ID del administrador (asumimos que es 1)

INSERT INTO vehiculo (plaveh, marveh, modveh, anioveh, categoria, potencia, capacidad, dimensiones, peso, accesorios, requiere_certificacion, horas_uso, precioalquilo, estveh, fecharegistro, idprop) 
VALUES ('EXC-001', 'Caterpillar', '320', 2022, 'Excavación', 120.0, '1.2 m³', '9.5 x 2.8 x 3.2', 20.5, 'Martillo hidráulico, cucharón estándar, cucharón trapecio', true, 1250.0, 800.00, 'DISPONIBLE', '2026-01-15', 1)
ON CONFLICT (plaveh) DO NOTHING;

INSERT INTO vehiculo (plaveh, marveh, modveh, anioveh, categoria, potencia, capacidad, dimensiones, peso, accesorios, requiere_certificacion, horas_uso, precioalquilo, estveh, fecharegistro, idprop) 
VALUES ('MEZ-002', 'Honda', 'CM-350', 2023, 'Mezcla', 5.5, '350 litros', '1.8 x 1.2 x 1.5', 0.18, 'Ruedas reforzadas, paleta mezcladora extra, protector motor', false, 450.0, 180.00, 'DISPONIBLE', '2026-01-10', 1)
ON CONFLICT (plaveh) DO NOTHING;

INSERT INTO vehiculo (plaveh, marveh, modveh, anioveh, categoria, potencia, capacidad, dimensiones, peso, accesorios, requiere_certificacion, horas_uso, precioalquilo, estveh, fecharegistro, idprop) 
VALUES ('COM-003', 'Wacker Neuson', 'BPU 4045A', 2023, 'Compactación', 5.0, '85 kg', '0.8 x 0.5 x 1.0', 0.085, 'Placa vibratoria 450mm, tanque agua integrado', false, 320.0, 180.00, 'DISPONIBLE', '2026-01-12', 1)
ON CONFLICT (plaveh) DO NOTHING;

INSERT INTO vehiculo (plaveh, marveh, modveh, anioveh, categoria, potencia, capacidad, dimensiones, peso, accesorios, requiere_certificacion, horas_uso, precioalquilo, estveh, fecharegistro, idprop) 
VALUES ('MAR-004', 'Bosch', 'GSH 27 VC', 2024, 'Perforación', 2.0, '68 julios', '0.7 x 0.3 x 0.3', 0.032, 'Puntas cincel plano, punta cincel pico, maletín transporte', false, 180.0, 120.00, 'DISPONIBLE', '2026-01-08', 1)
ON CONFLICT (plaveh) DO NOTHING;

INSERT INTO vehiculo (plaveh, marveh, modveh, anioveh, categoria, potencia, capacidad, dimensiones, peso, accesorios, requiere_certificacion, horas_uso, precioalquilo, estveh, fecharegistro, idprop) 
VALUES ('ELE-005', 'Genie', 'GS-2646', 2023, 'Elevación', 24.0, '227 kg', '2.0 x 0.8 x 8.1', 1.2, 'Barandas de seguridad, bandeja herramientas, ruedas no marcantes', true, 850.0, 450.00, 'DISPONIBLE', '2026-01-05', 1)
ON CONFLICT (plaveh) DO NOTHING;
