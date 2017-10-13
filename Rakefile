# require 'pry-byebug'
LATEST = "http://lilypond.org/downloads/binaries/documentation/lilypond-2.19.65-1.documentation.tar.bz2"
DIR = "Contents/Resources/Documents/"
PATH = "share/doc/lilypond/html"
TAR = File.basename(LATEST)

CLEAN = Rake::FileList[]

directory DIR

file TAR do
  sh "wget -nv \"#{LATEST}\""
end

task 'extract' => [TAR, DIR] do
  "tar -xzf \"#{TAR}\" \"#{PATH}\" -C \"#{DIR}\""
end

task :default => 'extract'
