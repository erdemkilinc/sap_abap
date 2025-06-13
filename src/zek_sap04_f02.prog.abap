*&---------------------------------------------------------------------*
*& Report ZEK_SAP04_F02
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zek_sap04_f02.

PARAMETERS: p_text_1 TYPE c LENGTH 40,
            p_text_2 TYPE c LENGTH 40.

data: gv_text TYPE c LENGTH 80.

START-OF-SELECTION.

  CALL FUNCTION 'ZEK_FM_SAP04_02'
    EXPORTING
                     iv_text_1 = p_text_1
                     iv_text_2 = p_text_2
     iv_uppercase = abap_false
    IMPORTING
            ev_text      = gv_text.

  WRITE: gv_text.
