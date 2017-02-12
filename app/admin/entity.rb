ActiveAdmin.register Entity do
  permit_params :name, features_attributes: [:name, :id, :_destroy]

  index do
    selectable_column
    id_column
    column :name
    actions
  end

  filter :name

  show do
    attributes_table do
      row :name
      row :created_at
      row :updated_at
    end
    panel "Features" do
      table_for entity.features do
        column :id
        column :name
        column :created_at
        column :updated_at
      end
    end
  end

  form do |f|
    f.inputs "Admin Details" do
      f.input :name
    end

    f.inputs 'Features' do
      f.has_many :features, heading: false, allow_destroy: true do |b|
        b.input :name
      end
    end

    f.actions
  end

end
