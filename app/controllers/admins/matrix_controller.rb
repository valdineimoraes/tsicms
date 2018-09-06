class Admins::MatrixController < Admins::BaseController
    def index
        @matrixs = Matrix.all
    end

    def show
    end

    def new
        @matrixs = Matrix.new
    end

    def edit
    end

    def destroy
        @matrixs.destroy
        flash[:sucess] = " Was successfully destroyed! "
    end

    private 

        def matrix_params
            params.require(:matrix).permit(:name)
        end
    
    end

end
