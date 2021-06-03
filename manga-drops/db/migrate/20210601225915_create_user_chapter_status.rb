class CreateUserChapterStatus < ActiveRecord::Migration[6.1]
  def change
    create_table :user_chapter_status do |t|
      t.references :user, null: false, foreign_key: true
      t.references :chapter, null: false, foreign_key: true
      t.boolean :read

      t.timestamps
    end
  end
end
