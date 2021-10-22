class AssignmentsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

def index
    assignments = Assignment.all
    render json: assignments
end

def create
    assignment = Assignment.create!(assignment_params)
    render json: assignment.feature, status: :created 
end

def destroy 
    assignment = Assignment.find(params[:id])
    assignment.destroyhead :no_content
end

private

def assignment_params
    params.permit(:user_id, :feature_id)
end

def render_unprocessable_entity_response(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
end

def render_not_found_response
    render json: { error: "Assignment not found" }, status: :not_found
end 

end
