Feature: Questions

	Background:
		Given there is a post

	Scenario: Listing Posts
		When I visit the homepage
		Then I should see a post