class Membership < ApplicationRecord
    validates :client, uniqueness: {scope: :gym_id}
    belongs_to :gym
    belongs_to :client
end
