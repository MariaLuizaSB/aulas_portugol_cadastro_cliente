Algoritmo "semnome"

Var

   nome_cliente: caracter
   codigo: inteiro
   idade_cliente: inteiro
   ender_cliente: caracter
   email_cliente: caracter


   //começo dos procedimentos para solicitar dados-----------------------------------------------
procedimento solicitar_nome
inicio
   escreval ("Digite o seu nome:")
   leia (nome_cliente)
fimprocedimento

funcao valide_nome (nome_cliente: caracter) : logico
inicio
   se (nome_cliente= "") entao
      retorne FALSO
   senao
      retorne VERDADEIRO
   fimse
fimfuncao

//solicitar idade------------------------------------------------
procedimento solicitar_idade
inicio
   escreval ("Coloque sua idade:")
   leia (idade_cliente)
fimprocedimento

funcao valide_idade (idade_cliente: inteiro) : logico
inicio
   se (idade_cliente <= 0) ou (idade_cliente <18) entao
      retorne FALSO
   senao
      retorne VERDADEIRO
   fimse
fimfuncao

//solicitar o email----------------------------------------------------
procedimento solicitar_email
inicio
   escreval ("Digite o seu e-mail:")
   leia (email_cliente)
fimprocedimento

funcao valide_email (email_cliente: caracter) : logico
inicio
   se (email_cliente= "") entao
      retorne FALSO
   senao
      retorne VERDADEIRO
   fimse
fimfuncao

//solicitar o endereço do cliente-------------------------------------
procedimento solicitar_ender
inicio
   escreval ("Seu endereço:")
   leia (ender_cliente)
fimprocedimento

funcao valide_ender (solicitar_ender: caracter) : logico
inicio
   se (ender_cliente= "") entao
      retorne FALSO
   senao
      retorne VERDADEIRO
   fimse
fimfuncao

//apresentar os dados do cliente, parte q vai aparecer para o cliente
//onde os procedimentos vão se encaixar

inicio
   escreval ("DADOS DO CLIENTE")
   escreval
   solicitar_nome

   enquanto (valide_nome (nome_cliente) = FALSO) faca
      escreval ("Nome inválido!")
      solicitar_nome()
   fimenquanto

   solicitar_idade

   enquanto (valide_idade (idade_cliente) = FALSO) faca
      escreval ("Idade inválida!")
      solicitar_idade()
   fimenquanto

   solicitar_email

   enquanto (valide_email (email_cliente) = FALSO) faca
      escreval ("E-mail inválido!")
      solicitar_email()
   fimenquanto

   solicitar_ender

   enquanto (valide_ender (ender_cliente) = FALSO) faca
      escreval ("Endereço inválido!")
      solicitar_ender()
   fimenquanto

   limpatela

   codigo <- randi (0123456789) + 1

   escreval ("-------------------------------------------------")
   escreval ("DADOS DO CLIENTE")
   escreval ("-------------------------------------------------")
   escreval ("Código de usuário:", codigo)
   escreval
   escreval ("Nome:",  nome_cliente)
   escreval ("Idade:",  idade_cliente)
   escreval ("E-mail:",  email_cliente)
   escreval ("Endereço:",  ender_cliente)



Fimalgoritmo