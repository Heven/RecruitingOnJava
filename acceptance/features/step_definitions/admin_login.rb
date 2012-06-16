And /^I am on the admin page$/ do
  visit("/admin")
end

Then /^I click "(.*?)" button$/ do |button|
    page.find_button(button).click
end

And /^I should see basic information list$/ do
  page.should have_content("branny")
end
