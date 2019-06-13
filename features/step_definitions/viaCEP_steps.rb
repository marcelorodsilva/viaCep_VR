Quando("Realizo a chamada da api com um CEP válido {string}") do |cep|
    @viaCep = HTTParty.get("https://viacep.com.br/ws/#{cep}/json/")
  end
  
  Entao("A api retorna as informacoes do CEP pequisado e imprime codigo ibge") do
    expect(@viaCep.code).to eql 200
    puts 'IBGE:' + @viaCep.parsed_response['ibge']
  end
  
  Quando("Realizo a chamada da api com um CEP {string} invalido") do |cep|
    @viaCep = HTTParty.get("https://viacep.com.br/ws/#{cep}/json/")
  end
  
  Então("A api retorna que o CEP pequisado e invalido") do
    expect(@viaCep.code).to eql 400
  end