FUNCTION ZEK_FM_SAP04_04.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(IV_TEXT_1) TYPE  INT4
*"     REFERENCE(IV_TEXT_2) TYPE  INT4
*"  EXPORTING
*"     REFERENCE(EV_RESULT) TYPE  INT4
*"  EXCEPTIONS
*"      ZERO_DIVISION
*"----------------------------------------------------------------------
IF iv_text_2 = 0.
RAISE zero_division.
else.
  ev_result = iv_text_1 / iv_text_2.

ENDIF.



ENDFUNCTION.
