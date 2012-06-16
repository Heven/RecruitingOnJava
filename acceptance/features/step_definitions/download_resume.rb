Then /^I click "(.*?)" link$/ do |arg1|
      page.find_button('get candidates').click
end

Then /^I should download resume file$/ do
  pending # express the regexp above with the code you wish you had
end
