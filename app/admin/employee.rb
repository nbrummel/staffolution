ActiveAdmin.register Employee do
  permit_params :employee_email, :employee_phone, :employee_zipcode, :employee_first_name, :employee_last_name, :employee_bages, :employee_description, :employee_experience_years, :employee_experience_months, :employee_lic_number, :employee_type, :employee_rating, :employee_punctuality, :employee_dependability, :employee_reliable_transportation, :employee_accurate_calendar, :employee_transportation, :employee_school, :employee_languages, :employee_qualifications, :employee_credentials, :employee_experience, :employee_phone_verified, :employee_email_verified, :employee_lic_verified

  
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
