require "application_system_test_case"

class RestaurantsTest < ApplicationSystemTestCase
	test "visiting the index" do
		visit restaurants_url

		assert_selector "h1", text: "All Restaurants"
		save_and_open_screenshot
	#end

end
