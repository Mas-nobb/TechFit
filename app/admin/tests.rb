ActiveAdmin.register Test do
  permit_params :name, :description, :category, :image

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :category
      f.input :image, as: :file
    end
    f.actions
  end

  show do |test|
    attributes_table do
      row :name
      row :description
      row :category
      row :image do |ad|
        image_tag url_for(ad.image) if ad.image.attached?
      end
    end
  end
end
