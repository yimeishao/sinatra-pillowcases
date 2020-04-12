class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t| 
      t.string :name 
      t.string :date 
      t.string :sign 
      t.string :notes
      t.integer :user_id 
    end 
  end
end
