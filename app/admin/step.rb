ActiveAdmin.register Step do
permit_params :title, :note, :video, :header, :tag, :course_id
validates :title, presence: true, length: { maximum: 50 }
validates :video, presence: true
validates :tag, presence: true
validates :course, presence: true
end
