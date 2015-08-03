class Swagger::Docs::Config
  def self.transform_path(path, api_version)
    # Make a distinction between the APIs and API documentation paths.
    "apidocs/#{path}"
  end
end

Swagger::Docs::Config.register_apis(
  {
    '1.0' => {
        controller_base_path: '',
        api_file_path: 'public/apidocs',
        base_path: ENV['base_path'],
        clean_directory: true
    }
  }
)
