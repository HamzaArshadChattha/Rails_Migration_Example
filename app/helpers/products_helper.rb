module ProductsHelper
    def price_column_present
        Product.column_names.include? 'price'
    end
end
