*&---------------------------------------------------------------------*
*& Report ZEK_SAP04_F03
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zek_sap04_f03.

PARAMETERS: p_time_1 TYPE sy-uzeit,
            p_time_2 TYPE sy-uzeit,
            p_carrid TYPE s_carr_id,
            p_connid TYPE s_conn_id.
DATA: gs_spfli           TYPE spfli,
      gv_fltime          TYPE s_fltime,
      gv_fltime_changed  TYPE xfeld.

START-OF-SELECTION.

  SELECT SINGLE * FROM spfli
    INTO gs_spfli
    WHERE carrid = p_carrid
      AND connid = p_connid.

  CALL FUNCTION 'ZMC_FM_SAP04_03'
    EXPORTING
      iv_dep_time         = p_time_1
      iv_arr_time         = p_time_2
    IMPORTING
      ev_fltime           = gv_fltime
      ev_fltime_changed   = gv_fltime_changed
    CHANGING
      cs_spfli            = gs_spfli.
