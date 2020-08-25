import bs4 as bs
import pymysql
import urllib.request
import numpy as np
import sys

from PyQt5.QtWidgets import *
from PyQt5 import QtWidgets#PyQt5 Kutuphanesınden Widgetleri alma
import matplotlib.pyplot as plt



def Pencere():#Fonksiyon Açma
    app = QtWidgets.QApplication(sys.argv)#Değişkeni uygulama olarak tanımlama
    pencere = QtWidgets.QWidget()#Değişkeni Widget olarak tanımlama
    pencere.setWindowTitle("Programlama 2 Final")#Pencere başlıgını yazma
#%%
    kaynak = urllib.request.urlopen("https://www.ciceksepeti.com/guller").read()
    sayfa = bs.BeautifulSoup(kaynak, 'lxml')

    toplam = 0
    fiyatlardizi = []
    baslıklardizi = []
    fiyatlar = sayfa.find_all("span", {"class": "price__integer-value"})
    basliklar = sayfa.find_all("p", {"class": "products__item-title"})
    for fiyat in fiyatlar:
        fiyat = fiyat.text  # Sadece anlamlı olan veriyi al
        fiyat = fiyat.replace('TL', '')
        fiyat = fiyat.replace('.', '')
        fiyat = ''.join(fiyat.split())
        # split ile ayırdıgın yerleri join ile birleştir Çünkü arada boşluklar var TEST ET GÖRÜCEN BOŞLUKLARI TEMİZLİYOR SPLİT İÇİ BOŞ
        # YANİ BOŞLUK VARSA JOİNİN İÇİNDEKİ İLE BİRLEŞTİR JOİNİNDE İÇİ BOŞ ONLA BİRLEŞTİRİYOR

        fiyatlardizi.append(fiyat)

    for baslik in basliklar:
        baslik = baslik.text  # Sadece anlamlı olan veriyi al

        baslıklardizi.append(baslik)

    combinedata = dict(zip(baslıklardizi, fiyatlardizi))

    conn = pymysql.connect(host="localhost", user="root", passwd="12345678", db="progfinal")

    cur = conn.cursor()
    cursor = conn.cursor(pymysql.cursors.DictCursor)

    name = "cicek_ad"
    name1 = "cicek_fiyat"


    def temizle():
        cursor.execute(
            ''' DELETE FROM cicek''')

        conn.commit()


    temizle()


    def verigüncelle():
        for (name, name1) in zip(baslıklardizi, fiyatlardizi):
            cursor.execute(
                '''INSERT INTO cicek (cicek_ad,cicek_fiyat)
                   VALUES (%s, %s)''',
                (name, name1))

            conn.commit()


    verigüncelle()
#%%
    grid = QGridLayout()


    tw = QTreeWidget()

    tw.setColumnCount(2)
    tw.setHeaderLabels(["Çicek", "Fiyatı"])

    vericekmequery = "SELECT * FROM `cicek`"
    cursor.execute(vericekmequery)

    veri = cursor.fetchall()

    for row in veri:
        l1 = QTreeWidgetItem([row['cicek_ad'], (str(row['cicek_fiyat'])+" TL")])
        tw.addTopLevelItem(l1)
    arraylist = []
    arrayliste = []
    def regresyon():
        a=6


        while a>1:

            x =  np.array(fiyatlardizi).astype(np.float)
            arraylist.append(np.sum(x))

            arrayliste.append(np.sum(arraylist))
            a-=1




    regresyon()

    from sklearn.linear_model import LinearRegression
    linear_reg = LinearRegression()
    x = np.array(arrayliste)
    y = np.array([1, 2, 3, 4, 5])
    x = x.reshape(-1, 1)
    y = y.reshape(-1, 1)
    linear_reg.fit(y, x)

    tahmin = linear_reg.predict([[5]])  # Hangi haftayı tahminlemek istiyorsan burayı degısıyorsun
    print("5.ci haftada kazanılacak tutar", float(tahmin))  # int yazmazsan parantezli olarak gelir yada float

    haftaarray = np.arange(0, 6).reshape(-1, 1)
    plt.scatter(y, x)
    y_head_hafta = linear_reg.predict(haftaarray)
    plt.plot(haftaarray, y_head_hafta, color="red")
    plt.xlabel("ciro")
    plt.ylabel("Hafta")
    plt.show()





    Tanım1=QtWidgets.QLabel("Eğer tüm Çiçeklerden 1'er adet satılırsa kazanılacak para:")
    fiyatlardizia = np.array(fiyatlardizi).astype(np.float)
    fiyatlartoplamı = np.sum(fiyatlardizia)
    sonuc = QtWidgets.QLabel(str(int(fiyatlartoplamı))+" TL")

    Tanım2 = QtWidgets.QLabel("Her hafta bütün çiceklerden 1'er adet satılırsa 5. haftada ulaşılacak kar:")
    sonuc1 = QtWidgets.QLabel(str(int(tahmin))+" TL")


    # Layouta bir layout daha ekleme

    grid.addWidget(tw,0,1)
    grid.addWidget(Tanım1,1,1)
    grid.addWidget(sonuc, 1, 2)
    grid.addWidget(Tanım2, 2, 1)
    grid.addWidget(sonuc1, 2, 2)





    conn.commit()
#%%
    pencere.setLayout(grid)  # Pencere ile Layoutu ilişkilendirme
     # Pencerenin Geometrisini ayarlama
    pencere.show()  # Pencereyi göstermek
    sys.exit(app.exec_())  # Çarpıya basınca çıkış

Pencere()  # Fonksiyonu çalıştırma
