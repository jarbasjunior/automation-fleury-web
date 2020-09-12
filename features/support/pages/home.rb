class HomePage < SitePrism::Page
  include Capybara::DSL

  def load
    visit '/'
  end

  def title
    page.has_xpath?('//img')
    page.title
  end
end
