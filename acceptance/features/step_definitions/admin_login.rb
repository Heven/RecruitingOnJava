And /^I am on the admin page$/ do
  visit("/admin")
end

Then /^I click "(.*?)" button$/ do |arg1|
    page.find_button('get candidates').click
end

And /^I should see basic information list$/ do
  page.should have_content("branny")
end
