*&---------------------------------------------------------------------*
*& Report ZEK_SAP01_STR
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZEK_SAP01_STR.

DATA: gs_str   TYPE ZEK_SAP04_TBL_1, "ZEK_SAP04_TBL_1 tablosu ile ayni satir yapisina sahip bir structure,
      gt_table TYPE TABLE OF ZEK_SAP04_TBL_1. "ZEK_SAP04_TBL_1 tablosu ile ayni satir yapisina sahip bir internal tablo.

*SELECT * FROM zmc_sap04_tbl_1 INTO TABLE gt_table.
SELECT * FROM ZEK_SAP04_TBL_1
  INTO TABLE gt_table
  WHERE id >= 2025000002.

LOOP AT gt_table INTO gs_str.

  WRITE: gs_str-id,
         gs_str-name,
         gs_str-surname,
         gs_str-job,
         gs_str-salayr,
         gs_str-curr,
         gs_str-gsm,
         gs_str-e_mail.

  SKIP.
  ULINE.

  CLEAR: gs_str.

ENDLOOP.
