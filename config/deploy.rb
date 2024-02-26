namespace :deploy do
  desc 'Create or update the REVISION file'
  task :create_revision do
    on roles(:app) do
      within release_path do
        # Use 'tee' to write to the file as it will invoke sudo privileges for file write
        execute :echo, "\"#{fetch(:current_revision)}\" | sudo tee REVISION > /dev/null"
      end
    end
  end

  # Insert the 'create_revision' task into the deploy workflow
  before 'deploy:set_current_revision', 'deploy:create_revision'
end
