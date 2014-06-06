class EducationClassesController < ApplicationController
  before_action :set_education_class, only: [:show, :edit, :update, :destroy, :vote]

  # GET /education_classes
  # GET /education_classes.json
  def index
    @education_classes = EducationClass.all
  end

  # GET /education_classes/1
  # GET /education_classes/1.json
  def show
  end

  # GET /education_classes/new
  def new
    @education_class = EducationClass.new
  end

  # GET /education_classes/1/edit
  def edit
  end

  # POST /education_classes
  # POST /education_classes.json
  def create
    @education_class = EducationClass.new(education_class_params)

    respond_to do |format|
      if @education_class.save
        format.html { redirect_to @education_class, notice: 'Education class was successfully created.' }
        format.json { render action: 'show', status: :created, location: @education_class }
      else
        format.html { render action: 'new' }
        format.json { render json: @education_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /education_classes/1
  # PATCH/PUT /education_classes/1.json
  def update
    respond_to do |format|
      if @education_class.update(education_class_params)
        format.html { redirect_to @education_class, notice: 'Education class was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @education_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /education_classes/1
  # DELETE /education_classes/1.json
  def destroy
    @education_class.destroy
    respond_to do |format|
      format.html { redirect_to education_classes_url }
      format.json { head :no_content }
    end
  end


  #->Prelang (voting/acts_as_votable)
  def vote

    direction = params[:direction]

    # Make sure we've specified a direction
    raise "No direction parameter specified to #vote action." unless direction

    # Make sure the direction is valid
    unless ["like", "bad"].member? direction
      raise "Direction '#{direction}' is not a valid direction for vote method."
    end

    @education_class.vote_by voter: current_user, vote: direction

    redirect_to action: :index
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_education_class
      @education_class = EducationClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def education_class_params
      params.require(:education_class).permit(:class_name, :class_type, :class_keywords, :class_date_start, :class_date_end, :class_time_start, :class_time_end, :class_worth, :reps_id, :class_category, :class_url)
    end
end
