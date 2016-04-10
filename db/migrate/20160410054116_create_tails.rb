class CreateTails < ActiveRecord::Migration
  def change
    create_table :tails do |t|
      t.string :title
      t.string :content
      t.string :teller

      t.timestamps null: false
    end
  end
end
