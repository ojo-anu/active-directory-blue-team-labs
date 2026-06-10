# Project 08 – Advanced Audit Policy and Windows Event Forwarding

## Objective

Configure Advanced Audit Policies and Windows Event Forwarding (WEF) to centralize security logs, improve visibility into authentication activity, and build foundational security monitoring capabilities within an Active Directory environment.

## Lab Environment

### Domain

corp.lab

### Systems

* DC01 – Windows Server 2022 Domain Controller
* CLIENT01 – Windows 11 Domain-Joined Workstation

## Technologies Used

* Active Directory
* Group Policy Management
* Windows Event Forwarding (WEF)
* Windows Event Collector (WEC)
* Windows Remote Management (WinRM)
* Event Viewer
* PowerShell

## Tasks Completed

### Event Collection Configuration

* Configured DC01 as a Windows Event Collector
* Verified Windows Event Collector Service (Wecsvc)
* Created a Security Event Collection subscription
* Configured source-initiated event forwarding

### Client Configuration

* Enabled Windows Remote Management (WinRM)
* Configured firewall rules required for event forwarding
* Applied Group Policy updates

### Advanced Audit Policy Configuration

Enabled auditing for:

* Logon Events
* Credential Validation
* User Account Management
* Policy Changes

### Security Event Generation

Generated and analyzed:

* Successful Logons (Event ID 4624)
* Failed Logons (Event ID 4625)

### Log Analysis

* Reviewed security events in Event Viewer
* Filtered authentication-related events
* Exported security logs to CSV for evidence collection

## Key Event IDs

| Event ID | Description                      |
| -------- | -------------------------------- |
| 4624     | Successful Logon                 |
| 4625     | Failed Logon                     |
| 4720     | User Account Created             |
| 4726     | User Account Deleted             |
| 4732     | User Added to Security Group     |
| 4733     | User Removed from Security Group |

## Skills Demonstrated

* Windows Event Forwarding (WEF)
* Security Monitoring
* Log Collection and Analysis
* Active Directory Auditing
* Windows Event Management
* Blue Team Operations
* Security Investigation Fundamentals

## Evidence Collected

* Event Collector Configuration
* Subscription Configuration
* WinRM Configuration
* Advanced Audit Policy Settings
* Successful Logon Events
* Failed Logon Events
* Security Log Export

## Outcome

Successfully implemented centralized Windows event collection and advanced auditing to improve security visibility, monitor authentication activity, and establish a foundation for Security Operations Center (SOC) monitoring workflows.
