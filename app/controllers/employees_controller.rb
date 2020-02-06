class EmployeesController < ApplicationController
    def index
        @employees = Employee.all
    end
    def show
        @employee = Employee.find(params[:id])
    end
    def new
        @employee = Employee.new
    end
    def create
        @employee = Employee.create(employee_params)
        # If the pet is valid, redirect to the index.
        if @employee.valid?
        redirect_to employees_path
        # Otherwise, render the form again so that we can show the users the validation errors.
        else
        render :new
        end
    end

    def edit
        @employee = Employee.find(params[:id])
      end
    
      def update
        @employee = Employee.find(params[:id])
        @employee.update(employee_params)
        redirect_to employee_path(@employee.id)
      end
    
    private

    def employee_params
      params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
    end
end
