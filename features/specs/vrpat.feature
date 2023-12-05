#language:pt
@vrpat
Funcionalidade:
  Como uma aplicação de serviço
  Quero consultar os dados de produtos e estabelecimentos cadastrados

  Cenário: Consultar e imprimir um tipo de estabelecimento aleatório
    Quando faço uma requisição para o endpoint de consulta
    Então a resposta deve conter a chave "typeOfEstablishment"
    E imprimo aleatoriamente um tipo de estabelecimento
