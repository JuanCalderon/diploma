Diploma::Application.routes.draw do
  match '/:code' => 'generator#get_diploma'
end
