ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :price, :details
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :price, :details]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :list, :of, :attributes, :on, :product, :name, :image, :details, :price
  
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Product" do
     f.input :image, :as => :file
     f.input :name
     f.input :price
     f.input :details
   end
   f.actions
  end
end
