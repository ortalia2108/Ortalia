class Rails::ExplicitRouteGenerator < Rails::Generators::NamedBase
  def create_explicit_routes
    route "delete '/#{plural_name}/:id'       => '#{plural_name}#destroy'\n"
    route "put    '/#{plural_name}/:id'       => '#{plural_name}#update'\n"
    route "patch  '/#{plural_name}/:id'       => '#{plural_name}#update'"
    route "get    '/#{plural_name}/:id/edit'  => '#{plural_name}#edit'"
    route "post   '/#{plural_name}/:id'       => '#{plural_name}#create'\n"
    route "get    '/#{plural_name}/new'       => '#{plural_name}#new'"
    route "get    '/#{plural_name}/:id'       => '#{plural_name}#show'\n"
    route "get    '/#{plural_name}'           => '#{plural_name}#index'"
  end
end
