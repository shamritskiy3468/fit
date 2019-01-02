class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    #binding.pry
  end

  # POST /users
  # POST /users.json
  def create
    binding.pry
    @user = User.new(user_params)
    @user.errors.messages
    respond_to do |format|
      if @user.save
        redirect_to 
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    if @user.update(user_params)
      case @user.type 
      when "Doctor"
        redirect_to edit_doctor_path(@user)
      when "Patient"  
        redirect_to edit_patient_path(@user)
      else
        render :edit
      end
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.permit(:type)
    end
end
