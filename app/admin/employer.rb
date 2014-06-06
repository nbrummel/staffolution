ActiveAdmin.register Employer do
  permit_params :employer_name, :employer_zipcode, :employer_phone, :employer_url, :employer_email, :employer_street_number, :employer_street, :employer_unit_number, :employer_city, :employer_state, :employer_office_type

  
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
