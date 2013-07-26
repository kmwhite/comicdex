namespace :db do
  desc 'Meta-task to rebuild the database from seed data'
  task :rebuild => [:drop, :create, :migrate, :seed] do
    attach_covers_to_issues
    attach_logo_to_volumes
    attach_logo_to_series
    attach_logo_to_publisher
  end

  private
  def attach_covers_to_issues
  end

  def attach_logo_to_volumes
  end

  def attach_logo_to_series
  end

  def attach_logo_to_publisher
  end
end
