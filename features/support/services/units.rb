class Units
  include HTTParty
  base_uri CONFIG['url_api']

  # considerei o "/_search" como um endpoint para ter base no carregamento completo da pagina
  # alguns metodos nativos do capybara como o page.has_css? e page.has_xpath? nao tiveram
  # a eficacia desejada quando utilizados na espera de alguns elementos. desta maneira preferi
  # fazer a requisicao para que a automacao utilizasse exatamente o mesmo tempo da aplicacao. e
  # assim nao tive mais problemas com espera neste caso especifco
  def search
    self.class.post('/_search').parsed_response
    self.class.post('/_search').response.code
  end
end
