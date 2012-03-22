class PatientsController < ApplicationController

  # GET /patients/new
  def new
  end

  # POST /patients
  def create
  end

  # GET /patients/:id/edit
  def edit
  end

  # PUT /patients/:id
  def update

  end

  # GET /patients
  def index
  end

  # GET /patients/:id
  def show
    @patient = Patient.find(params[:id])
  end

  # DELETE /patients/:id
  def destroy
  end


end

