*&---------------------------------------------------------------------*
*& Report ZEK_PACKAGES_STR_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zek_packages_str_2.

TYPES: BEGIN OF gty_str,
         carrid TYPE c LENGTH 3,
         url    TYPE c LENGTH 255,
       END OF gty_str.

DATA: gs_scarr TYPE gty_str,
      gt_table TYPE TABLE OF gty_str.

SELECT carrid url FROM scarr
  INTO TABLE gt_table.

LOOP AT gt_table INTO gs_scarr.

  WRITE: gs_scarr-carrid,
         gs_scarr-url.
  SKIP.
  CLEAR: gs_scarr.

ENDLOOP.
