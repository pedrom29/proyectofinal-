ActiveAdmin.register User do

  form do |f|
    inputs 'Agregar un nuevo usuario' do
      
      input :name
      input :email
      input :password
      input :district_id
      input :role
      
      
      
    end
    actions
   end

   index do
    selectable_column
    id_column    
    column :name
    column :email   
    column :role
    column :district_id
    column :created_at
    column :distrito
    actions
   end

   filter :email, as: :select
   filter :name, as: :select

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :name, :district_id, :role
  #
  # or
  permit_params :email, :password, :role, :name, :district_id, :district_distrito
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :name, :district_id, :role]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
