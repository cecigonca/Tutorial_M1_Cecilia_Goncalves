extends Node2D

var valor = 0
var numero = 0 #não pode ter acento
var lista = [] #não estava declarado como variável
var cont #variável não estava declarada
var nome #variável não estava declarada

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	#$LineEdit.text = nome
	numero = int($LineEdit.get_text()) #não pode ter acento
	nome = $LineEdit.get_text() 
	#$LineEdit.text = nome --> para coletar os dados precisa do comando ".get_text"

func _on_Button2_pressed():
	#Incremento o número inserido pelo usuário
	for i in range(10): 
		numero+=i #letra minúscula
		lista.append(numero) #coloquei o append para adicionar a variável número na lista
	$Label.text = str(lista) #str quando é text (label só aceita str) e lista porque é o o formato que tem q aparecer


func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	cont = 0 #variável não estava declarada
	for i in len(lista): #mudei para for porque o "for" pode usar uma variável indefinida
		if i%2 == 1: 
			cont += 1
		if cont != 0:
			$Label2.text = str(nome) + "baldo" #label só aceita str
