### Introducción
Para establecer la diferencia, la autenticación es el proceso por el cual se validan las credenciales de un usuario y la autorización es el proceso de revisión de privilegios para acceder a ciertas características de la plataforma.

En este proyecto se hará uso de la autenticación por JWT para la protección de un Web API en ASP.NET 5

*__Toda esta guía está basada en el trabajo original de Sarathlal Saseendran__*
*__Traducida en parte para ampliar el uso y explicación de la tecnología__*
Original : https://www.c-sharpcorner.com/article/authentication-and-authorization-in-asp-net-5-with-jwt-and-swagger/

Guía en español: 

### Implementaciones

- ASP.NET 5 (ASP.NET Core Web API)
- JSON Web Token (JWT)
- Swagger (OpenAPI Support)
- Modelo simple

### Primeros pasos
1. Crear un proyecto de tipo ASP.NET Core Web Application
	- Seleccionar ".NET 5.0"
	- Habilitar la configuración para HTTPS
	- Habilitar el soporte de OpenAPI
2. Instalar los siguientes paquetes NuGet
	- Microsoft.EntityFrameworkCore.SqlServer (v5.0.12)
	- Microsoft.EntityFrameworkCore.Tools (v5.0.12)
	- Microsoft.AspNetCore.Identity.EntityFrameworkCore (v5.0.12)
	- Microsoft.AspNetCore.Identity (v2.2.0)
	- Microsoft.AspNetCore.Authentication.JwtBearer (v5.0.12)
	- Swashbuckle.AspNetCore (v5.6.3)
3. Editar el archivo **appsettings.json**
```json
{
  "Logging": {
    "LogLevel": {
      "Default": "Information",
      "Microsoft": "Warning",
      "Microsoft.Hosting.Lifetime": "Information"
    }
  },
  "AllowedHosts": "*",
  "ConnectionStrings": {
    "DefaultConnection": "Data Source=Localhost;Initial Catalog=;Integrated Security=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"
  },
  "JWT": {
    "ValidAudience": "http://localhost:4200",
    "ValidIssuer": "http://localhost:59921",
    "Secret": "Reemplazar por cualquier texto"
	}
}
```
4. La continuación será explicada detalladamente en el artículo original o la guía