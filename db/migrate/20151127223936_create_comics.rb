class CreateComics < ActiveRecord::Migration
  def change
    create_table :comics do |t|
      t.string :series
      t.string :uri
      t.string :year

      t.timestamps
    end
  end
end
