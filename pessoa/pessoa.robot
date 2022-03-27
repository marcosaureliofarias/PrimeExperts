*** Settings ***
Documentation    Tipo de pessoa

*** Variables ***

${NOME}    Marcos aurelio   
${IDADE}    30 anos
${CIDADE}    Rio de janeiro

*** Test Cases ***

Informar meu nome
    Meu NOME:

Imformar minha idade
    Minha IDADE:

Informar minha cidade
    Minha CIDADE:

*** Keywords ***
Meu NOME:
    Log    ${NOME}

Minha IDADE:
    Log    ${IDADE}


Minha CIDADE:
    Log    ${CIDADE}
