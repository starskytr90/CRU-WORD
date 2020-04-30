#! bin/bash 
# PYTHON MODULÜ KULLANARAK WORDLİST OLUŞTURUCU
clear
echo -e '\e[31m
░█▀█░█▀█░█▀█░░░█▄█░█▀▀░█▀█░█░█
\e[37m░█▀█░█░█░█▀█░░░█░█░█▀▀░█░█░█░█
░▀░▀░▀░▀░▀░▀░░░▀░▀░▀▀▀░▀░▀░▀▀▀
'
echo
sleep 0.5
echo -e '\e[36mCODED BY STAR_SKY'
echo
sleep 0.5
echo -e '
\e[31m[\e[37m01\e[31m]\e[37mTERMUX İÇİN GEREKSİNİMLER
\e[31m[\e[37m02\e[31m]\e[37mLİNUX İÇİN GEREKSİNİMLER
\e[31m[\e[37m03\e[31m]\e[37mWORDLİST OLUŞTURUCU

\e[31m[\e[37m99\e[31m]\e[37mÇIKIŞ
'
echo
sleep 0.6
read -p $'\e[35mSEÇİM YAPINIZ=}' secim
if [[ $secim == 01 || $secim == 1 ]]; then
clear
echo -e '\e[31mKURULUM BAŞLADI\e[37m'
pkg install git -y
pkg install crunch -y
pkg install python python2 -y
pip install wordlist
echo -e '\e[31mKURULUM TAMAMLANDI...'
sleep 1.1
bash cru-word.sh

elif [[ $secim == 02 || $secim == 2 ]]; then
clear                     
echo -e '\e[31mKURULUM BAŞLADI\e[37m'
sudo apt-get install git -y
sudo apt-get install crunch -y
sudo apt-get install python python2 -y
sduo apt-get install python-pip -y
pip install wordlist
echo -e '\e[31mKURULUM TAMAMLANDI...'
sleep 1.1
bash cru-word.sh

elif [[ $secim == 03 || $secim == 3 ]]; then
clear
echo -e '
░█▀▀░█▀▄░█░█░░░░░█░█░█▀█░█▀▄░█▀▄
░█░░░█▀▄░█░█░▄▄▄░█▄█░█░█░█▀▄░█░█
░▀▀▀░▀░▀░▀▀▀░░░░░▀░▀░▀▀▀░▀░▀░▀▀░
'
echo
sleep 0.2
read -p $'\e[37mMİNİMUM KAÇ HANELİ OLSUN=}' minhane
read -p $'\e[37mMAXİMUM KAÇ HANELİ OLSUN=}' maxhane
read -p $'\e[37mİSMİ NE OLSUN=}' ism
read -p $'\e[37mKARIŞTIRILACAK KARAKTERLER=}' karistir
read -p $'\e[37mWORDLİST NEREYE KAYDEDİLSİN \e[31m(\e[34mYOL GİRİNİZ\e[31m) =}' yol
sleep 0.1
echo -e '\e[31mWORDLİST OLUŞTURULUYOR...'
wordlist -m $minhane -M $maxhane -o $ism $karistir
echo -e '\e[36mWORDLİST HAZIRLANDI GEREKLİ YERE TAŞINIYOR...'
sleep 0.4
mv -f $ism $yol
echo -e '\e[31mWORDLİST BAŞARIYLA HAZIRLANDI...'
sleep 1.3
bash cru-word.sh

elif [[ $secim == 99 ]]; then

	clear
	echo -e '\e[31mSTAR_SKY OLARAK İYİ GÜNLER DİLERİM...'
	sleep 0.6
	exit

else
	clear
	echo -e '\e[34mHATALI GİRİŞ YAPTINIZ...'
	echo -e '\e[34mTOOL YENİDEN BAŞLATILIYOR...'
	echo -e '3'
	sleep 0.7
	echo -e '2'
	sleep 0.7
	echo -e '1'
	sleep 0.7
	bash cru-word.sh
fi
