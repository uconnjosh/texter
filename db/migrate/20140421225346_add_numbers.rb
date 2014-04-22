class AddNumbers < ActiveRecord::Migration
  def change
    create_table(:numbers) do |t|
      t.string :contact_name
      t.string :phone_number
      t.belongs_to :user
    end
  end
end
