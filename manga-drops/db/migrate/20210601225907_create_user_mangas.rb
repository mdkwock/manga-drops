class CreateUserMangas < ActiveRecord::Migration[6.1]
  def change
    create_table :user_mangas do |t|
      t.references :manga, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
