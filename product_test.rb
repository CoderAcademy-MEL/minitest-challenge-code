require 'minitest/autorun'

require_relative 'product'

class ProductTest < MiniTest::Test
    def setup
        @product = Product.new({
            :name => 'Widgit',
            :price => '10.99'
        })
    end

    def test_name
        assert_equal 'Widgit', @product.name
    end

    def test_price
        assert_equal 10.99, @product.price
    end
end
