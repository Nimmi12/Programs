class Student < ActiveRecord::Base
	has_many :subjects, through: :stud_marks
end
