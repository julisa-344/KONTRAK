# Campos del Modelo de Maquinaria

## Estructura de la Entidad `Vehiculo` (Maquinaria)

### Campos Básicos (Mantenidos)
| Campo | Tipo | Descripción |
|-------|------|-------------|
| `id` | Integer | Identificador único |
| `placa` | String | Placa de identificación del equipo |
| `marca` | String | Marca de la maquinaria (Caterpillar, Komatsu, JCB, etc.) |
| `modelo` | String | Modelo específico |
| `anio` | Integer | Año de fabricación |
| `precioalquilo` | Double | Precio por día de alquiler (S/.) |
| `fecharegistro` | LocalDate | Fecha de alta en el sistema |
| `foto` | String | URL de la imagen en Cloudinary |
| `estveh` | EstadoVehiculo | Estado actual (DISPONIBLE, OCUPADO, EN_MANTENIMIENTO, ELIMINADO) |

### Campos Nuevos Específicos para Maquinaria

| Campo | Tipo | Descripción | Ejemplo |
|-------|------|-------------|---------|
| `categoria` | String | Tipo de trabajo para el que se usa | "Excavación", "Mezcla", "Compactación", "Perforación", "Elevación" |
| `potencia` | Double | Potencia del motor en HP (caballos de fuerza) | 85.5, 120.0, 45.0 |
| `capacidad` | String | Capacidad operativa según el tipo | "1.5 m³" (excavadora), "350 L" (mezcladora), "5 ton" (compactadora) |
| `dimensiones` | String | Dimensiones en metros (largo x ancho x alto) | "4.5 x 2.0 x 2.5" |
| `peso` | Double | Peso total en toneladas | 3.5, 1.2, 8.0 |
| `accesorios` | String (500) | Lista de accesorios incluidos | "Martillo hidráulico, cuchara estándar, gancho de remolque" |
| `requiereCertificacion` | Boolean | Indica si se necesita licencia especial | true/false |
| `horasUso` | Double | Horas totales de operación (equivalente a kilometraje) | 1500.5, 800.0 |

### Campos Removidos
❌ `color` - No relevante para maquinaria industrial  
❌ `kilometraje` - Reemplazado por `horasUso`

## Categorías de Maquinaria Disponibles

### 1️⃣ Excavación
- Miniexcavadoras
- Retroexcavadoras
- Excavadoras sobre orugas
- Zanjadoras

**Capacidad típica**: Volumen de cuchara (m³)

### 2️⃣ Mezcla
- Mezcladoras de concreto
- Revolvedoras
- Plantas dosificadoras

**Capacidad típica**: Litros o metros cúbicos

### 3️⃣ Compactación
- Compactadoras de suelo
- Rodillos vibratorios
- Apisonadoras
- Placas compactadoras

**Capacidad típica**: Tonelaje o fuerza de compactación

### 4️⃣ Perforación
- Taladros percutores
- Martillos neumáticos
- Perforadoras de diamante

**Capacidad típica**: Diámetro máximo de perforación

### 5️⃣ Elevación
- Montacargas
- Plataformas elevadoras
- Grúas telescópicas
- Andamios motorizados

**Capacidad típica**: Toneladas de carga o altura máxima

## Ejemplos de Registros

### Ejemplo 1: Mezcladora de Concreto
```json
{
  "placa": "MEZ-001",
  "marca": "Hormix",
  "modelo": "HM-350",
  "anio": 2022,
  "categoria": "Mezcla",
  "potencia": 5.5,
  "capacidad": "350 L",
  "dimensiones": "1.8 x 1.2 x 1.5",
  "peso": 0.45,
  "accesorios": "Ruedas neumáticas, tolva basculante, rejilla protectora",
  "requiereCertificacion": false,
  "horasUso": 850.0,
  "precioalquilo": 80.00,
  "estveh": "DISPONIBLE"
}
```

### Ejemplo 2: Retroexcavadora
```json
{
  "placa": "EXC-045",
  "marca": "Caterpillar",
  "modelo": "416F",
  "anio": 2021,
  "categoria": "Excavación",
  "potencia": 92.0,
  "capacidad": "1.2 m³",
  "dimensiones": "7.2 x 2.4 x 3.8",
  "peso": 8.5,
  "accesorios": "Cuchara estándar, martillo hidráulico, estabilizadores",
  "requiereCertificacion": true,
  "horasUso": 2350.0,
  "precioalquilo": 450.00,
  "estveh": "DISPONIBLE"
}
```

### Ejemplo 3: Compactadora de Suelo
```json
{
  "placa": "COM-012",
  "marca": "Wacker Neuson",
  "modelo": "DPU-100",
  "anio": 2023,
  "categoria": "Compactación",
  "potencia": 4.8,
  "capacidad": "20 kN",
  "dimensiones": "0.8 x 0.5 x 1.0",
  "peso": 0.095,
  "accesorios": "Placa vibratoria, asa ergonómica, tanque de agua",
  "requiereCertificacion": false,
  "horasUso": 320.0,
  "precioalquilo": 60.00,
  "estveh": "DISPONIBLE"
}
```

## Validaciones Recomendadas

### Backend (Java)
```java
// En el formulario o servicio
if (vehiculo.getCategoria() == null || vehiculo.getCategoria().isEmpty()) {
    throw new ValidationException("La categoría es obligatoria");
}

if (vehiculo.getPotencia() != null && vehiculo.getPotencia() <= 0) {
    throw new ValidationException("La potencia debe ser mayor a 0");
}

if (vehiculo.getHorasUso() != null && vehiculo.getHorasUso() < 0) {
    throw new ValidationException("Las horas de uso no pueden ser negativas");
}
```

### Base de Datos
```sql
-- Restricciones sugeridas
ALTER TABLE vehiculo 
  ADD CONSTRAINT chk_potencia CHECK (potencia > 0),
  ADD CONSTRAINT chk_peso CHECK (peso > 0),
  ADD CONSTRAINT chk_horas_uso CHECK (horas_uso >= 0);
```

## Migración de Datos Existentes

Si tienes datos de vehículos previos, considera:

1. **Color → Categoría**: Mapear manualmente según el tipo de equipo
2. **Kilometraje → Horas de Uso**: Conversión aproximada o resetear a 0
3. **Nuevos campos**: Inicializar con valores por defecto
   - `requiereCertificacion`: false
   - `accesorios`: "Sin accesorios especificados"
   - `categoria`: Requerir actualización manual

---

**Fecha de actualización**: 18 de enero de 2026  
**Versión**: 1.0  
**Proyecto**: KontraK - Sistema de Alquiler de Maquinaria de Construcción
