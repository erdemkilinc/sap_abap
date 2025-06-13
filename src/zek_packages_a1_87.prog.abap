*&---------------------------------------------------------------------*
*& Report ZEK_PACKAGES_A1_87
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zek_packages_a1_87.


*Alıştırma -1: Yeni bir program oluşturun. 1 adet parametre tanımlayın ve kullanıcıdan 1 ile 10 arasında
*bir sayı alin. Program içerisinde bir satir tanımlayın. Satirin hücreleri sırasıyla “Öğrenci ID”, “Öğrenci
*Adi”, “Öğrenci Soyadı”, “Ders”, “Alınan Not” ve “Basari Durumu” olsun. Bu satir ile ayni yapıya sahip
*bir internal tablo tanımlayın. Satiri kendi üreteceğiniz veriyle 10 kere doldurun ve her doldurmadan
*sonra Append komutu ile internal tabloya kaydedin. Daha sonra secim ekranından (selection screen)
*gelecek bilgiye göre internal tabloyu Read Table komutu ile okuyun ve ekrana yazdırın. (Kullanıcı 4
*girdiyse internal tablonun 4. Satiri Read Table komutu ile okunup ekrana yazdırılacak) (Parametre için
*selection screen oluşturun ve başlığını tanımlayın).


PARAMETERS: sayi TYPE n LENGTH 2.

TYPES: BEGIN OF gty_ogrenci,
         id         TYPE n LENGTH 2,
         ogr_adi    TYPE c LENGTH 20,
         ogr_soyadi TYPE c LENGTH 20,
         ders       TYPE c LENGTH 20,
         not        TYPE n LENGTH 3,
         basari     TYPE c  LENGTH 8,
       END OF gty_ogrenci.

DATA: gs_ogrenci TYPE gty_ogrenci,
      gt_table   TYPE TABLE OF gty_ogrenci.

START-OF-SELECTION.

  gs_ogrenci-id         = 01.
  gs_ogrenci-ogr_adi    = 'ahmet'.
  gs_ogrenci-ogr_soyadi = 'demir'.
  gs_ogrenci-ders       = 'mathe'.
  gs_ogrenci-not        = 75.
  gs_ogrenci-basari     = 'basarili'.

  APPEND gs_ogrenci TO gt_table.
  CLEAR: gs_ogrenci.

  gs_ogrenci-id         = 02.
  gs_ogrenci-ogr_adi    = 'mehmet'.
  gs_ogrenci-ogr_soyadi = 'toy'.
  gs_ogrenci-ders       = 'bio'.
  gs_ogrenci-not        = 60.
  gs_ogrenci-basari     = 'basarili'.

  APPEND gs_ogrenci TO gt_table.
  CLEAR: gs_ogrenci.

  gs_ogrenci-id         = 03.
  gs_ogrenci-ogr_adi    = 'kamil'.
  gs_ogrenci-ogr_soyadi = 'koc'.
  gs_ogrenci-ders       = 'kimya'.
  gs_ogrenci-not        = 40.
  gs_ogrenci-basari     = 'basarisiz'.

  APPEND gs_ogrenci TO gt_table.
  CLEAR: gs_ogrenci.

  gs_ogrenci-id         = 04.
  gs_ogrenci-ogr_adi    = 'kazim'.
  gs_ogrenci-ogr_soyadi = 'tay'.
  gs_ogrenci-ders       = 'tarih'.
  gs_ogrenci-not        = 35.
  gs_ogrenci-basari     = 'basarisiz'.

  APPEND gs_ogrenci TO gt_table.
  CLEAR: gs_ogrenci.

  gs_ogrenci-id         = 05.
  gs_ogrenci-ogr_adi    = 'erdem'.
  gs_ogrenci-ogr_soyadi = 'kilinc'.
  gs_ogrenci-ders       = 'fizik'.
  gs_ogrenci-not        = 100.
  gs_ogrenci-basari     = 'basarili'.

  APPEND gs_ogrenci TO gt_table.
  CLEAR: gs_ogrenci.

  gs_ogrenci-id         = 06.
  gs_ogrenci-ogr_adi    = 'ayşe'.
  gs_ogrenci-ogr_soyadi = 'tez'.
  gs_ogrenci-ders       = 'cografya'.
  gs_ogrenci-not        = 74.
  gs_ogrenci-basari     = 'basarili'.

  APPEND gs_ogrenci TO gt_table.
  CLEAR: gs_ogrenci.

  gs_ogrenci-id         = 07.
  gs_ogrenci-ogr_adi    = 'zeynep'.
  gs_ogrenci-ogr_soyadi = 'halici'.
  gs_ogrenci-ders       = 'türkce'.
  gs_ogrenci-not        = 45.
  gs_ogrenci-basari     = 'basarisiz'.

  APPEND gs_ogrenci TO gt_table.
  CLEAR: gs_ogrenci.

  gs_ogrenci-id         = 08.
  gs_ogrenci-ogr_adi    = 'hakan'.
  gs_ogrenci-ogr_soyadi = 'sayan'.
  gs_ogrenci-ders       = 'ingilizce'.
  gs_ogrenci-not        = 85.
  gs_ogrenci-basari     = 'basarili'.

  APPEND gs_ogrenci TO gt_table.
  CLEAR: gs_ogrenci.

  gs_ogrenci-id         = 09.
  gs_ogrenci-ogr_adi    = 'yavuz'.
  gs_ogrenci-ogr_soyadi = 'sayici'.
  gs_ogrenci-ders       = 'almanca'.
  gs_ogrenci-not        = 63.
  gs_ogrenci-basari     = 'basarili'.

  APPEND gs_ogrenci TO gt_table.
  CLEAR: gs_ogrenci.

  gs_ogrenci-id         = 10.
  gs_ogrenci-ogr_adi    = 'cicek'.
  gs_ogrenci-ogr_soyadi = 'kos'.
  gs_ogrenci-ders       = 'bio'.
  gs_ogrenci-not        = 40.
  gs_ogrenci-basari     = 'basarisiz'.

  APPEND gs_ogrenci TO gt_table.
  CLEAR: gs_ogrenci.

 CASE sayi.
 	WHEN 1.
    READ TABLE gt_table INTO gs_ogrenci INDEX 1.
    WRITE: gs_ogrenci-id, gs_ogrenci-ogr_adi, gs_ogrenci-ogr_soyadi, gs_ogrenci-ders, gs_ogrenci-not, gs_ogrenci-basari.
 	WHEN 2.
    READ TABLE gt_table INTO gs_ogrenci INDEX 2.
    WRITE: gs_ogrenci-id, gs_ogrenci-ogr_adi, gs_ogrenci-ogr_soyadi, gs_ogrenci-ders, gs_ogrenci-not, gs_ogrenci-basari.
 	WHEN 3.
    READ TABLE gt_table INTO gs_ogrenci INDEX 3.
    WRITE: gs_ogrenci-id, gs_ogrenci-ogr_adi, gs_ogrenci-ogr_soyadi, gs_ogrenci-ders, gs_ogrenci-not, gs_ogrenci-basari.
 	WHEN 4.
    READ TABLE gt_table INTO gs_ogrenci INDEX 4.
    WRITE: gs_ogrenci-id, gs_ogrenci-ogr_adi, gs_ogrenci-ogr_soyadi, gs_ogrenci-ders, gs_ogrenci-not, gs_ogrenci-basari.
 	WHEN 5.
    READ TABLE gt_table INTO gs_ogrenci INDEX 5.
    WRITE: gs_ogrenci-id, gs_ogrenci-ogr_adi, gs_ogrenci-ogr_soyadi, gs_ogrenci-ders, gs_ogrenci-not, gs_ogrenci-basari.
 	WHEN 6.
    READ TABLE gt_table INTO gs_ogrenci INDEX 6.
    WRITE: gs_ogrenci-id, gs_ogrenci-ogr_adi, gs_ogrenci-ogr_soyadi, gs_ogrenci-ders, gs_ogrenci-not, gs_ogrenci-basari.
 	WHEN 7.
    READ TABLE gt_table INTO gs_ogrenci INDEX 7.
    WRITE: gs_ogrenci-id, gs_ogrenci-ogr_adi, gs_ogrenci-ogr_soyadi, gs_ogrenci-ders, gs_ogrenci-not, gs_ogrenci-basari.
 	WHEN 8.
    READ TABLE gt_table INTO gs_ogrenci INDEX 8.
    WRITE: gs_ogrenci-id, gs_ogrenci-ogr_adi, gs_ogrenci-ogr_soyadi, gs_ogrenci-ders, gs_ogrenci-not, gs_ogrenci-basari.
 	WHEN 9.
    READ TABLE gt_table INTO gs_ogrenci INDEX 9.
    WRITE: gs_ogrenci-id, gs_ogrenci-ogr_adi, gs_ogrenci-ogr_soyadi, gs_ogrenci-ders, gs_ogrenci-not, gs_ogrenci-basari.
 	WHEN 10.
    READ TABLE gt_table INTO gs_ogrenci INDEX 10.
    WRITE: gs_ogrenci-id, gs_ogrenci-ogr_adi, gs_ogrenci-ogr_soyadi, gs_ogrenci-ders, gs_ogrenci-not, gs_ogrenci-basari.
 	WHEN OTHERS.
    MESSAGE 'Lütfen 0-10 arası bir sayı giriniz!' TYPE 'I'.
 ENDCASE.
