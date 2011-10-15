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
  page.should have_content "Dashboard"
end



Given /^that I am logged in as "([^"]*)" with password "([^"]*)"$/ do |arg1, arg2|
  Given %{that I am at login page}
  When %{I login with "john@example.com" and with password "123123"}
  Then %{I am logged in}
  And %{I am at dashboard page}
end

When /^I click "([^"]*)"$/ do |link|
  click_link link
end

Then /^I logged out$/ do
  page.should have_content "Signed out successfully."
end


















