Dado('que clico no menu {string} na navbar') do |menu|
  @menu.access(menu)
end

Quando('eu selecionar a {string}') do |table|
  expect(@units.title).to eql 'Unidades'
  facilities = table.split(', ')
  @units.open_facilities_filter
  facilities.each do |f|
    @units.select_facilities(f)
    expect(@units.facilities_in_first_card).to include(f)
  end
end

Quando('clicar no link Ver detalhes do primeiro card da lista') do
  @first_unit = @units.name_first_unit
  @units.view_details_first_card
  expect(Units.new.search).to eql '200'
end

Quando('devo visualizar o nome da {string} na tela de detalhes da unidade') do |unit|
  expect(@first_unit).to eql unit
  expect(@details_unit.title).to eql "Unidade #{@first_unit} › Laboratórios | Fleury Medicina e Saúde"
  expect(@details_unit.label_title_unit).to eql @first_unit
end
