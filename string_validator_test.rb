require 'minitest/autorun'
require_relative 'string_validator'

class StringValidatorTest < MiniTest::Test
    def setup
        @valid_emails = ['dkrishna@att.net',
        'bryanw@comcast.net',
        'muzzy@hotmail.com',
        'jdray@live.com',
        'monopole@yahoo.ca']
        @invalid_emails = ['anicolaoyahoo.com',
        'ournews@outlook',
        'me.com',
        'schwaang',
        'ateniese@macc']
    end

    def test_email_valid
        failure_message = "Failed when checking expected VALID email: "
        @valid_emails.each do |email| 
            assert(StringValidator.valid_email(email) == true, failure_message + email)
        end

        failure_message = "Failed when checking expected INVALID email: "
        @invalid_emails.each do |email| 
            assert(StringValidator.valid_email(email) == false, failure_message + email)
        end
    end

end


# Create a class for StringValidator
# Keep adding code to create and implement methods until all the tests pass
# Hint: use regex https://stackoverflow.com/questions/22993545/ruby-email-validation-with-regex 

# Beast
# Add more validators to the StringValidator class. For each one
# - add the test 
# - add the implementation