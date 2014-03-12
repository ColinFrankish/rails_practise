Given(/^I am on the homepage$/) do
  visit '/'
end

Then(/^I should be able to click a button$/) do
  click_button 'Sign Up'
end

Then(/^be directed to the sign up page$/) do
  expect(page).to have_content('Password confirmation')
end
