namespace :searchkick do
  desc 'Run a searchkick:reindex:all task on a remote instance'
  task :reindex do
    on roles(:app) do
      within current_path do
        execute :bundle, 'exec rails searchkick:reindex:all'
      end
    end
  end
end
