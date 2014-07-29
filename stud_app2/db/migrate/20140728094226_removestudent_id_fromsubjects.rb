class RemovestudentIdFromsubjects < ActiveRecord::Migration
  def change
  	remove_column :subjects, :student_id, :integer
  	remove_column :subjects, :mark, :integer
  end
end
