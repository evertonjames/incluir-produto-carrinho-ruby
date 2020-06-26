require 'rspec'
require 'capybara/cucumber'
require 'site_prism'
require 'selenium-webdriver'



Capybara.register_driver :site_prism do |app|
  # comentado para teste  Capybara::Selenium::Driver.new(app, browser: :chrome)

  #alterado para verificar se não retorna erro de acesso negado no servidor
  #
  user_agent = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
    chromeOptions: { args: (%w[ headless disable-gpu hide-scrollbars ] << "--user-agent='#{user_agent}'") }
  )
  Capybara::Selenium::Driver.new(app, browser: :chrome, desired_capabilities: capabilities)

  # # fim da alteracao teste
end

Capybara.configure do |config|
  config.run_server = false
  Capybara.default_driver = :site_prism
  Capybara.page.driver.browser.manage.window.maximize
  config.default_max_wait_time = 6
  config.app_host = 'https://www.casasbahia.com.br/'
end