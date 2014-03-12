Given(/^there is a post$/) do
  @post = Post.create(title: 'My first pony', body: "This is the first post on the page")
end

When(/^I visit the homepage$/) do
    visit '/'
end

Then(/^I should see a post$/) do
  expect(page).to have_content(@post.title)
end