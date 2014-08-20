class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :league_id
      t.string :matchname
      t.date :date
      t.time :time
      t.timestamps
    end
  end
end
