class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.integer :stdid
      t.string :subname
      t.integer :mark

      t.timestamps
    end
  end
end
