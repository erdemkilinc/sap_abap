*&---------------------------------------------------------------------*
*& Report ZEK_PACKAGES_04
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zek_packages_04.

TYPES: BEGIN OF gty_structure,
         id      TYPE n LENGTH 8,
         name    TYPE c LENGTH 40,
         surname TYPE c LENGTH 40,
         job     TYPE c LENGTH 20,
         salary  TYPE i,
         curr    TYPE c LENGTH 3,
         gsm     TYPE string,
         e_mail  TYPE string,
       END OF gty_structure.

DATA: gs_structure TYPE gty_structure.

gs_structure-id = 20220001.
gs_structure-name = 'Erdem'.
gs_structure-surname = 'Kilinc'.
gs_structure-job = 'SAP Developer'.
gs_structure-salary = 5000.
gs_structure-curr = 'Euro'.
gs_structure-gsm = '+491234567890'.
gs_structure-e_mail = 'er49dem@gmail.com'.

WRITE: gs_structure-id,
      / gs_structure-name,
      / gs_structure-surname,
      / gs_structure-job,
      / gs_structure-salary,
      / gs_structure-curr,
      / gs_structure-gsm,
      / gs_structure-e_mail.
