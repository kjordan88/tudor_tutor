class CreateUserPrograms < ActiveRecord::Migration
  def change
    create_table :user_programs do |t|
      t.references :user, index: true, foreign_key: true
      t.references :program, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
