*&---------------------------------------------------------------------*
*& Report ZEK_PACKAGES_STR_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZEK_PACKAGES_STR_1.


PARAMETERS: sayi_1 TYPE n LENGTH 2,
            sayi_2 TYPE n LENGTH 2.

*TYPES: BEGIN OF gyt_okul,
*         ogr_id    TYPE n LENGTH 3,
*         ogr_ad    TYPE c LENGTH 15,
*         ogr_soyad TYPE c LENGTH 15,
*         ders      TYPE c LENGTH 15,
*         ders_not  TYPE n LENGTH 3,
*         basari    TYPE c LENGTH 10,
*       END OF gyt_okul.

DATA: gs_okul  TYPE ZEK_SAP04_STR_1,
      gt_table TYPE TABLE OF ZEK_SAP04_STR_1.

START-OF-SELECTION.

  IF sayi_1 > sayi_2.
    MESSAGE 'Girilen 2. sayı eşit veya büyük olmalıdır.' TYPE 'S' DISPLAY LIKE 'E'.
    EXIT.
  ENDIF.

  gs_okul-ogr_id = 1.
  gs_okul-ogr_ad = 'Mehmet'.
  gs_okul-ogr_soyad = 'Yılmaz'.
  gs_okul-ders = 'Fizik'.
  gs_okul-ders_not = 85.
  gs_okul-basari = 'Başarılı'.
  APPEND gs_okul TO gt_table.
  CLEAR: gs_okul.

  gs_okul-ogr_id = 2.
  gs_okul-ogr_ad = 'Ayşe'.
  gs_okul-ogr_soyad = 'Demir'.
  gs_okul-ders = 'Kimya'.
  gs_okul-ders_not = 72.
  gs_okul-basari = 'Başarılı'.
  APPEND gs_okul TO gt_table.
  CLEAR: gs_okul.

  gs_okul-ogr_id = 3.
  gs_okul-ogr_ad = 'Can'.
  gs_okul-ogr_soyad = 'Koç'.
  gs_okul-ders = 'Biyoloji'.
  gs_okul-ders_not = 48.
  gs_okul-basari = 'Başarısız'.
  APPEND gs_okul TO gt_table.
  CLEAR: gs_okul.

  gs_okul-ogr_id = 4.
  gs_okul-ogr_ad = 'Elif'.
  gs_okul-ogr_soyad = 'Şahin'.
  gs_okul-ders = 'Matematik'.
  gs_okul-ders_not = 91.
  gs_okul-basari = 'Başarılı'.
  APPEND gs_okul TO gt_table.
  CLEAR: gs_okul.

  gs_okul-ogr_id = 5.
  gs_okul-ogr_ad = 'Berk'.
  gs_okul-ogr_soyad = 'Kaya'.
  gs_okul-ders = 'Tarih'.
  gs_okul-ders_not = 67.
  gs_okul-basari = 'Başarılı'.
  APPEND gs_okul TO gt_table.
  CLEAR: gs_okul.

  gs_okul-ogr_id = 6.
  gs_okul-ogr_ad = 'Zeynep'.
  gs_okul-ogr_soyad = 'Aydın'.
  gs_okul-ders = 'Coğrafya'.
  gs_okul-ders_not = 56.
  gs_okul-basari = 'Başarılı'.
  APPEND gs_okul TO gt_table.
  CLEAR: gs_okul.

  gs_okul-ogr_id = 7.
  gs_okul-ogr_ad = 'Mert'.
  gs_okul-ogr_soyad = 'Aslan'.
  gs_okul-ders = 'Edebiyat'.
  gs_okul-ders_not = 38.
  gs_okul-basari = 'Başarısız'.
  APPEND gs_okul TO gt_table.
  CLEAR: gs_okul.

  gs_okul-ogr_id = 8.
  gs_okul-ogr_ad = 'Duygu'.
  gs_okul-ogr_soyad = 'Kurt'.
  gs_okul-ders = 'Felsefe'.
  gs_okul-ders_not = 74.
  gs_okul-basari = 'Başarılı'.
  APPEND gs_okul TO gt_table.
  CLEAR: gs_okul.

  gs_okul-ogr_id = 9.
  gs_okul-ogr_ad = 'Ali'.
  gs_okul-ogr_soyad = 'Çelik'.
  gs_okul-ders = 'Geometri'.
  gs_okul-ders_not = 66.
  gs_okul-basari = 'Başarılı'.
  APPEND gs_okul TO gt_table.
  CLEAR: gs_okul.

  gs_okul-ogr_id = 10.
  gs_okul-ogr_ad = 'Naz'.
  gs_okul-ogr_soyad = 'Ergin'.
  gs_okul-ders = 'İngilizce'.
  gs_okul-ders_not = 95.
  gs_okul-basari = 'Başarılı'.
  APPEND gs_okul TO gt_table.
  CLEAR: gs_okul.

  LOOP AT gt_table INTO gs_okul FROM sayi_1 TO  sayi_2.
    WRITE: gs_okul-ogr_id, gs_okul-ogr_ad, gs_okul-ogr_soyad, gs_okul-ders,gs_okul-ders_not, gs_okul-basari .
    SKIP.
  ENDLOOP.
