class JobApplicationFormsController < ApplicationController
  before_action :set_job_application_form, only: [:show, :edit, :update, :destroy]

  # GET /job_application_forms
  # GET /job_application_forms.json
  def index
    @job_application_forms = JobApplicationForm.all
  end

  # GET /job_application_forms/1
  # GET /job_application_forms/1.json
  def show
  end

  # GET /job_application_forms/new
  def new
    @job_application_form = JobApplicationForm.new
  end

  # GET /job_application_forms/1/edit
  def edit
  end

  # POST /job_application_forms
  # POST /job_application_forms.json
  def create
    @job_application_form = JobApplicationForm.new(job_application_form_params)

    respond_to do |format|
      if @job_application_form.save
        format.html { redirect_to @job_application_form, notice: 'Job application form was successfully created.' }
        format.json { render :show, status: :created, location: @job_application_form }
      else
        format.html { render :new }
        format.json { render json: @job_application_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_application_forms/1
  # PATCH/PUT /job_application_forms/1.json
  def update
    respond_to do |format|
      if @job_application_form.update(job_application_form_params)
        format.html { redirect_to @job_application_form, notice: 'Job application form was successfully updated.' }
        format.json { render :show, status: :ok, location: @job_application_form }
      else
        format.html { render :edit }
        format.json { render json: @job_application_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_application_forms/1
  # DELETE /job_application_forms/1.json
  def destroy
    @job_application_form.destroy
    respond_to do |format|
      format.html { redirect_to job_application_forms_url, notice: 'Job application form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_application_form
      @job_application_form = JobApplicationForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_application_form_params
      params.require(:job_application_form).permit(:title, :description)
    end
end
