class GlobalVariable < ApplicationRecord
  enum type: [:integer, :float, :boolean, :string]
end
