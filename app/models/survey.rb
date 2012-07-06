class Survey < ActiveRecord::Base
  attr_accessible :app_name, :free, :how_long, :language, :why
end
