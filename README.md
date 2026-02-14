# nginxmariadb-server
Repo description for nginx mariadb virtualserver creation

- **Servidor web:** Nginx  
- **Servidor de base de datos:** MariaDB  

El objetivo es demostrar el diseño, despliegue y documentación de un servidor Linux multi-servicio dentro de
un entorno virtualizado reproducible mediante Vagrant.

---

## 🚀 Características principales

- Entorno reproducible con **Vagrant + VirtualBox**
- Instalación automatizada de Nginx y MariaDB mediante scripts Bash
- Configuración inicial de base de datos incluida
- Estructura modular y profesional del repositorio
- Documentación completa en `docs/`
- Scripts de hardening básico para mejorar la seguridad del servidor

---

## 🧱 Tecnologías utilizadas

- Ubuntu Server 22.04 LTS
- Nginx
- MariaDB
- Bash scripting
- VirtualBox
- Vagrant

---

## 📦 Requisitos previos

- Git
- VirtualBox
- Vagrant

---

## ▶️ Cómo iniciar el entorno

```bash
git clone https://github.com/hovhannisyandavid/nginxmariadb-server.git
cd nginxmariadb-server/vagrant
vagrant up
