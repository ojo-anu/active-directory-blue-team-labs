# Project 06 – Automated User Onboarding and Offboarding

## Goal

Automate Active Directory user onboarding and offboarding using PowerShell and CSV files.

## Environment

* Windows Server 2022
* Windows 11
* Domain: corp.lab
* Domain Controller: DC01
* Client: CLIENT01

## Organizational Units

* IT
* HR
* Finance
* Disabled Users

## Security Groups

* IT_Admins
* HR_Users
* Finance_Users

## Tasks Completed

### User Onboarding

* Created a CSV file containing user details
* Imported users using PowerShell
* Assigned users to the correct OUs
* Added users to the correct security groups

### User Offboarding

* Disabled user accounts
* Moved disabled accounts to the Disabled Users OU
* Verified account status in Active Directory

### Validation

* Verified users were created successfully
* Verified group memberships
* Tested login using CLIENT01
* Generated audit information

## Screenshots

Stored in Pictures folder.

## Files

### Scripts

* 03-onboard-users.ps1
* 04-offboard-user.ps1

### Data

* ad_users.csv

## Result

Successfully automated Active Directory onboarding and offboarding using PowerShell, CSV imports, and Active Directory administrative tools.
