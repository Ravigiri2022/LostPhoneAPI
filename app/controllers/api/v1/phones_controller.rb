# app/controllers/api/v1/phones_controller.rb

module Api
  module V1
    class PhonesController < ApplicationController
      # POST /api/v1/verify_phone
      def verify
        tag_id = params[:tag_id]

        # Find phone by tag_id
        phone = Phone.find_by(tag_id: tag_id)

        if phone && phone.status == "lost"
          render json: {
            status: "Lost",
            owner: phone.owner,
            phone_model: phone.phone_model,
            contact: phone.contact
          }, status: :ok
        else
          render json: { status: "Not Reported Lost" }, status: :ok
        end
      end
    end
  end
end
