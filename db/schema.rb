ActiveRecord::Schema.define(version: 2018_09_11_000049) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "kids", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "image_url"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
