module Squishable
  class SquishesController < ::ApplicationController
    # GET /squishes
    # GET /squishes.json
    def index
      @squishes = Squish.all
  
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @squishes }
      end
    end
  
    # GET /squishes/1
    # GET /squishes/1.json
    def show
      @squish = Squish.find(params[:id])
  
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @squish }
      end
    end
  
    # GET /squishes/new
    # GET /squishes/new.json
    def new
      @squish = Squish.new
  
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @squish }
      end
    end
  
    # GET /squishes/1/edit
    def edit
      @squish = Squish.find(params[:id])
    end
  
    # POST /squishes
    # POST /squishes.json
    def create
      @squish = Squish.new(params[:squish])
  
      respond_to do |format|
        if @squish.save
          format.html { redirect_to @squish, notice: 'Squish was successfully created.' }
          format.json { render json: @squish, status: :created, location: @squish }
        else
          format.html { render action: "new" }
          format.json { render json: @squish.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PUT /squishes/1
    # PUT /squishes/1.json
    def update
      @squish = Squish.find(params[:id])
  
      respond_to do |format|
        if @squish.update_attributes(params[:squish])
          format.html { redirect_to @squish, notice: 'Squish was successfully updated.' }
          format.json { head :ok }
        else
          format.html { render action: "edit" }
          format.json { render json: @squish.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /squishes/1
    # DELETE /squishes/1.json
    def destroy
      @squish = Squish.find(params[:id])
      @squish.destroy
  
      respond_to do |format|
        format.html { redirect_to squishes_url }
        format.json { head :ok }
      end
    end
  end
end
