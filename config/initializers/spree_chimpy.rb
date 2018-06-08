require 'spree_chimpy'
Spree::PermittedAttributes.user_attributes << :subscribed
Spree::Chimpy.config do |config|

end
