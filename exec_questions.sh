#!/bin/bash

echo "----------Questao 3----------"
echo "----------THREADS CONTANDO PRIMOS DE 0 A 99999----------"
cd QUESTAO_3
echo""

g++ questao_3.c -o numeros_primos_out -pthread
./numeros_primos_out > saida_questao_3.txt
echo "SAIDAS NO ARQUIVO saida_questao_3.txt na pasta QUESTAO_3"
sleep 5

echo ""
echo ""

echo "----------Questao 4----------"

cd ..
cd QUESTAO_4
echo ""

echo "Fazendo o make do modulo..."
sudo make
sleep 2

echo "Subindo modulo para o Kernel..."
sudo insmod TODO_LKM.ko
echo ""
sleep 1

echo "Listando modulos do computador, para verifcar que esse modulo subiu:"
sleep 2
sudo lsmod
echo ""
sleep 5


echo "Executando arquivo TODO_USER.c"
sudo gcc TODO_USER.c -o out_user
sudo ./out_user
echo ""
sleep 2

echo "Retirando modulo do Kernel"
sudo rmmod TODO_LKM
echo ""
sleep 2

echo "Log do kernel: NO ARQUIVO dmesg_questao4.txt na pasta QUESTAO_4"
dmesg > dmesg_questao4.txt
