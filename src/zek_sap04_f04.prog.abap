*&---------------------------------------------------------------------*
*& Report ZEK_SAP04_F04
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZEK_SAP04_F04.

data: gv_number_1 TYPE i VALUE 10,
      gv_number_2 TYPE i,
      gv_result TYPE i.

         CALL FUNCTION 'ZEK_FM_SAP04_04'
           EXPORTING
             iv_text_1           = gv_number_1
             iv_text_2           = gv_number_2
          IMPORTING
            EV_RESULT           = gv_result
          EXCEPTIONS
            ZERO_DIVISION       = 1
            OTHERS              = 2
                   .
         IF sy-subrc <> 0.

         ENDIF.
