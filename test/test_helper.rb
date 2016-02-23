ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end


# /candidates
# Based on a candidates table, with at least name, hometown, district, and party attributes
# index action
# show action
# create action
# /voters
# Based on a voters table, with at least name, party, and token attributes
# create action
# show action, with token authentication to prove that you are the voter
# update action, with token authentication to prove that you are the voter
# /votes
# Based on a votes table, with at least voter_id and candidate_id attributes
# Each voter can cast at most one vote, period.
# create action, with token authentication to show that you are the voter
# destroy action, with token authentication to show that you are the voter
# index action (which shows all candidates and a number of votes for each; yes, this last part requires extra reading)
