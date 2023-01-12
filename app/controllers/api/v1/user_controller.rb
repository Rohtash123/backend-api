class Api::V1::UserController < ApplicationController

  def index
    @users =User.all.order(id: :desc)
    render json: {data: @users}
  end

  def create_user
    user = User.new(first_name: params[:firstName], last_name: params[:lastName], email: params[:email])
    user.save!
    render json: {success: true, message: "User is created"}
  end

  def delete_user
    User.find_by_id(params[:id]).destroy!
    render json: {success: true, message: "User is deleted."}
  end

  def edit_user
    user = User.find_by_id(params[:id])
    user.update(first_name: params[:first_name], last_name: params[:last_name], email: params[:email])
    render json: {success: true, message: "User details has been edited"}
  end
end
