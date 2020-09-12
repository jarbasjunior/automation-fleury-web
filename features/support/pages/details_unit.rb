class DetailsUnitPage < SitePrism::Page
  include Capybara::DSL
  element :title_unit, :xpath, '//h1'

  def title
    page.has_xpath?('//img')
    page.title
  end

  def label_title_unit
    title_unit.text
  end
end
