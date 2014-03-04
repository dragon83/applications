class UserFilterAttributeValuesController < ApplicationController
  # GET /user_filter_attribute_values
  # GET /user_filter_attribute_values.json
  def index
    @user_filter_attribute_values = UserFilterAttributeValue.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_filter_attribute_values }
    end
  end

  # GET /user_filter_attribute_values/1
  # GET /user_filter_attribute_values/1.json
  def show
    @user_filter_attribute_value = UserFilterAttributeValue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_filter_attribute_value }
    end
  end

  # GET /user_filter_attribute_values/new
  # GET /user_filter_attribute_values/new.json
  def new
    @user_filter_attribute_value = UserFilterAttributeValue.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_filter_attribute_value }
    end
  end

  # GET /user_filter_attribute_values/1/edit
  def edit
    @user_filter_attribute_value = UserFilterAttributeValue.find(params[:id])
  end

  # POST /user_filter_attribute_values
  # POST /user_filter_attribute_values.json
  def create
    @user_filter_attribute_value = UserFilterAttributeValue.new(params[:user_filter_attribute_value])

    respond_to do |format|
      if @user_filter_attribute_value.save
        format.html { redirect_to @user_filter_attribute_value, notice: 'User filter attribute value was successfully created.' }
        format.json { render json: @user_filter_attribute_value, status: :created, location: @user_filter_attribute_value }
      else
        format.html { render action: "new" }
        format.json { render json: @user_filter_attribute_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_filter_attribute_values/1
  # PUT /user_filter_attribute_values/1.json
  def update
    @user_filter_attribute_value = UserFilterAttributeValue.find(params[:id])

    respond_to do |format|
      if @user_filter_attribute_value.update_attributes(params[:user_filter_attribute_value])
        format.html { redirect_to @user_filter_attribute_value, notice: 'User filter attribute value was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_filter_attribute_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_filter_attribute_values/1
  # DELETE /user_filter_attribute_values/1.json
  def destroy
    @user_filter_attribute_value = UserFilterAttributeValue.find(params[:id])
    @user_filter_attribute_value.destroy

    respond_to do |format|
      format.html { redirect_to user_filter_attribute_values_url }
      format.json { head :no_content }
    end
  end
end
