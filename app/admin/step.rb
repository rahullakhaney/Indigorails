ActiveAdmin.register Step do
permit_params :title, :note, :video, :header, :tag, :course_id
end
