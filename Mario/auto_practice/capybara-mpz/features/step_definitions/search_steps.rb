# coding: utf-8

###### WHEN #############

When (/^I open the testing page$/) do 

  visit('/')
  page.driver.browser.manage.window.maximize
end

When (/^I search for "(.*?)"$/) do |search_txt|

  page.fill_in 'search_query_top', :with => ""
  page.fill_in 'search_query_top', :with => search_txt
  page.find('#search_query_top').native.send_keys(:tab)
end

When (/^I click en search button$/) do 

  page.find('button.btn.btn-default.button-search').click
end 

When (/^I select type of view list$/) do 

  page.find('li#list').click
end

    


######### THEN ###########


Then (/^I should see a search texbox displayed$/) do 

  page.has_selector?('input#search_query_top')
  
end

Then (/^I should see the following number of results "(.*?)"$/) do |result_txt| 

  page.has_selector?('span.heading-counter',:text => result_txt)
  
end

Then (/^I should see that the list view is selected$/) do 

  page.has_selector?('li#list.selected')
  
end

Then (/^I should see the first item "(.*?)"$/) do |item_txt| 

  page.has_selector?('h5 a.product-name',:text => item_txt)
  
end

Then (/^I should see a message saying that "(.*?)" "(.*?)"$/) do |message,item_txt| 

  puts message + "\"" + item_txt + "\""
  page.has_selector?('p.alert.alert-warning',:text => message + "\"" + item_txt + "\"")
  
end



