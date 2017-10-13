# require 'pry-byebug'
require 'sqlite3'
require 'active_record'
require 'nokogiri'

# Download and index lilypond docs.
# https://kapeli.com/docsets#dashDocset

URL = "http://lilypond.org/downloads/binaries/documentation/"
LATEST = "#{URL}lilypond-2.19.65-1.documentation.tar.bz2"
DIR = "Contents/Resources/Documents/"
PATH = "share/doc/lilypond/html"
TAR = File.basename(LATEST)
INDEX = "Contents/Resources/docSet.dsidx"

CLEAN = Rake::FileList[]

directory DIR

desc "download latest docs"
file TAR do
  sh "wget -nv \"#{LATEST}\""
end

desc "extract docs"
task 'extract' => [TAR, DIR] do
  sh "tar -xzf \"#{TAR}\" --strip-components=5 -C \"#{DIR}\" \"#{PATH}\""
end

file INDEX do
  # CREATE TABLE searchIndex(id INTEGER PRIMARY KEY, name TEXT, type TEXT, path TEXT);
  # CREATE UNIQUE INDEX anchor ON searchIndex (name, type, path);

  ActiveRecord::Schema.define do
    create_table :searchIndex, force: true do |t|
      t.string :name
      t.string :type
      t.string :path
    end

    add_index(:searchIndex, [:name, :type, :path], name: 'anchor', unique: true)
  end
end

def insert(name, path, type)
  begin
    SearchIndex.create(name: name, type: type, path: path)
  rescue ActiveRecord::RecordNotUnique
    # Ignore
  end
end

def html(path)
  File.open(path) { |f| Nokogiri::HTML(f) }
end

def name(html, str)
  html.css('meta[name=desciption]').attr('content').value
    .remove(str).remove(/\b[\.A-Z\d]+\b\.? /)
end

def relpath(path)
  Pathname(path).relative_path_from Pathname(DIR)
end

def index(dir, str, type)
  path = "#{DIR}/Documentation/#{dir}/*.html"
  Rake::FileList[path].exclude("**/*.*.html").each do |page|
    insert(name(html(page), str), relpath(page), type)
  end
end

task 'clear_index' do
  SearchIndex.delete_all
end

desc "clear and repopulate index"
task 'rebuild' => ['clear_index', 'populate']

desc "populate index"
task 'populate' => INDEX do # => 'extract'
  index('notation', 'LilyPond Notation Reference: ', 'Notation')
  index('music-glossary', 'LilyPond Music Glossary: ', 'Word')
  index('changes', 'LilyPond Changes: ', 'Guide')
  index('snippets', 'LilyPond snippets: ', 'Sample')
  index('usage', 'LilyPond Application Usage: ', 'Command')
  index('learning', 'LilyPond Learning Manual: ', 'Guide')
  index('extending', 'LilyPond Extending Lilypond: ', 'Guide')
  index('internals', 'LilyPond Internals Reference: ', 'Keyword')
end

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: INDEX
)

class SearchIndex < ActiveRecord::Base
  self.table_name = :searchIndex
  self.inheritance_column = :inheritance_type
end
