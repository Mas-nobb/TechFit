ActiveAdmin.register Lesson do
  permit_params :title, :description, :category, :course_id, :video

  index do
    selectable_column
    id_column
    column :title
    column :description
    column :category
    column :course
    column :video do |lesson|
      if lesson.video.attached?
        link_to 'View Video', rails_blob_path(lesson.video, disposition: "attachment")
      else
        'No Video Attached'
      end
    end
    actions
  end

  filter :title
  filter :category
  filter :course

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :category
      f.input :course, as: :select, collection: Course.all.map{|c| [c.name, c.id]}
      f.input :video, as: :file
    end
    f.actions
  end
end


