require 'minitest/autorun'
require_relative 'aussie_date'

class AussieDateTest < MiniTest::Test
    def setup
        @aussie_date = AussieDate.new(2019,5,4)
    end

    def test_formal_formatted_date
        assert_equal 'Saturday, May 4th, 2019', @aussie_date.formal_formatted_date
    end

    def test_short_formal_formatted_date
        assert_equal 'May 4th, 2019', @aussie_date.test_short_formal_formatted_date
    end

    def test_short_date
        assert_equal '4/5/2019', @aussie_date.short_date
    end
end

# Create a class for AussieDate
# Keep adding code to create and implement methods until all the tests pass
# Hint methods will look something like:
# def formal_formatted_date
#     @date.strftime("%A %B")
# end

# Beast
# Add more format options to the AussieDate class. For each one
# - add the test 
# - add the implementation