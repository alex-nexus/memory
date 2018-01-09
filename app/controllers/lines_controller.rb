class LinesController < ApplicationController
  before_filter :load_lines
  def load_lines    
    @lines = Line.by_user(current_user.id).includes(:verb).page(params[:page])
    #@lines = Line.by_user(current_user.id).current_week    
  end

  # GET /lines
  # GET /lines.json
  def index
    @verbs = Verb.active.to_a    
    @lines = @lines.where(:verb_id => params[:verb_id]) unless params[:verb_id].nil? 
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lines }
    end
  end

  # GET /lines/1
  # GET /lines/1.json
  def show
    @line = Line.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @line }
    end
  end

  # GET /lines/new
  # GET /lines/new.json
  def new
    @line = Line.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @line }
    end
  end

  # GET /lines/1/edit
  def edit
    @line = Line.find(params[:id])
  end

  # POST /lines
  # POST /lines.json
  def create
    @line = Line.new(line_params)

    respond_to do |format|
      if @line.save
        format.html { redirect_to new_line_path, notice: 'Line was successfully created. 5 points are awarded to your score.' }
        format.json { render json: @line, status: :created, location: @line }
      else
        format.html { render action: "new" }
        format.json { render json: @line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lines/1
  # PUT /lines/1.json
  def update
    @line = Line.find(params[:id])

    respond_to do |format|
      if @line.update_attributes(line_params)
        format.html { redirect_to new_line_path, notice: 'Line was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render verb: "edit" }
        format.json { render json: @line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lines/1
  # DELETE /lines/1.json
  def destroy
    @line = Line.find(params[:id])
    @line.destroy

    respond_to do |format|
      format.html { redirect_to new_line_path }
      format.json { head :no_content }
    end
  end

  private

  # Using a private method to encapsulate the permissible parameters is just a good pattern
  # since you'll be able to reuse the same permit list between create and update. Also, you
  # can specialize this method with per-user checking of permissible attributes.
  def line_params
    params.require(:line).permit(:user_id, :verb_id, :start_time, 
      :note, :object, :people, :photo, :place, :price, :url)
  end
end
