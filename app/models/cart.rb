class Cart < ActiveRecord::Base
  has_many :line_items, dependent: :destroy

  def add_deal(deal_id)
   current_item = line_items.find_by(deal_id: deal_id)
   if current_item
   current_item.quantity += 1
   else
   current_item = line_items.build(deal_id: deal_id)
   end
   current_item
  end

end
