# Project 01 – Active Directory Domain Services + New Forest

## Objective

Deploy Active Directory Domain Services on Windows Server 2022 and create a new forest for the lab.

Domain created:

`corp.lab`

Hostname:

`DC01`

---

## Tasks completed

### 1. Renamed server

Changed hostname to:

`DC01`

---

### 2. Configured static IP

IP:

`192.168.10.10`

Subnet:

`255.255.255.0`

DNS:

`192.168.10.10`

---

### 3. Installed AD DS

Installed through:

Server Manager → Add Roles and Features

---

### 4. Promoted server to domain controller

Created new forest:

`corp.lab`

---

### 5. Verified Active Directory

Confirmed with:

PowerShell

```powershell
Get-ADDomain
```

---

### 6. Opened ADUC

Verified:

Active Directory Users and Computers

---

## Screenshots

* AD-01_dc01_renamed.png
* AD-01_static_ip.png
* AD-01_adds_installed.png
* AD-01_new_forest.png
* AD-01_domain_verified.png
* AD-01_aduc_open.png

---

## Outcome

Successfully deployed the first domain controller for the lab and created the Active Directory forest.

Next:

Project 02 – Organizational Unit Structure + Delegation
