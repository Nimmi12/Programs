class Subject < ActiveRecord::Base
	has_many :students, through: :stud_marks
end
