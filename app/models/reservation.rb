class Reservation < ApplicationRecord

    belongs_to :user
    belongs_to :restaurant

    # validates :name, presence: true
    # validates :time, presence: true
    # validates :restaurant, presence: true

    # def validate(user)
    #     if user.restaurant.time !== user.uniq
    #         user.errors
    #         message: "You Must choose another time"
    #     end
    # end

end
