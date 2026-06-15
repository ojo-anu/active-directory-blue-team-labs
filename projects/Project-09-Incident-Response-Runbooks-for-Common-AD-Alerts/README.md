# Project 09 – Incident Response Runbooks for Common AD Alerts

## Objective

Simulate common Active Directory security incidents, investigate security events, perform containment actions, and document incident response procedures using a structured runbook approach.

## Lab Environment

### Domain
corp.lab

### Systems

- DC01 – Windows Server 2022 Domain Controller
- CLIENT01 – Windows 11 Domain-Joined Workstation

## Technologies Used

- Active Directory Domain Services (AD DS)
- Event Viewer
- Windows Security Logs
- PowerShell
- Group Policy
- Incident Response Procedures

## Scenario 1: Brute Force / Password Spray Investigation

### Detection

Multiple failed login attempts were generated from CLIENT01 to simulate a brute force/password spray attack.

### Event Investigated

| Event ID | Description |
|-----------|-------------|
| 4625 | Failed Logon Attempt |

### Investigation Activities

- Reviewed Security Event Logs
- Identified affected account
- Reviewed source workstation
- Examined authentication failure timeline
- Assessed account lockout status

### Triage Commands Used

```powershell
Get-WinEvent -FilterHashtable @{
LogName='Security'
Id=4625
StartTime=(Get-Date).AddHours(-4)
}
