require 'rails_helper'

RSpec.describe Item, type: :model do
  # association test
  # ensure an Item record belong to single Todo record
  #
  it {should belong_to(:todo)}
  #
  # validations test
  # ensure columns name is present before saving
  #
  it {should validate_presence_of(:name)}
end
