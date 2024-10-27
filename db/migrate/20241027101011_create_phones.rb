class CreatePhones < ActiveRecord::Migration[7.2]
  def change
    create_table :phones do |t|
      t.string :tag_id
      t.string :owner
      t.string :phone_model
      t.string :contact
      t.string :status

      t.timestamps
    end
  end
end
