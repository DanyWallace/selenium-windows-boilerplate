require "selenium-webdriver"

# See the following for newer drivers : https://googlechromelabs.github.io/chrome-for-testing/#stable
# ^ https://edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/*/win64/chrome-win64.zip
# ^ note the '*', and navigate to C:\Users\USERNAME\.cache\selenium\chrome\win64, replace files there if you see an error mentioning such path
# otherwise for older: https://chromedriver.chromium.org/downloads

# remember:
# https://github.com/SeleniumHQ/selenium/wiki/Ruby-Bindings

options = Selenium::WebDriver::Chrome::Options.new
#prefs = {
#  prompt_for_download: false,
#  default_directory: "/path/to/dir"
#}
#options.add_preference(:download, prefs)
#options.add_argument("--user-data-dir=/path/to/your/custom/profile")
data_dir = '--user-data-dir=C:\data\chromium.p\dany.lts'
#options.add_argument('--user-data-dir=C:\data\chromium.p\selenium1')
options.add_argument(data_dir)

# Selenium::WebDriver.logger.level = :debug
driver = Selenium::WebDriver.for :chrome, options: options
#driver = Selenium::WebDriver.for :remote, desired_capabilities: :chrome, url: "http://myserver:4444/wd/hub"
## proxied:
#client = Selenium::WebDriver::Remote::Http::Default.new
#client.proxy = Selenium::Proxy.new(http: "proxy.org:8080")
#driver = Selenium::WebDriver.for :remote, http_client: client

#driver.navigate.to "http://bing.com"
# driver.find_element(:xpath => "//*[@class='checkmark' and contains(text(),'Apple')]")
# driver.element.click
# driver.element.text

# Wait until the element is displayed
#wait = Selenium::WebDriver::Wait.new(timeout: 30)
#wait.until { element.displayed? }
#wait.until { element.displayed == 'text' }

# javascript
#variable = driver.execute_script("return arguments[0].tagName" , element)

driver.navigate.to "http://bing.com"
puts "sleeping"
sleep 10
