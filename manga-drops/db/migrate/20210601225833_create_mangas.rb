class CreateMangas < ActiveRecord::Migration[6.1]
  def change
    create_table :mangas do |t|
      t.string :title
      t.string :url
      t.integer :latest_chapter

      t.timestamps
    end
  end
end
