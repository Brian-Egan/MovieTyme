class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :genre
      t.date :release_date
      t.string :photo
      t.string :actors
      t.string :director
      t.integer :running_time
      t.string :rating
      t.string :youtube

      t.timestamps
      t.integer :user_id
    end
  end
end
