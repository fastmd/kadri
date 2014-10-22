class Monter < ActiveRecord::Base

  attr_accessible :bdate, :branch, :company, :dolj, :name, :staj, :surname
  
  validates :surname, :presence => true,
                    :length => { :minimum => 5 }
					
	has_many :tests, :dependent => :destroy
end
