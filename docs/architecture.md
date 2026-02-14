# Arquitectura del Servidor

Este proyecto implementa una arquitectura de servidor única basada en una máquina virtual Linux que aloja dos servicios esenciales para un entorno web moderno:

- **Nginx** como servidor web
- **MariaDB** como servidor de base de datos

Ambos servicios se despliegan automáticamente mediante scripts Bash y se ejecutan dentro de un entorno virtualizado gestionado por Vagrant.

---

## 🧱 Topología del Sistema

La infraestructura se compone de una única máquina virtual con la siguiente configuración:


### Seguridad adicional

El servidor incluye mecanismos avanzados de protección:

- **Fail2ban**, que monitoriza intentos fallidos de acceso SSH y bloquea automáticamente direcciones IP sospechosas.
- **Backups automáticos diarios** de la base de datos MariaDB, con logs detallados y retención de 7 días para evitar acumulación de archivos.

