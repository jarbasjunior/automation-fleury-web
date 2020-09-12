require 'awesome_print'
require 'capybara'
require 'capybara/cucumber'
require 'httparty'
require 'selenium-webdriver'
require 'site_prism'

CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/#{ENV['ENV_TYPE']}.yml"))

case ENV['BROWSER']
when 'chrome'
  @driver = :selenium_chrome
when 'firefox'
  @driver = :selenium
when 'chrome_headless'
  Capybara.register_driver :selenium_chrome_headless do |app|
    chrome_options = Selenium::WebDriver::Chrome::Options.new.tap do |options|
      options.add_argument '--headless'
      options.add_argument '--disable-gpu'
      options.add_argument '--no-sandbox'
      options.add_argument '--disable-site-isolation-trials'
    end
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: chrome_options)
  end
  @driver = :selenium_chrome_headless
when 'firefox_headless'
  @driver = :selenium_headless
end

Capybara.configure do |config|
  config.default_driver = @driver
  config.app_host = CONFIG['url']
  config.default_max_wait_time = 10
  ap "Application - #{CONFIG['url']}"
  ap "Environment - #{ENV['ENV_TYPE']}"
end

# aqui remove as capturas de tela antes de comecar uma nova rodada de teste
# de modo a evitar de nos atrapalharmos com screenshots antigos
system("rm #{File.join(Dir.pwd + '/log/screenshots/*.png')}")
