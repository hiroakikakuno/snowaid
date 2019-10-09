class CreateCurriculums < ActiveRecord::Migration[5.2]
  def change
    create_table :curriculums do |t|

      t.timestamps
      t.text      :image
      t.text        :title
      t.text        :lesson1
      t.text        :url_1
      t.text        :lesson2
      t.text        :url_2
      t.text        :lesson3
      t.text        :url_3
      t.text        :lesson4
      t.text        :url_4
      t.text        :lesson5
      t.text        :url_5
      t.timestamps null: true
    end
  end
end
