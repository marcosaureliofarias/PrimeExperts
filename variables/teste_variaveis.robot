*** Settings ***
Documentation    Meu teste de variaveis
Library    Collections

*** Variables ***
${MENSAGEM}    Hello world!
${NUMERO}    ${10}
${BOLLEAN}    ${true}
&{PESSOA}    nome=marcos    sobrenome=aurelio    idade=30
@{FRUTAS}    banana    maca    laranja

*** Test Cases ***

Meu teste de impressao de mensagem no terminal
    Logar no terminal uma mensagem
Meu teste imprimindo um dicionario de PESSOA
    Logar no meu terminal uma PESSOA

Meu teste imprimindo uma lista de FRUTAS
    Logar no meu terminal uma lista de FRUTAS

*** Keywords ***
Logar no terminal uma mensagem
    Log To Console    ${\n}
    Log To Console    ${MENSAGEM}

Logar no meu terminal uma PESSOA
    Log To Console    ${\n}
    Log To Console    ${PESSOA}
    Log To Console    ${\n}
    Log     ${PESSOA.nome} ${PESSOA.sobrenome} ${PESSOA.idade} anos!

Logar no meu terminal uma lista de FRUTAS
    ${nova_fruta}    Set Variable    morango
    Log To Console    ${\n}
    Log To Console    ${FRUTAS} ${nova_fruta}
    Log Many          @{FRUTAS} ${nova_fruta}
    Log To Console    ${nova_fruta}
