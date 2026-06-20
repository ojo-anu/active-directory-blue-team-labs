# Project 11 – Defensive AD Exposure Review

## Objective

Perform a defensive security assessment of an Active Directory environment by reviewing privileged access, password policies, account configurations, and overall security exposure. The goal is to identify potential risks and recommend security best practices for improving the environment.

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
* Windows Server 2022

## Security Review Performed

### 1. Domain Admin Group Review

Reviewed the members of the Domain Admins group to identify privileged accounts and evaluate whether administrative access was appropriately restricted.

**Security Recommendation:**

* Limit Domain Admin membership to only essential administrative accounts.
* Regularly review privileged groups.

---

### 2. IT_Admins Group Review

Reviewed the membership of the IT_Admins security group to verify authorized administrative access and identify unnecessary or inactive accounts.

**Security Recommendation:**

* Periodically audit privileged group memberships.
* Remove unused or unauthorized accounts.

---

### 3. Disabled and Dormant Account Review

Examined Active Directory for disabled and inactive accounts that could become security risks if left unmanaged.

**Security Recommendation:**

* Disable or remove inactive accounts.
* Review dormant accounts regularly.

---

### 4. Password Policy Review

Reviewed the Default Domain Password Policy including:

* Password Complexity Requirements
* Minimum Password Length
* Password History
* Maximum Password Age

**Security Recommendation:**

* Enforce strong password policies.
* Maintain password history and complexity requirements.

---

### 5. Account Lockout Policy Review

Reviewed account lockout settings to ensure protection against brute force attacks.

Verified:

* Account Lockout Threshold
* Lockout Duration
* Reset Counter After

**Security Recommendation:**

* Maintain account lockout policies to reduce password attack risks.

---

### 6. Service Account Review

Reviewed the environment for service accounts and evaluated whether service accounts were appropriately managed.

**Security Recommendation:**

* Monitor service accounts regularly.
* Apply least privilege principles.

---

### 7. Computer Object Review

Reviewed computer objects within the domain to identify inactive or unauthorized devices.

**Security Recommendation:**

* Remove stale computer accounts.
* Regularly review domain-joined systems.

---

## Security Findings Summary

The Active Directory environment demonstrates foundational security controls including:

* Restricted administrative groups
* Password complexity enforcement
* Account lockout policies
* Centralized user and group management

Potential improvements include:

* Routine privileged access reviews
* Continuous monitoring of dormant accounts
* Regular audits of service accounts and computer objects

## Skills Demonstrated

* Active Directory Security Assessment
* Privileged Access Review
* Password Policy Analysis
* Account Security Auditing
* Exposure Management
* Security Documentation
* Defensive Administration
* Blue Team Fundamentals

## Outcome

Successfully performed a defensive Active Directory exposure review by assessing privileged groups, password policies, account security settings, and domain configurations. Documented findings and recommended security improvements to strengthen the overall security posture of the environment.
