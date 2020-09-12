class UnitsPage < SitePrism::Page
  include Capybara::DSL
  element :facilities_filter, :xpath, "//div[@id='checkoox-select-facilities']/div"
  element :details_first_card, :xpath, "(//div[text()='Ver detalhes'])[1]"
  element :first_unit, :xpath, '(//h3)[1]'
  element :list_facilities_in_first_card, :xpath,
          "(//div[@class='unit-cellcomponentstyle__UnitCellStyled-sc-1rcmx1c-0 juXfhN'])[1]/div[1]/div"

  def title
    page.has_xpath?("//div[@id='checkoox-select-facilities']/div")
    page.title
  end

  def open_facilities_filter
    facilities_filter.click
  end

  def select_facilities(facilities)
    find(:xpath, "//input[@value='#{facilities}']/../..//label[text()='#{facilities}']").click
  end

  def facilities_in_first_card
    list_facilities_in_first_card.text
  end

  def name_first_unit
    first_unit.text
  end

  def view_details_first_card
    details_first_card.click
  end
end
