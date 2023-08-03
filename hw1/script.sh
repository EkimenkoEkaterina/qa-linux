#!/bin/bash
#1) Посмотреть где я -
pwd
#2) Создать папку -
mkdir katename
#3) Зайти в папку -
cd katename
#4) Создать 3 папки -
mkdir 1name 2name 3name
#5) Зайти в любую папку -
cd 1name
#6) Создать 5 файлов (3 txt, 2 json)
touch 1document.txt 2document.txt 3document.txt 4document.json 5document.json
#7) Создать 3 папки
mkdir foldername1 foldername2 foldername3
#8) Вывести список содержимого папки
ls -l
#9) + Открыть любой txt файл
nano 1document.txt
#10) + написать туда что-нибудь, любой текст.
#11) + сохранить и выйти.
Ctrl+O сохранить
Ctrl+X выйти
#12) Выйти из папки на уровень выше
cd ..

#13) переместить любые 2 файла, которые вы создали, в любую другую папку.
mv 1name/1document.txt 1name/2document.txt 2name/
#14) скопировать любые 2 файла, которые вы создали, в любую другую папку.
cp -r 1name/foldername1 1name/foldername2 3name/

#15) Найти файл по имени
find katename/1name/ -name "*doc*txt"

#16) просмотреть содержимое в реальном времени (команда grep) изучите как она работает.
grep -r -i принц .

tail -f 1document.txt | grep принц

#17) вывести несколько первых строк из текстового файла
head -n3 1document.txt
head 1document.txt

#18) вывести несколько последних строк из текстового файла
tail -n3 1document.txt
tail 1document.txt

#19) просмотреть содержимое длинного файла (команда less) изучите как она работает.
less 1document.txt

#20) вывести дату и время
date
_______________________________________________________________________________

#1) Отправить http запрос на сервер.
curl http://162.55.220.72:5006/terminal-hw-request

curl 'http://162.55.220.72:5005/get_method?name=kate&age=33'

#2) Написать скрипт который выполнит автоматически пункты 3, 4, 5, 6, 7, 8, 13
#!/bin/bash
cd ~/
mkdir kate_test_scrip
cd kate_test_scrip
mkdir 1name 2name 3name
cd 1name
touch 1document.txt 2document.txt 3document.txt 4document.json 5document.json
mkdir foldername1 foldername2 foldername3
ls -l
cd ..
mv 1name/1document.txt 1name/2document.txt 2name/
