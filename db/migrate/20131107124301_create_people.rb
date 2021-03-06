class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :picture
      t.string :city
      t.string :link
      t.references :country, index: true

      t.timestamps
    end
  end
end
