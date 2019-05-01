module ApplicationHelper
  # helper_method :resource_name, :resource, :devise_mapping, :resource_class

  def resource_name
    :customer
  end

  def resource
    @resource ||= Customer.new
  end

  def resource_class
    User
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:customer]
  end
end
