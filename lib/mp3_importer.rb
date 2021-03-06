class MP3Importer
	attr_accessor :path

	def initialize(file_path)
		@path = file_path
		
	end

	def files
		Dir.glob("#{@path}/*.mp3").collect do |filename|
			filename = filename.split("/").last
		end
	end

  def import
    self.files.each{ |filename| Song.new_by_filename(filename) }
  end
end