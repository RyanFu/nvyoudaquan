#coding=utf-8
class Admin::GirlsController < ApplicationController
  before_filter do |controller|
    controller.authenticated({:role => 'admin', :alert=>'不具备的权限'})
  end
  layout 'admin'
  def index
    @girls = Girl.order(:id).page(params[:page])
  end
  def new
    @girl = Girl.new
    render :template => 'admin/girls/form'
  end
  def create
    @girl = Girl.new(params[:girl])
    @girl.save
    redirect_to :action => :index
  end
  def edit
    @girl = Girl.find(params[:id])
    render :template => 'admin/girls/form'
  end
  def update
    @girl = Girl.find(params[:id])
    @girl.update_attributes(params[:girl])
    redirect_to :action => :index
  end
  def destroy
    @girl = Girl.find(params[:id])
    @girl.destroy
    redirect_to :action => :index
  end
end
