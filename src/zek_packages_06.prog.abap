*&---------------------------------------------------------------------*
*& Report ZEK_PACKAGES_06
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zek_packages_06.

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

"Structure
DATA: gs_structure TYPE gty_structure,
      gt_table     TYPE TABLE OF gty_structure.

gs_structure-id = 20220001.
gs_structure-name = 'Erdem'.
gs_structure-surname = 'Kilinc'.
gs_structure-job = 'SAP Developer'.
gs_structure-salary = 3000.
gs_structure-curr = 'Euro'.
gs_structure-gsm = '+491234567890'.
gs_structure-e_mail = 'er49dem@gmail.com'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

gs_structure-id = 20220002.
gs_structure-name = 'Cemil'.
gs_structure-surname = 'Koc'.
gs_structure-job = 'WEB Developer'.
gs_structure-salary = 5000.
gs_structure-curr = 'Euro'.
gs_structure-gsm = '+491234567891'.
gs_structure-e_mail = 'cemil@gmail.com'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.

gs_structure-id = 20220003.
gs_structure-name = 'Aleyna'.
gs_structure-surname = 'Kahraman'.
gs_structure-job = 'Software Developer'.
gs_structure-salary = 4000.
gs_structure-curr = 'Euro'.
gs_structure-gsm = '+491234567892'.
gs_structure-e_mail = 'aleyna@gmail.com'.

APPEND gs_structure TO gt_table.
CLEAR: gs_structure.
