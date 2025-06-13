*&---------------------------------------------------------------------*
*& Report ZEK_SAP04_F01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zek_sap04_f01.

PARAMETERS: p_1 TYPE i,
            p_2 TYPE i.

DATA: gv_result TYPE i.

START-OF-SELECTION.

  CALL FUNCTION 'ZEK_FM_SAP04_01'
    EXPORTING
      iv_number_1 = p_1
      iv_number_2 = p_2
    IMPORTING
      ev_result   = gv_result.
  WRITE: gv_result.
