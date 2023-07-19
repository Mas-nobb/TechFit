ActiveAdmin.register Course do
  permit_params :name, :description, :image

  index do
    selectable_column
    id_column
    column :name
    column :description
    column :created_at
    actions
  end

  filter :name
  filter :created_at

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :image, as: :file
    end
    f.actions
  end
end
