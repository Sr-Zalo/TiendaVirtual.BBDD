# TiendaVirtual.Database

Proyecto de base de datos perteneciente a **Tienda Virtual**, una aplicación web de
comercio electrónico orientada a la venta de juegos de mesa y productos de ocio
(videojuegos, libros, coleccionables y puzzles). Proyecto integrado de DAW — curso 2025/2026.

## Descripción

Este repositorio contiene el proyecto de base de datos SQL Server desarrollado con
Visual Studio (`.sqlproj`). Define la estructura completa de tablas, relaciones y
datos iniciales necesarios para el funcionamiento de la aplicación.

## Contenido

- Definición de todas las tablas de la base de datos
- Relaciones y claves foráneas entre tablas
- Script de post-despliegue que inserta los datos iniciales necesarios:
  - Roles del sistema (Admin y Cliente)
  - Categorías de productos
  - Usuario administrador por defecto

## Tablas

- **Role / User** — gestión de usuarios y control de acceso por roles
- **Category / Product** — catálogo de productos con sus categorías
- **BoardGame, VideoGame, Book, Collectible, Puzzle** — información específica
  de cada tipo de producto (herencia TPT)
- **ProductImage** — imágenes asociadas a cada producto (URLs a blob storage)
- **Cart** — carrito de compra por usuario
- **Order / OrderLine** — pedidos y líneas de pedido con precio histórico

## Requisitos

- SQL Server 2022
- Visual Studio 2022 con la extensión **SQL Server Data Tools (SSDT)**

## Publicación

1. Abre `TiendaVirtual.Database.sln` en Visual Studio
2. Clic derecho sobre el proyecto → **Publicar**
3. Configura la cadena de conexión apuntando a tu instancia de SQL Server
4. Pulsa **Publicar**

El proceso crea la base de datos, aplica todas las tablas y ejecuta
automáticamente los scripts de datos iniciales.

## Autor

Gonzalo López Luque — IES SOTERO HERNÁNDEZ — DAW 2025/2026