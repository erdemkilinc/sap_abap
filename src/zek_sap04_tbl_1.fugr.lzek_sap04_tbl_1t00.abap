*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZEK_SAP04_TBL_1.................................*
DATA:  BEGIN OF STATUS_ZEK_SAP04_TBL_1               .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZEK_SAP04_TBL_1               .
CONTROLS: TCTRL_ZEK_SAP04_TBL_1
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZEK_SAP04_TBL_1               .
TABLES: ZEK_SAP04_TBL_1                .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
