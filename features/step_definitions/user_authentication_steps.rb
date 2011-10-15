Given /^that I am at login page$/ do
  visit "/users/sign_in"
end

Given /^user "([^"]*)" with password "([^"]*)" exists$/ do |email, password|
  User.create!(email: email, password: password, password_confirmation: password)
end

When /^I login with "([^"]*)" and with password "([^"]*)"$/ do |email, password|
  fill_in "email", with: email
  fill_in "password", with: password
  click_button ""
end

Then /^I am logged in$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I am at dashboard page$/ do
  pending # express the regexp above with the code you wish you had
end