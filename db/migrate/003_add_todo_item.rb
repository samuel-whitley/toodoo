class AddTodoItem < ActiveRecord::Migration
  def self.up 
    create_table :todo_items do |t|
      t.string :name
      t.integer :todo_list_id
      t.datetime :due_date
      t.boolean :complete, default: false
    end
  end
  def self.down
    drop_table :todo_items
  end
end

