# devido o acesso aos menus serem estaticos em toda navegacao do site
# foi criada essa page para mapear apenas a secao dos menus (resultado
# de exames, exames oferecidos, convenios e etc.)
class MenuPage < SitePrism::Page
  include Capybara::DSL

  def access(menu)
    find(:xpath, "(//div[text()='#{menu}'])[1]").click
  end
end
