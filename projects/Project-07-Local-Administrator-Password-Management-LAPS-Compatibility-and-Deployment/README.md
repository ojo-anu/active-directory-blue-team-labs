# Project 07 – Local Administrator Password Management (LAPS) Compatibility and Deployment

## Objective

Deploy Microsoft Local Administrator Password Solution (LAPS) within an Active Directory environment and evaluate compatibility between Legacy Microsoft LAPS (AdmPwd) and modern Windows LAPS implementations on Windows 11.

This project demonstrates Active Directory schema extension, permission delegation, Group Policy configuration, and troubleshooting of compatibility issues encountered in enterprise environments.

## Lab Environment

### Domain

corp.lab

### Systems

* DC01 – Windows Server 2022 Domain Controller
* CLIENT01 – Windows 11 Domain-Joined Workstation

## Technologies Used

* Active Directory Domain Services (AD DS)
* Microsoft LAPS (AdmPwd)
* Group Policy Management
* Windows LAPS
* PowerShell
* Windows Server 2022
* Windows 11

---

## Tasks Completed

### 1. Active Directory Schema Extension

Extended the Active Directory schema to support Microsoft LAPS attributes required for password storage and management.

**Status:**
Completed successfully.

---

### 2. Computer Self Permission Delegation

Granted computer accounts permission to update their own LAPS password attributes within Active Directory.

**Status:**
Completed successfully.

---

### 3. Password Read Permission Delegation

Configured administrative permissions to allow authorized administrators to read managed local administrator passwords.

**Status:**
Completed successfully.

---

### 4. Group Policy Configuration

Configured LAPS policies using Group Policy Management, including:

* Password Backup to Active Directory
* Password Complexity Requirements
* Password Length
* Password Age

**Status:**
Completed successfully.

---

### 5. Group Policy Update

Applied and verified Group Policy settings on CLIENT01.

**Status:**
Completed successfully.

---

## Compatibility Challenge Encountered

During the deployment process, a compatibility issue was identified between:

* Legacy Microsoft LAPS (AdmPwd)
* Windows 11 Built-in Windows LAPS

### Findings

* DC01 successfully installed and configured Microsoft LAPS (AdmPwd).
* CLIENT01 runs Windows 11 with built-in Windows LAPS support.
* Windows 11 blocks installation of the legacy LAPS MSI package because Microsoft has deprecated Legacy LAPS on recent Windows releases.

As a result:

* Legacy AdmPwd commands on DC01 could not retrieve passwords from CLIENT01.
* The issue was identified as a compatibility difference between Legacy Microsoft LAPS and Windows LAPS architecture.

### Security Observation

Modern Windows environments are transitioning from:

Microsoft LAPS (AdmPwd)

to

Windows LAPS

Administrators should ensure that Domain Controllers and client operating systems use compatible LAPS implementations during deployment.

---

## Screenshots

* AD_07 Successfully updated schema
* AD-07_gpupdate_success on CLIENT01
* AD-07_laps_gpo_settings
* AD-07_laps_module_installed
* AD-07_read_permission_granted
* AD-07_self_permission_granted

---

## Skills Demonstrated

* Active Directory Administration
* Active Directory Schema Extension
* LAPS Deployment
* Group Policy Management
* Permission Delegation
* Windows LAPS
* PowerShell Administration
* Troubleshooting and Compatibility Analysis
* Security Administration

---

## Outcome

Successfully configured the Active Directory environment for Local Administrator Password Management, delegated permissions, configured Group Policy settings, and investigated compatibility challenges between Legacy Microsoft LAPS and Windows LAPS on Windows 11. The project provided practical experience with modern password management technologies and real-world deployment considerations.
