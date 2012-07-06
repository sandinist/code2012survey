class Survey < ActiveRecord::Base
  attr_accessible :app_name, :free_comment, :how_year, :languages, :locale, :why
end
