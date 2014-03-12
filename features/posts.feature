Feature: Questions

	Background:
		Given there is a post

	Scenario: Listing Posts
		When I visit the homepage
		Then I should see a post

	Scenario: Creating Posts
		Given I want to create a new post
		When I submit  a form
		Then I can see it in the homepage
