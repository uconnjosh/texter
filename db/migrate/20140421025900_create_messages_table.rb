class CreateMessagesTable < ActiveRecord::Migration
  def change
    create_table :messages_tables do |t|
    	t.column :body, :text
    	t.column :to, :string
    	t.column :from, :string
    end
  end
end
