# require 'pry-byebug'

URL = "http://lilypond.org/downloads/binaries/documentation/"
LATEST = "#{URL}lilypond-2.19.65-1.documentation.tar.bz2"
DIR = "Contents/Resources/Documents/"
PATH = "share/doc/lilypond/html"
TAR = File.basename(LATEST)

CLEAN = Rake::FileList[]

directory DIR

file TAR do
  sh "wget -nv \"#{LATEST}\""
end

task 'extract' => [TAR, DIR] do
  sh "tar -xzf \"#{TAR}\" -C \"#{DIR}\" \"#{PATH}\""
end

task :default => 'extract'
