*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZEK_SAP04_TBL_2.................................*
DATA:  BEGIN OF STATUS_ZEK_SAP04_TBL_2               .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZEK_SAP04_TBL_2               .
CONTROLS: TCTRL_ZEK_SAP04_TBL_2
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZEK_SAP04_TBL_2               .
TABLES: ZEK_SAP04_TBL_2                .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
