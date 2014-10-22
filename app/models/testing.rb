class Testing < ActiveRecord::Base
  attr_accessible :tes5, :test1, :test2, :test3, :test4, :test6, :test7, :test8, :test9
  belongs_to :post
end
