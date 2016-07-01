After do |scenario|
  if (scenario.failed?)
    #save_and_open_page
    #print page.html

    screenshot_name = scenario.__id__.to_s + ".png"
    page.driver.browser.save_screenshot("screenshots/#{screenshot_name}")
    embed("screenshots/#{screenshot_name}", "image/png", "Screenshot - Failed")
  end
end