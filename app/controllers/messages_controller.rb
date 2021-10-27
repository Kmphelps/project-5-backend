class MessagesController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

def index
    messages = Message.all
    render json: messages, serializer: MessageSerializer
end

def create
    message = Message.create!(message_params)
    render json: message.feature, status: :created 
end

def destroy 
    message = Message.find(params[:id])
    message.destroyhead :no_content
end

private

def message_params
    params.permit(:user_id, :feature_id, :message)
end

def render_unprocessable_entity_response(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
end

def render_not_found_response
    render json: { error: "Message not found" }, status: :not_found
end 
end
