class CreateStudMarks < ActiveRecord::Migration
  def change
    create_table :stud_marks do |t|
      t.string :student_id
      t.string :subject_id
      t.integer :mark

      t.timestamps
    end
  end
end
