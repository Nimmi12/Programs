json.array!(@stud_marks) do |stud_mark|
  json.extract! stud_mark, :id, :student_id, :subject_id, :mark
  json.url stud_mark_url(stud_mark, format: :json)
end
