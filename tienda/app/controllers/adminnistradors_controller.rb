class AdminnistradorsController < ApplicationController
  # GET /adminnistradors
  # GET /adminnistradors.xml
  def index
    @adminnistradors = Adminnistrador.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @adminnistradors }
    end
  end

  # GET /adminnistradors/1
  # GET /adminnistradors/1.xml
  def show
    @adminnistrador = Adminnistrador.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @adminnistrador }
    end
  end

  # GET /adminnistradors/new
  # GET /adminnistradors/new.xml
  def new
    @adminnistrador = Adminnistrador.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @adminnistrador }
    end
  end

  # GET /adminnistradors/1/edit
  def edit
    @adminnistrador = Adminnistrador.find(params[:id])
  end

  # POST /adminnistradors
  # POST /adminnistradors.xml
  def create
    @adminnistrador = Adminnistrador.new(params[:adminnistrador])

    respond_to do |format|
      if @adminnistrador.save
        flash[:notice] = 'Adminnistrador was successfully created.'
        format.html { redirect_to(@adminnistrador) }
        format.xml  { render :xml => @adminnistrador, :status => :created, :location => @adminnistrador }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @adminnistrador.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /adminnistradors/1
  # PUT /adminnistradors/1.xml
  def update
    @adminnistrador = Adminnistrador.find(params[:id])

    respond_to do |format|
      if @adminnistrador.update_attributes(params[:adminnistrador])
        flash[:notice] = 'Adminnistrador was successfully updated.'
        format.html { redirect_to(@adminnistrador) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @adminnistrador.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /adminnistradors/1
  # DELETE /adminnistradors/1.xml
  def destroy
    @adminnistrador = Adminnistrador.find(params[:id])
    @adminnistrador.destroy

    respond_to do |format|
      format.html { redirect_to(adminnistradors_url) }
      format.xml  { head :ok }
    end
  end
end
