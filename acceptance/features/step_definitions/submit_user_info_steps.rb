Given /^I am on the submit page$/ do
  visit("/")
end

When /^I submit my information$/ do
  page.fill_in('name', :with => "branny")
  page.fill_in('university', :with => "xjtu")
  page.fill_in('Phone' , :with=>"15877480915")
  page.fill_in('Email' , :with=>"zhoucong07@gmail.com")
  page.fill_in('Major'  , :with=>"software")

  page.find(".btn-primary").click
end

When /^I fill the following information:$/ do |user_info|
    user_info.rows_hash.each do |attribute_name, value|
        page.fill_in(attribute_name, :with =>  value)
    end
    page.find(".submit").click
end



Then /^I should see success message$/ do
  page.should have_content("you have submitted your information successfully")
end


Then /^there should be user in database with the following details:$/ do |user_info|
  pending # express the regexp above with the code you wish you had
end
