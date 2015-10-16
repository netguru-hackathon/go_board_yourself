class StepRepository

  def self.new_from_filepath(filepath)
    id, title = /\/(?\d*)-(?[^.]*).md/.match(filepath).captures
    Step.new(id: id, title: title)
  end

  def self.find(id)
    all.find { |step| step

  end

  def self.all
    steps_filenames.map { |filename| new_from_filpath(step_dirpath.join(filename)) }
  end

  private

  def self.steps_filenames
    Dir.open(step_dirpath).to_a.reject { |file| file['.md'].nil? }
  end

  def self.step_dirpath
    Rails.root.join('app/steps')
  end
end
