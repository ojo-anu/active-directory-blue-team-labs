# Project 10 – Backup, AD Recycle Bin and Restore Drill

## Objective

Enable the Active Directory Recycle Bin feature and perform recovery drills by deleting and restoring Active Directory objects. The project demonstrates disaster recovery capabilities and object restoration within an Active Directory environment.

## Lab Environment

### Domain

corp.lab

### Systems

* DC01 – Windows Server 2022 Domain Controller
* CLIENT01 – Windows 11 Domain-Joined Workstation

## Technologies Used

* Active Directory Domain Services (AD DS)
* Active Directory Administrative Center (ADAC)
* Active Directory Users and Computers (ADUC)
* AD Recycle Bin

## Tasks Completed

### Recycle Bin Configuration

* Opened Active Directory Administrative Center
* Enabled Active Directory Recycle Bin
* Verified Recycle Bin activation

### User Recovery Drill

* Created a recovery test user
* Deleted the user account
* Located the deleted object in the Recycle Bin
* Restored the deleted user account
* Verified that the restored account retained its properties

### Organizational Unit Recovery Drill

* Created a Recovery-Test-OU
* Added test users inside the OU
* Deleted the entire OU
* Restored the OU from Deleted Objects
* Verified that all users inside the OU were successfully restored

## Disaster Recovery Validation

Verified:

* User accounts can be restored after accidental deletion
* Organizational Units can be restored successfully
* Child objects are recovered together with the OU
* Recycle Bin simplifies Active Directory recovery operations

## Screenshots

* AD-10_adac_opened.png
* AD-10_recycle_bin_enabled.png
* AD-10_recycle_bin_verified.png
* AD-10_test_user_created.png
* AD-10_user_deleted.png
* AD-10_deleted_object_found.png
* AD-10_user_restored.png
* AD-10_restore_verification.png
* AD-10_recovery_ou_created.png
* AD-10_ou_deleted.png
* AD-10_ou_restored.png
* AD-10_final_recovery_validation.png

## Skills Demonstrated

* Active Directory Administration
* Disaster Recovery
* AD Recycle Bin Management
* Object Restoration
* Organizational Unit Recovery
* Administrative Troubleshooting
* Backup and Recovery Concepts

## Outcome

Successfully enabled Active Directory Recycle Bin and performed user and Organizational Unit recovery drills, demonstrating practical disaster recovery skills and the ability to restore accidentally deleted Active Directory objects.
