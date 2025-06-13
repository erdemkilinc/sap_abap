*&---------------------------------------------------------------------*
*& Report ZEK_PACKAGES_A2_87
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zek_packages_a2_87.

*Alıştırma -2: Yeni bir program oluşturun. 1 adet parametre tanımlayın ve kullanıcıdan 1 ID alin.
*Program içerisinde bir satir tanımlayın. Satirin hücreleri sırasıyla “Öğrenci ID”, “Öğrenci Adi”, “Öğrenci
*Soyadı”, “Ders”, “Alınan Not” ve “Basari Durumu” olsun. Bu satir ile ayni yapıya sahip bir internal tablo
*tanımlayın. Satiri kendi üreteceğiniz veriyle 10 kere doldurun ve her doldurmadan sonra Append
*komutu ile internal tabloya kaydedin. Daha sonra secim ekranından (selection screen) gelecek bilgiye
*göre internal tabloyu Read Table komutu ile okuyun ve ekrana yazdırın. (Kullanıcı hangi ID’yi girdiyse
*tablodaki ilgili satir Read Table komutu ile okunup ekrana yazdırılacak) (Parametre için selection screen
*oluşturun ve başlığını tanımlayın).


PARAMETERS : id TYPE n LENGTH 3.

TYPES: BEGIN OF gty_okul,
         ogr_id    TYPE n LENGTH 3,
         ogr_ad    TYPE c LENGTH 15,
         ogr_soyad TYPE c LENGTH 15,
         ders      TYPE c LENGTH 15,
         ders_not  TYPE n LENGTH 3,
         basari    TYPE c LENGTH 10,
       END OF gty_okul.

DATA: gs_okul  TYPE gty_okul,
      gt_table TYPE TABLE OF gty_okul.

START-OF-SELECTION.

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




  CASE id.
    WHEN 1.
      READ TABLE gt_table INTO gs_okul INDEX 1.
      WRITE: gs_okul-ogr_id, gs_okul-ogr_ad, gs_okul-ogr_soyad, gs_okul-ders,gs_okul-ders_not, gs_okul-basari .
    WHEN 2.
      READ TABLE gt_table INTO gs_okul INDEX 2.
      WRITE: gs_okul-ogr_id, gs_okul-ogr_ad, gs_okul-ogr_soyad, gs_okul-ders,gs_okul-ders_not, gs_okul-basari .
    WHEN 3.
      READ TABLE gt_table INTO gs_okul INDEX 3.
      WRITE: gs_okul-ogr_id, gs_okul-ogr_ad, gs_okul-ogr_soyad, gs_okul-ders,gs_okul-ders_not, gs_okul-basari .
    WHEN 4.
      READ TABLE gt_table INTO gs_okul INDEX 4.
      WRITE: gs_okul-ogr_id, gs_okul-ogr_ad, gs_okul-ogr_soyad, gs_okul-ders,gs_okul-ders_not, gs_okul-basari .
    WHEN 5.
      READ TABLE gt_table INTO gs_okul INDEX 5.
      WRITE: gs_okul-ogr_id, gs_okul-ogr_ad, gs_okul-ogr_soyad, gs_okul-ders,gs_okul-ders_not, gs_okul-basari .
    WHEN 6.
      READ TABLE gt_table INTO gs_okul INDEX 6.
      WRITE: gs_okul-ogr_id, gs_okul-ogr_ad, gs_okul-ogr_soyad, gs_okul-ders,gs_okul-ders_not, gs_okul-basari .
    WHEN 7.
      READ TABLE gt_table INTO gs_okul INDEX 7.
      WRITE: gs_okul-ogr_id, gs_okul-ogr_ad, gs_okul-ogr_soyad, gs_okul-ders,gs_okul-ders_not, gs_okul-basari .
    WHEN 8.
      READ TABLE gt_table INTO gs_okul INDEX 8.
      WRITE: gs_okul-ogr_id, gs_okul-ogr_ad, gs_okul-ogr_soyad, gs_okul-ders,gs_okul-ders_not, gs_okul-basari .
    WHEN 9.
      READ TABLE gt_table INTO gs_okul INDEX 9.
      WRITE: gs_okul-ogr_id, gs_okul-ogr_ad, gs_okul-ogr_soyad, gs_okul-ders,gs_okul-ders_not, gs_okul-basari .
    WHEN 10.
      READ TABLE gt_table INTO gs_okul INDEX 10.
      WRITE: gs_okul-ogr_id, gs_okul-ogr_ad, gs_okul-ogr_soyad, gs_okul-ders,gs_okul-ders_not, gs_okul-basari .
    WHEN OTHERS.
      MESSAGE 'Lütfen 0-10 arası bir sayı giriniz! ' TYPE 'I'.
  ENDCASE.
