*&---------------------------------------------------------------------*
*& Report ZEK_SAP04_DB_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZEK_SAP04_DB_2.


DATA: gs_scarr TYPE scarr.
      "gt_scarr TYPE TABLE OF scarr.


SELECT SINGLE * FROM scarr " Tek bir satır seçer, Buradaki * tüm kolonları belirtir
  INTO gs_scarr
  WHERE carrid = 'LH'. .

  WRITE: gs_scarr-carrid,
  gs_scarr-carrname,
  gs_scarr-currcode,
  gs_scarr-url.
  SKIP.
  CLEAR: gs_scarr.

*LOOP AT gt_scarr INTO gs_scarr.
*
*  WRITE: gs_scarr-carrid,
*  gs_scarr-carrname,
*  gs_scarr-currcode,
*  gs_scarr-url.
*  SKIP.
*  CLEAR: gs_scarr.
*ENDLOOP.
