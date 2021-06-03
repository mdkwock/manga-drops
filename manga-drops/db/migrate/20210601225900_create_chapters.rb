class CreateChapters < ActiveRecord::Migration[6.1]
  def change
    create_table :chapters do |t|
      t.references :manga, null: false, foreign_key: true
      t.string :url
      t.datetime :Upload_date

      t.timestamps
    end
  end
end
