# Estándar: Arquitectura Hexagonal
- **Capa de Dominio**: Contiene entidades puras y lógica de negocio. Cero dependencias externas.
- **Capa de Aplicación**: Casos de uso y orquestación. No conoce detalles de la base de datos o UI.
- **Capa de Infraestructura**: Adaptadores para APIs, Bases de Datos (SQL Server) y Frameworks.
- **Regla de Oro**: Las dependencias siempre apuntan hacia adentro (hacia el Dominio).