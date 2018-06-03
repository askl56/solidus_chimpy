class AddSubscribedToSpreeUsers < ActiveRecord::Migration[4.2]
  def change
    change_table Spree.user_class.table_name.to_sym do |t|
      t.boolean :subscribed
    end
  end
end
