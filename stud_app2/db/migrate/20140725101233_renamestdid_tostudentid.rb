class RenamestdidTostudentid < ActiveRecord::Migration
  def change
     rename_column :subjects, :stdid, :student_id
 
 end
end
