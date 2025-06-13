*&---------------------------------------------------------------------*
*& Report ZEK_PACKAGES_STR_3
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZEK_PACKAGES_STR_3.

TYPES: BEGIN OF gty_str,
  adres TYPE c LENGTH 3,
  carrid TYPE c LENGTH 3,
  tel TYPE c LENGTH 12,
  url TYPE c LENGTH 255,
  END OF gty_str.

  DATA: gs_str TYPE gty_str,
        gt_table TYPE TABLE OF gty_str.

  SELECT carrid url FROM scarr
    INTO CORRESPONDING FIELDS OF TABLE gt_table.
    " Kolon isimlerinin aynı olması çok önemlidir.
 BREAK-POINT.
