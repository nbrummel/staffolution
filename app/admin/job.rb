ActiveAdmin.register Job do
  permit_params :job_position, :job_description, :job_start_date, :job_end_date, :job_compensation, :job_start_time, :job_end_time, :job_filled, :job_title

  
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
