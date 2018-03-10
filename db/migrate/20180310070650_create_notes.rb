class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :title
      t.text :content
      t.string :url
      t.references :user, foreign_key: true
      t.string :kind
      t.string :slug

      t.timestamps
    end
  end
end
