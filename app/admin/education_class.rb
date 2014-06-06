ActiveAdmin.register EducationClass do
  permit_params :class_name, :class_type, :class_keywords, :class_date_start, :class_date_end, :class_time_start, :class_time_end, :class_worth, :class_category, :class_url

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
