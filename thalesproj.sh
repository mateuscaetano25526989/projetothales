#!/bin/bash
clear

echo "Digite seus dados:"



function name () {
read -p "Digite seu Nome: " nome
	echo $nome > .cadastro.tmp
grep -E '([[:digit:]]|[[:punct:]])' .cadastro.tmp
if (( $? == 0 )); then
	echo "Nome Incorreto" && name
else
	echo "Nome Correto"
sleep 1 && clear
fi

}
function email (){
read -p "Digite seu Email: " email
	echo $email > .cadastro.tmp
grep -E '^(A-Za-z0-9\.\_\-)+[@][A-Za-z0-9]+(\.com|\.br)|(\.com|\.br)$' .cadastro.tmp
if (( $? == 0 )); then
	echo "Email Correto"
sleep 1 && clear
else
	echo "Email Incorreto" && email
fi
}
function telefone(){
	read -p "Digite seu telefone: " telefone
	echo $telefone > .cadastro.tmp
grep -E '^[(][0-9]{2}[)]9[0-9]{4}-[0-9]{4}' .cadastro.tmp
if (( $? == 0 )); then
	echo "Numero De Telefone Correto"
sleep 1 && clear
else
	echo "Numero De Telefone Incorreto" && telefone
fi
}
function registrog(){
read -p "Digite seu Documento: " rg
	echo $rg > .cadastro.tmp
grep -E "^[0-9]{2}\.[0-9]{3}\.[0-9]{3}-((X|x)|[0-9])" .cadastro.tmp
if (( $? == 0 )); then
	echo "Documento correto"
sleep 1 && clear
else
	echo "Documento incorreto" && registrog
fi
}
function cpf(){
read -p "Digite seu CPF: " cpf
	echo $cpf > .cadastro.tmp
grep -E "^[0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]{2}" .cadastro.tmp
if (( $? == 0 )); then
	echo "CPF Correto"
sleep 1 && clear
else
	echo "CPF Incorreto" && cpf
fi
}
function datanasc(){
read -p "digite sua data de nascimento  (dd/mm/aaaa):" data
	echo $data > .cadastro.tmp
grep -E '^(([0][0-9]|[12][0-9])|[3][01])[/]([0][0-9]|[1][0-2])[/]([0-9]{4})' .cadastro.tmp
if (( $? == 0 )); then
	echo "data de nascimento correta"
sleep 1 && clear
else
	echo "data de nascimento incorreta" &&datanasc
fi
}
function ipa(){
read -p "digite seu ip: " ipa
	echo $ipa > .cadastro.tmp
grep -E '^(((([2]([5][0-5]|[0-4][0-9])|[0-9][0-9])|[0-9])\.)|(1[0-9][0-9]\.)){3}((([2]([5][0-5]|[0-4][0-9])|[0-9][0-9])|[0-9])|[1][0-9][0-9])$' .cadastro.tmp
if (( $? == 0 )); then
	echo "ip correto"
sleep 1 && clear
else
echo "ip incorreto" && ipa
fi
}
function masca(){
read -p "digite a mascara: " mask
echo $mask > .cadastro.tmp
grep -E '^(((([2]([5][0-5]|[0-4][0-9])|[0-9][0-9])|[0-9])\.)|(1[0-9][0-9]\.)){3}((([2]([5][0-5]|[0-4][0-9])|[0-9][0-9])|[0-9])|[1][0-9][0-9])$' .cadastro.tmp
if (( $? == 0 )); then
	echo "mascara correta"
sleep 1 && clear
else
	echo "mascara incorreta" && masca
fi
}
name
email
telefone
registrog
cpf
datanasc
ipa
masca
