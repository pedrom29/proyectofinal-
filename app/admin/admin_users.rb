ActiveAdmin.register AdminUser do
  permit_params [:name, :email, :role, :password, :password_confirmation]

  index do
    selectable_column
    id_column
    column :name
    column :email   
    column :role
    column :created_at
    actions
  end

  filter :email

 

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

  controller do
    def permitted_params
     params.permit admin_user: [:name, :email, :role, :password, :password_confirmation]
    end
  end


end
