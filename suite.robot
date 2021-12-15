*** Settings ***
Resource        resources/base.robot

Test Setup    Start Session
Test Teardown    Close Session

*** Test Cases ***
Ver meu saldo 
    Mostra saldo
    Meu saldo deve ser de    R$ 5.500,00