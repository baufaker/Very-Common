Given /^that I am at login page$/ do
  visit "/users/sign_in"
end

Given /^user "([^"]*)" with password "([^"]*)" exists$/ do |email, password|
  @user = User.create!(email: email, password: password, password_confirmation: password)
end

When /^I login with "([^"]*)" and with password "([^"]*)"$/ do |email, password|
  fill_in "Email", with: email
  fill_in "Password", with: password
  click_button "Sign in"
end

Then /^I am logged in$/ do
  page.should have_content "Signed in successfully."
end

Then /^I am at dashboard page$/ do
  pending # express the regexp above with the code you wish you had
end