# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130318081528) do

  create_table "monters", :force => true do |t|
    t.string   "company"
    t.string   "branch"
    t.string   "name"
    t.string   "surname"
    t.string   "bdate"
    t.string   "dolj"
    t.integer  "staj"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "orts", :force => true do |t|
    t.text     "test1"
    t.text     "test2"
    t.text     "test3"
    t.text     "test4"
    t.text     "test5"
    t.text     "test6"
    t.text     "test7"
    t.text     "test8"
    t.text     "test9"
    t.string   "date"
    t.integer  "monter_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "orts", ["monter_id"], :name => "index_orts_on_monter_id"

  create_table "p_tests", :force => true do |t|
    t.text     "test1"
    t.text     "test2"
    t.text     "test3"
    t.text     "test4"
    t.text     "test5"
    t.text     "test6"
    t.text     "test7"
    t.text     "test8"
    t.text     "test9"
    t.integer  "monter_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "p_tests", ["monter_id"], :name => "index_p_tests_on_monter_id"

  create_table "testings", :force => true do |t|
    t.text     "test1"
    t.text     "test2"
    t.text     "test3"
    t.text     "test4"
    t.text     "tes5"
    t.text     "test6"
    t.text     "test7"
    t.text     "test8"
    t.text     "test9"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tests", :force => true do |t|
    t.string   "date"
    t.text     "test1"
    t.integer  "monter_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "test2"
    t.string   "test3"
    t.string   "test4"
    t.string   "test5"
    t.string   "test6"
    t.string   "test7"
    t.string   "test8"
    t.string   "test9"
    t.string   "rawbal1"
    t.string   "rawbal2"
    t.string   "rawbal3"
    t.string   "rawbal4"
    t.string   "rawbal5"
    t.string   "rawbal6"
    t.string   "rawbal7"
    t.string   "rawbal8"
    t.string   "rawbal9"
    t.string   "rawbal10"
    t.string   "rawbal11"
    t.string   "rawbal12"
    t.string   "rawbal13"
    t.string   "rawbal14"
    t.string   "rawbal15"
    t.string   "rawbal16"
    t.string   "rawbal17"
    t.string   "rawbal18"
    t.string   "rawbal19"
    t.string   "rawbal20"
    t.string   "rawbal21"
    t.string   "rawbal22"
    t.string   "rawbal23"
    t.string   "rawbal24"
    t.string   "rawbal25"
    t.string   "rawbal26"
    t.string   "rawbal27"
    t.string   "rawbal28"
    t.string   "sum1"
    t.string   "sum2"
    t.string   "b1"
    t.string   "b2"
    t.string   "b3"
    t.string   "tb1"
    t.string   "tb2"
    t.string   "tb3"
    t.string   "ib"
    t.string   "kat"
    t.string   "tkat"
    t.string   "rawbal29"
  end

  add_index "tests", ["monter_id"], :name => "index_tests_on_monter_id"

end
