class Api::V1::AuthenticationController < AuthenticationController
    skip_before_action :authenticate_request

    def authenticate
        command = AuthenticateUser.call(params[:email],params[:password])

        if command.sucess?
            render json: { auth_token: command.result }
        else
            render json: { error: command.errors }, status: :unauthorized
        end
    end
end