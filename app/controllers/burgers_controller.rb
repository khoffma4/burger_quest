class BurgersController < ApplicationController
  # GET /burgers
  # GET /burgers.json
  def index
    @burgers = Burger.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @burgers }
    end
  end

  # GET /burgers/1
  # GET /burgers/1.json
  def show
    @burger = Burger.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @burger }
    end
  end

  # GET /burgers/new
  # GET /burgers/new.json
  def new
    @burger = Burger.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @burger }
    end
  end

  # GET /burgers/1/edit
  def edit
    @burger = Burger.find(params[:id])
  end

  # POST /burgers
  # POST /burgers.json
  def create
    @burger = Burger.new(params[:burger])

    respond_to do |format|
      if @burger.save
        format.html { redirect_to @burger, notice: 'Burger was successfully created.' }
        format.json { render json: @burger, status: :created, location: @burger }
      else
        format.html { render action: "new" }
        format.json { render json: @burger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /burgers/1
  # PUT /burgers/1.json
  def update
    @burger = Burger.find(params[:id])

    respond_to do |format|
      if @burger.update_attributes(params[:burger])
        format.html { redirect_to @burger, notice: 'Burger was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @burger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /burgers/1
  # DELETE /burgers/1.json
  def destroy
    @burger = Burger.find(params[:id])
    @burger.destroy

    respond_to do |format|
      format.html { redirect_to burgers_url }
      format.json { head :no_content }
    end
  end
end
