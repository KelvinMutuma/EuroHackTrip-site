class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.string :email
      t.string :website
      t.text :content
      t.references :posts, index: true
      t.boolean :approved

      t.timestamps
    end
  end
end
