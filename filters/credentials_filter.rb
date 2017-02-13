# credentials_filter.rb
class CredentialsFilter < Banzai::Filter
  def call(input)
    # e.g. Either "Hello Adam" or "Hello world"
    input.gsub("$USERNAME", current_user ? current_user.first_name : "World")

    # e.g. Either "ABC123"  or "EXAMPLE_API_KEY"
    input.gsub("$API_KEY", current_user ? current_user.api_key : "EXAMPLE_API_KEY")
  end

  private

  # Stubbing for the example
  def current_user
    @current_user ||= OpenStruct.new({ first_name: "Adam", api_key: "ABC123" })
  end
end
