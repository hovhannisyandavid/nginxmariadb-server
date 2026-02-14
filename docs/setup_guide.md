# Guía de Despliegue del Entorno

Este documento describe los pasos necesarios para desplegar y verificar el entorno virtualizado que contiene los servicios Nginx y MariaDB dentro de una máquina virtual Ubuntu Server gestionada por Vagrant.

---

## 1. Requisitos previos

Antes de iniciar el despliegue, asegúrate de tener instalados los siguientes componentes en tu equipo:

- **VirtualBox**
- **Vagrant**
- **Git** (opcional, pero recomendado)

Puedes verificar la instalación ejecutando:

```bash
vagrant --version
virtualbox --help
git --version

## Verificar Fail2ban

```bash
sudo fail2ban-client status sshd
