# encoding: UTF-8
User.create(email: 'admin@test.com', password: ENV['DEFAULT_PASSWORD'], password_confirmation: ENV['DEFAULT_PASSWORD'])
User.create(email: 'faker@test.com', password: ENV['DEFAULT_PASSWORD'], password_confirmation: ENV['DEFAULT_PASSWORD'])
User.create(email: 'test@test.com', password: ENV['DEFAULT_PASSWORD'], password_confirmation: ENV['DEFAULT_PASSWORD'])
3.times do
  User.create(email: Faker::Internet.email, password: ENV['DEFAULT_PASSWORD'], password_confirmation: ENV['DEFAULT_PASSWORD'])
end

['Moda Íntima', 'Moda Praia', 'Fitness', 'Pijamas', 'Outlet'].map do |name|
  Category.create(name: name)
end

[
  {
    "title": "Quais são as opções de pagamento disponíveis?",
    "response": "Aceitamos pagamentos por cartão de crédito, débito, transferência bancária, boleto bancário, PayPal e Apple Pay."
  },
  {
    "title": "Quais são os prazos de entrega?",
    "response": "Os prazos de entrega variam de acordo com a localidade de destino. Em média, o tempo de entrega é de X a Y dias úteis dentro do país."
  },
  {
    "title": "É possível rastrear o meu pedido enviado pelos Correios?",
    "response": "Sim, todos os pedidos enviados pelos Correios possuem um código de rastreamento. Você receberá por e-mail o código de rastreamento para acompanhar o status da entrega."
  },
  {
    "title": "Existe algum custo adicional para o envio pelos Correios?",
    "response": "Sim, o custo do envio é calculado com base no peso da encomenda, destino e tipo de serviço escolhido. Durante o checkout, você poderá visualizar o valor estimado do frete antes de finalizar o pedido."
  },
  {
    "title": "Vocês realizam envios internacionais?",
    "response": "Sim, realizamos envios internacionais para diversos países. Os prazos de entrega e custos de envio podem variar. Verifique as opções disponíveis e os custos específicos durante o checkout."
  },
  {
    "title": "Quais são os principais materiais utilizados nos produtos?",
    "response": "Trabalhamos com materiais de alta qualidade, como renda, seda, algodão, microfibra e tecidos tecnológicos para moda praia."
  },
  {
    "title": "Qual é a variedade de tamanhos disponíveis para os produtos?",
    "response": "Oferecemos uma ampla gama de tamanhos, desde convencionais até plus size. Consulte a tabela de tamanhos em cada produto para encontrar o tamanho adequado."
  },
  {
    "title": "Vocês oferecem diferentes estilos e designs?",
    "response": "Sim, nossa coleção inclui uma variedade de estilos e designs, desde lingeries até moda praia e roupas de dormir, para atender diferentes preferências e ocasiões."
  }
].each do |question|
  Question.create!(title: question[:title], response: question[:response])
end
