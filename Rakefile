require 'pry-byebug'
require 'sqlite3'
require 'active_record'
require 'nokogiri'

# Download and index lilypond docs.
# https://kapeli.com/docsets#dashDocset

VERSION = "2.19.82-1"
URL = "http://lilypond.org/downloads/binaries/documentation/"
LATEST = "#{URL}lilypond-#{VERSION}.documentation.tar.bz2"
DIR = "Contents/Resources/Documents/"
PATH = "share/doc/lilypond/html"
TAR = LATEST.pathmap "%f"
TAR_DIR = File.basename(TAR, '.tar.bz2')
INDEX = "Contents/Resources/docSet.dsidx"

CLEAN = Rake::FileList[]
CLOBBER = Rake::FileList[TAR_DIR]

task default: [:get, :rebuild]

desc "download docs"
task fetch: TAR

file TAR do
  sh "wget -nv \"#{LATEST}\""
end

directory DIR

task extract: TAR_DIR

desc "extract tar"
directory TAR_DIR => [TAR, DIR] do |t, args|
  mkdir TAR_DIR
  sh "tar -xzf \"#{t.source}\" --strip-components=5 -C \"#{t.name}\" \"#{PATH}\""
end

task get: TAR_DIR do
  sh "cp -rf #{TAR_DIR}/* #{DIR}"
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

def index(dir, str, type)
  path = "#{DIR}/Documentation/#{dir}/*.html"

  Rake::FileList[path].exclude("**/*.*.html").each do |page|
    html = File.open(page) { |f| Nokogiri::HTML(f) }

    page_name = html.xpath("//meta[@name='description']").attr('content').value
      .remove(str).remove(/\b[\.A-Z\d]+\b\.? /)

    relpath = Pathname(page).relative_path_from Pathname(DIR)

    puts page_name
    insert(page_name, relpath, type)

    topics = html.xpath("//table[@class='menu']//a").inject({}) do |memo, topic|
      memo.merge(topic.attr(:href) => topic.content)
    end

    topics.each do |anchor, title|
      path = URI.join('file://', relpath.to_s)
      link = URI.join(path, anchor).route_from('file://')
      title = title.remove(/\b[\.A-Z\d]+\b\.? /)
      puts title
      insert(title, link, type)
    end
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

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: INDEX)

class SearchIndex < ActiveRecord::Base
  self.table_name = :searchIndex
  self.inheritance_column = :inheritance_type
end
