class V1::PropertiesController < ApplicationController
    def index
        properties = Property.order('created_at DESC');
        render json: {status: 'SUCCESS', message: 'Loaded Properties', data:properties},status: :ok;
    end

    def show
        property = Property.find(params[:id]);
        render json: {status: 'SUCCESS', message: 'Loaded Property', data:property}, status: :ok
    end

    def create
        property = Property.new(property_params)

        if property.save
            render json: {status: 'SUCCESS', message: 'Saved Property', data:property}, status: :ok
        else
            render json: {status: 'ERROR', message: 'Property NOT Saved', data:property.errors}, status: :unprocessable_entity
        end
    end

    def update
        property = Property.find(params[:id]);
        if property.update_attributes(property_params)
            render json: {status: 'SUCCESS', message: 'Updated Property', data:property}, status: :ok
        else
            render json: {status: 'ERROR', message: 'Property NOT Updated', data:property.errors}, status: :unprocessable_entity
        end
    end

    def destroy
        property = Property.find(params[:id]);
        property.destroy
        render json: {status: 'SUCCESS', message: 'Property Deleted', data:property}, status: :ok
    end

    private

    def property_params
        params.permit(:propertyType, :propertyAddress, :propertyCost, :propertyInvestment, :propertyExpenses, :propertyRevenue, :propertyPrinciple)
    end
end
