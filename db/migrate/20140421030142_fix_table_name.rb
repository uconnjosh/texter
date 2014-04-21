class FixTableName < ActiveRecord::Migration
 def change
    create_table :messages do |t|
    	t.column :body, :text
    	t.column :to, :string
    	t.column :from, :string
    end
  end
end
