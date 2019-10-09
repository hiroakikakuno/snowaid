class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.integer :user_id, null: false, foreign_key: true
      t.integer :page
      t.integer :read_log
      t.timestamps
    end
  end
end
