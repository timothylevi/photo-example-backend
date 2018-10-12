class UserSerializer < BaseSerializer
  attributes :email, :image_url

  def image_url
    instance_options[:image]
  end

end
