class Test < ActiveRecord::Base
  belongs_to :monter
  attr_accessible :date, :test1, :test2,  :test3, :test4, :test5, :test6, :test7, :test8, :test9
end
