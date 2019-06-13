#language: pt
Funcionalidade: Consulta na api ViaCep
Cenário: Fazer consulta a api com um CEP válido e imprimir o código ibge 
Quando Realizo a chamada da api com um CEP válido "08490450"
Entao A api retorna as informacoes do CEP pequisado e imprime codigo ibge


Esquema do Cenario: Fazer consulta a api com um CEP invalido
Quando Realizo a chamada da api com um CEP <CEP> invalido 
Então A api retorna que o CEP pequisado e invalido
Exemplos:
    |CEP|
    |'088848900'|
    |'0765656777'|