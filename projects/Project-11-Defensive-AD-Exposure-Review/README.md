# Project 11 & 12 – Defensive AD Exposure Review and Domain Controller Hardening

## Objective

Perform a defensive security assessment of an Active Directory environment and validate the security hardening measures implemented on the Domain Controller. The objective is to review administrative access, password policies, account security, audit policies, and Domain Controller configurations while documenting security recommendations and hardening best practices.

## Lab Environment

### Domain

corp.lab

### Systems

* DC01 – Windows Server 2022 Domain Controller
* CLIENT01 – Windows 11 Domain-Joined Workstation

## Technologies Used

* Active Directory Domain Services (AD DS)
* Active Directory Users and Computers (ADUC)
* Active Directory Administrative Center (ADAC)
* Group Policy Management Console (GPMC)
* Windows Defender Firewall
* Windows Security Policies

---

## Security Assessment Performed

### Domain Admin Review

Reviewed the Domain Admins group to verify privileged access assignments.

**Finding:**
No excessive privileged accounts identified.

**Recommendation:**
Continue applying the Principle of Least Privilege and perform periodic reviews of privileged groups.

---

### IT_Admins Group Review

Reviewed the IT_Admins security group membership.

**Finding:**
Administrative group membership was reviewed and no unauthorized users were identified.

**Recommendation:**
Audit privileged groups regularly and remove unused accounts.

---

### Password Policy Review

Reviewed:

* Password Complexity Requirements
* Minimum Password Length
* Password History
* Maximum Password Age

**Finding:**
Password policies were properly configured and enforced.

**Recommendation:**
Maintain strong password requirements and continue periodic reviews.

---

### Account Lockout Policy Review

Reviewed:

* Account Lockout Threshold
* Lockout Duration
* Reset Counter

**Finding:**
Brute force protection is enabled through account lockout policies.

**Recommendation:**
Continue enforcing lockout policies to reduce password attack risks.

---

### Remote Desktop Review

Reviewed Remote Desktop configuration on the Domain Controller.

**Finding:**
Administrative access was reviewed and restricted to authorized users.

**Recommendation:**
Continue restricting RDP access to trusted administrators only.

---

### Windows Firewall Review

Reviewed Windows Defender Firewall and inbound rules.

**Finding:**
Firewall protection is enabled and only required services are permitted.

**Recommendation:**
Continue reviewing firewall rules and disable unnecessary services.

---

### Audit Policy Review

Reviewed Advanced Audit Policies including:

* Logon Events
* Account Management
* Policy Changes
* Authentication Auditing

**Finding:**
Security auditing is enabled and provides visibility into authentication and administrative activities.

**Recommendation:**
Maintain auditing and review logs regularly.

---

## Security Hardening Validation

The Domain Controller was reviewed against Active Directory security best practices.

Validated controls include:

* Restricted Domain Admin membership
* Strong Password Policies
* Account Lockout Protection
* Firewall Enabled
* Remote Desktop Security
* Security Auditing Enabled
* Privileged Access Review

---

## Overall Security Posture

Risk Level:

LOW

The Active Directory environment demonstrates strong baseline security controls and follows recommended hardening practices for administrative access, authentication policies, and Domain Controller security.

---

## Skills Demonstrated

* Active Directory Security Assessment
* Domain Controller Hardening
* Privileged Access Management
* Password Policy Management
* Account Lockout Configuration
* Security Auditing
* Windows Firewall Administration
* Security Documentation
* Blue Team Fundamentals

---

## Outcome

Successfully performed a defensive Active Directory exposure review and validated Domain Controller hardening configurations. The environment was assessed against security best practices and demonstrated strong baseline protections with no critical security findings.
