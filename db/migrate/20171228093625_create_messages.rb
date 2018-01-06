class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.text :text
      t.references :messageable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
