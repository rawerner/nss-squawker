@wip

And("show me the page") do
  save_and_open_page
end

Given(/^I am on the sign in page$/) do
  visit new_user_session_path
end

When(/^I go to the homepage$/) do
  visit root_path
end

Then(/^I should be on my profile page$/) do
  current_path.should == user_path(@user)
end

Then(/^I should be on jane's profile page$/) do
  user = User.where(username: "jane").first
  current_path.should == user_path(user)
end

When(/^I (?:click|follow) "(.*?)"$/) do |link|
  click_link(link)
end

When(/^I press "(.*?)"$/) do |text|
  click_button(text)
end

Then(/^I should see(?::)? "(.*?)"$/) do |text|
  page.should have_content(text)
end

Then(/^I should not see "(.*?)"$/) do |text|
  page.should_not have_content(text)
end

When(/^I fill in "(.*?)" for "(.*?)"$/) do |content, field|
  fill_in(field, with: content)
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |field, content|
  fill_in(field, with: content)
end

When (/^I upload a file "(.*?)"$/) do |filename|
  attach_file("squeek_image", File.join(Rails.root, "/features/support/files/#{filename}"))
end

When (/^I upload a file with an invalid extension$/) do
  attach_file(:image_url, '../support/files/cat.txt')
end

