class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :body, null: false
      t.references :creator, null: false, foreign_key: { to_table: :users }
      t.references :board, null: false, foreign_key: true

      t.timestamps
    end
  end
end
