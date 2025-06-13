*&---------------------------------------------------------------------*
*& Report ZEK_SAP04_DB_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zek_sap04_db_1.

DATA: gs_scarr TYPE scarr,
      gt_scarr TYPE TABLE OF scarr.


SELECT * FROM scarr INTO TABLE gt_scarr
  UP TO 5 ROWS. "ilk 5 satırı seçiyoruz

LOOP AT gt_scarr INTO gs_scarr.

  WRITE: gs_scarr-carrid,
  gs_scarr-carrname,
  gs_scarr-currcode,
  gs_scarr-url.
  SKIP.
  CLEAR: gs_scarr.
ENDLOOP.
