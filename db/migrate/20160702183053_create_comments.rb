class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :description
      t.references :person, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
