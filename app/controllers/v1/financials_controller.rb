class V1::FinancialsController < ApplicationController
    def index
        financials = Financial.order('created_at DESC');
        render json: {status: 'SUCCESS', message: 'Loaded Financials', data:financials},status: :ok;
    end

    def show
        financial = Financial.find(params[:id]);
        render json: {status: 'SUCCESS', message: 'Loaded Financial', data:financial}, status: :ok
    end

    def create
        financial = Financial.new(financial_params)

        if financial.save
            render json: {status: 'SUCCESS', message: 'Saved Financial', data:financial}, status: :ok
        else
            render json: {status: 'ERROR', message: 'Financial NOT Saved', data:financial.errors}, status: :unprocessable_entity
        end
    end

    def update
        financial = Financial.find(params[:id]);
        if financial.update_attributes(financial_params)
            render json: {status: 'SUCCESS', message: 'Updated Financial', data:financial}, status: :ok
        else
            render json: {status: 'ERROR', message: 'Financial NOT Updated', data:financial.errors}, status: :unprocessable_entity
        end
    end

    def destroy
        financial = Financial.find(params[:id]);
        financial.destroy
        render json: {status: 'SUCCESS', message: 'Financial Deleted', data:financial}, status: :ok
    end

    private

    def financial_params
        params.permit(:accountType, :institution, :accountDescription, :accountValue)
    end
end
