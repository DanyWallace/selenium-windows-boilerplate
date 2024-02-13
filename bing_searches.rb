require "selenium-webdriver"
require "redis"
require "net/http"

# 
data_dir_arg_1 = '--user-data-dir=C:\data\chromium.p\dany.lts'
options = Selenium::WebDriver::Chrome::Options.new
options.add_argument(data_dir_arg_1)

driver = Selenium::WebDriver.for :chrome, options: options
driver.navigate.to "https://trends.google.com/trends/trendingsearches/daily?geo=US&hl=en-US"
sleep 2

top_searches = Array.new
driver.find_elements(class: "details-top").each { |b| 
	top_searches << b.text
}

puts "Top searches for today:\n#{top_searches}"

top_searches[0..10].each_with_index do |search, i|
	driver.navigate.to "https://bing.com"
	sleep rand(2..4)
	driver.action.send_keys(search).perform
	sleep rand(2..4)
	driver.action.send_keys("\n").perform
	sleep rand(5..9)
end
#sleep 20