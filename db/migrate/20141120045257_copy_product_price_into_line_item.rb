class CopyProductPriceIntoLineItem < ActiveRecord::Migration
  def up
    add_column :line_items, :price, :decimal, precision: 8, scale: 2
    
    say_with_time "Updating prices..." do
      LineItem.all.each do |item|
        item.price = item.product.price
      end
    end
  end
  
  def down
    remove_column :line_items, :price
  end
end
