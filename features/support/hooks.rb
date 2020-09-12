Before do
  # instancias dos objetos que fazem referencias as pages do projeto

  # sections
  @menu = MenuPage.new

  # pages
  @home = HomePage.new
  @units = UnitsPage.new
  @details_unit = DetailsUnitPage.new

  page.current_window.resize_to(1440, 900)

  @home.load
  expect(@home.title).to eql 'Fleury Medicina e Saúde | Excelência em Diagnóstico'
end

After do |scenario|
  # apos o fim de cada cenario, eh removido do seu nome caracteres especiais
  # e eh concatenado o status do teste ao seu nome. e por fim serah utilizado
  # como nome da captura de tela
  file_name = scenario.name.gsub(%r{([_@#!%()\-=;><,{}\~\[\]\./\?\"\*\^\$\+\-]+)}, '')
  file_name = scenario.status.to_s.gsub(/[:]/, '') + '_' + file_name.downcase.gsub(/[ ]/, '_')
  screenshot_file = page.save_screenshot("log/screenshots/#{file_name}.png")
  embed(screenshot_file, 'image/png', file_name)
end
