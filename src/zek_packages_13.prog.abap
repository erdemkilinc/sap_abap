*&---------------------------------------------------------------------*
*& Report ZEK_PACKAGES_13
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zek_packages_13.



TYPES: BEGIN OF gty_structure,
         plaka_no    TYPE c LENGTH 10,
         marka       TYPE c LENGTH 25,
         model       TYPE string,
         renk        TYPE c LENGTH 12,
         motor_cc    TYPE n LENGTH 4,
         uretim_yili TYPE c LENGTH 4,
         fiyat       TYPE i,
         kilometre   TYPE i,
       END OF gty_structure.

DATA: gs_structure TYPE gty_structure,         "Structure.
      gt_table     TYPE TABLE OF gty_structure. "Internal table,

START-OF-SELECTION.

  gs_structure-plaka_no     = '34 AB 2025'.
  gs_structure-marka        = 'Citroen'.
  gs_structure-model        = 'Picasso'.
  gs_structure-renk         = 'Lacivert'.
  gs_structure-motor_cc     = 1600.
  gs_structure-uretim_yili  = '2015'.
  gs_structure-fiyat        = 15000.
  gs_structure-kilometre    = 80000.

  APPEND gs_structure TO gt_table.
  CLEAR: gs_structure.


  gs_structure-plaka_no     = '23 DE 3476'.
  gs_structure-marka        = 'Volvo'.
  gs_structure-model        = 'S40'.
  gs_structure-renk         = 'Beyaz'.
  gs_structure-motor_cc     = 2000.
  gs_structure-uretim_yili  = '2020'.
  gs_structure-fiyat        = 14000.
  gs_structure-kilometre    = 50000.

  APPEND gs_structure TO gt_table.
  CLEAR: gs_structure.


  gs_structure-plaka_no     = '56 TR 2837'.
  gs_structure-marka        = 'Renault'.
  gs_structure-model        = 'Broadway'.
  gs_structure-renk         = 'Gri'.
  gs_structure-motor_cc     = 1400.
  gs_structure-uretim_yili  = '1995'.
  gs_structure-fiyat        = 1000.

  APPEND gs_structure TO gt_table.
  CLEAR: gs_structure.


  gs_structure-plaka_no     = '47 KH 2894'.
  gs_structure-marka        = 'Mercedes'.
  gs_structure-model        = 'C180'.
  gs_structure-renk         = 'Krem'.
  gs_structure-motor_cc     = 1800.
  gs_structure-uretim_yili  = '2018'.
  gs_structure-fiyat        = 70000.

  APPEND gs_structure TO gt_table.
  CLEAR: gs_structure.


  gs_structure-plaka_no     = '16 ZR 9687'.
  gs_structure-marka        = 'Audio'.
  gs_structure-model        = 'A3'.
  gs_structure-renk         = 'Siyah'.
  gs_structure-motor_cc     = 2000.
  gs_structure-uretim_yili  = '2014'.
  gs_structure-fiyat        = 120000.

  APPEND gs_structure TO gt_table.
  CLEAR: gs_structure.



  LOOP AT gt_table INTO gs_structure WHERE fiyat <= 4000.

    gs_structure-kilometre = gs_structure-kilometre + 10000.
    gs_structure-fiyat = gs_structure-fiyat + 1000.

    MODIFY gt_table FROM gs_structure INDEX sy-tabix. " Okunan satırın numarası
    CLEAR: gs_structure.

  ENDLOOP.

  LOOP AT gt_table INTO gs_structure WHERE fiyat <= 4000.

    WRITE: gs_structure-plaka_no,       / gs_structure-marka,       / gs_structure-model,
             / gs_structure-renk,         / gs_structure-motor_cc,    / gs_structure-uretim_yili,
             / gs_structure-fiyat,        / gs_structure-kilometre.
    SKIP.
    ULINE.

  ENDLOOP.


" Delete Komutu


  READ TABLE gt_table INTO gs_structure INDEX 3.

  IF sy-subrc IS INITIAL.

    WRITE: 'Eski 3. satır: ',        / gs_structure-plaka_no,     / gs_structure-marka,
                                     / gs_structure-model,         / gs_structure-motor_cc,
                                     / gs_structure-renk,          / gs_structure-kilometre,
                                     / gs_structure-uretim_yili,   / gs_structure-fiyat.

    SKIP.
    ULINE.
    CLEAR: gs_structure.

  ENDIF.

  DELETE gt_table INDEX 3.

  READ TABLE gt_table INTO gs_structure INDEX 3.

  IF sy-subrc IS INITIAL.

    WRITE: 'Yeni 3. satır: ',        / gs_structure-plaka_no,     / gs_structure-marka,
                                     / gs_structure-model,         / gs_structure-motor_cc,
                                     / gs_structure-renk,          / gs_structure-kilometre,
                                     / gs_structure-uretim_yili,   / gs_structure-fiyat.

    SKIP.
    ULINE.
    CLEAR: gs_structure.

  ENDIF.
