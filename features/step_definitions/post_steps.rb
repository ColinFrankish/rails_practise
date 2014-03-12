Given(/^there is a post$/) do
  @post = Post.create(title: 'My first pony', body: "This is the first post on the page")
end

When(/^I visit the homepage$/) do
    visit '/'
end

Then(/^I should see a post$/) do
  expect(page).to have_content(@post.title)
end

Given(/^I want to create a new post$/) do
  visit '/'
end

When(/^I submit  a form$/) do
  fill_in("post_title", :with => @title)
  fill_in("post_body", :with => @body)
  click_button "Submit new post!"
end

Then(/^I can see it in the homepage$/) do
  expect(page).to have_content(@title)
end

