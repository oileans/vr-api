Quando('faço uma requisição para o endpoint de consulta') do
  @response_body = intance_estabelecimentos.get_estabelecimentos
  expect(@response_body.code).to eql(200)
end

Então('a resposta deve conter a chave {string}') do |string|
  expect(@response_body).to include(string)
end

E('imprimo aleatoriamente um tipo de estabelecimento') do
  tipos_estabelecimentos = @response_body['typeOfEstablishment']
  print(tipos_estabelecimentos.sample)
end
