*&---------------------------------------------------------------------*
*& Report ZEK_PACKAGES_10
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZEK_PACKAGES_10.

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


DATA: gs_structure TYPE gty_structure,
      gt_table     TYPE TABLE OF gty_structure,
      gv_id_start  TYPE n LENGTH 8 VALUE '20240001'.

CONSTANTS: gc_satir TYPE c LENGTH 6 VALUE 'Satır'.

* Program bu noktadan itibaren execute edilemye başlıyor.
START-OF-SELECTION.

  DO 10 TIMES.

    IF sy-index > 1.
*      gv_id_start = gv_id_start + 1.
      ADD 1 TO gv_id_start.
    ENDIF.
    gs_structure-id = gv_id_start.
    gs_structure-name = 'Erdem'.
    gs_structure-surname = 'Kilinc'.
    gs_structure-job = 'SAP Developer'.
    gs_structure-salary = 3000.
    gs_structure-curr = 'Euro'.
    gs_structure-gsm = '+491234567890'.
    gs_structure-e_mail = 'er49dem@gmail.com'.

*    satırı tabloya ekleyelim
    APPEND gs_structure TO gt_table.
*    kullanılan satıırn içini temizleyelim
    CLEAR: gs_structure.
  ENDDO.

  LOOP AT gt_table INTO gs_structure.

    CHECK gs_structure-id > '20240008'.

    WRITE: / gc_satir, sy-tabix,
           / gs_structure-id,
           / gs_structure-name,
           / gs_structure-surname,
           / gs_structure-job,
           / gs_structure-salary,
           / gs_structure-curr,
           / gs_structure-gsm,
           / gs_structure-e_mail.
    SKIP.
  ENDLOOP.
