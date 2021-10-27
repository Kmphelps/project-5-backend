class FeaturesController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

def index
    features = Feature.all 
    render json: features 
end

def show
    feature = Feature.find(params[:id])
    render json: feature
end

def create
    feature = Feature.create!(feature_params)
    render json: feature, status: :created
end

def update 
    feature = Feature.find_by(id: params[:id])
    if feature 
        feature.update(feature_params)
        render json: feature
    else
        render json: { error: "Feature not found" }, status: :not_found 
    end
end

def destroy
    feature = Feature.find_by(id: params[:id])
    feature.destroy
    render json: {} 
end 

private

def feature_params
    params.permit(:name, :wireframes_link, :test_cases_link, :need_access_resources, :test_framework, :project_mgmt_resources, :test_status, :priority)
end

def render_unprocessable_entity_response(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity 
end

def render_not_found_response
    render json: { error: "Feature not found" }, status: :not_found 
end
end


