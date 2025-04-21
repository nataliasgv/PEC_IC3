# Circuitos Digitales en VHDL

Este repositorio contiene el desarrollo de dos ejercicios relacionados con el diseño de circuitos digitales usando VHDL. Ambos ejercicios forman parte de un trabajo académico para la carrera de Ingeniería Informatica en la UNED.
---

## Ejercicio 1: Implementación de Funciones Lógicas

Se diseña un circuito digital combinacional que implementa las siguientes funciones booleanas, en base a tres variables de entrada: `x`, `y`, `z`.

### Funciones

- **F** = x·y·z + x' + x'·y·z  
- **G** = x·y + x·z + y·z

> Donde · representa la conjunción lógica (AND), + la disyunción lógica (OR), y ' la negación lógica (NOT).

### Objetivo

Implementar ambas funciones (`F` y `G`) utilizando VHDL y validar su comportamiento mediante simulación.

---

## Ejercicio 2: Comparador de N Bits

Diseño de un circuito combinacional parametrizable en VHDL que compara dos números binarios sin signo, `x` e `y`, ambos representados como vectores de tipo `std_logic_vector` de `N` bits.

### Especificaciones

- **Parámetro genérico:** `N` (entero ≥ 1)
- **Entradas:**
  - `x[N-1:0]`
  - `y[N-1:0]`
- **Salidas:**
  - `gout`: toma el valor `'1'` si `x > y`
  - `eout`: toma el valor `'1'` si `x = y`

### Metodología

- El diseño es modular e iterativo.
- Se crea un comparador básico de 1 bit como componente.
- A partir de este módulo base, se construyen comparadores de mayor tamaño usando estructuras jerárquicas.

---

## Simulación y Pruebas

Cada ejercicio cuenta con su banco de pruebas (testbench) correspondiente para validar la lógica implementada.

