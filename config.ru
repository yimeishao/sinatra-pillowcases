require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride 
#enables patch and delete 
use UsersController 
use EntriesController
run ApplicationController
