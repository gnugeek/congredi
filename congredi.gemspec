Gem::Specification.new do |s|
  s.name     = "congredi"
  s.version  = "0.0.1"
  s.date     = "2009-01-11"
  s.summary  = "Interface to U.S. Political Information"
  s.email    = "gnutse@gmail.com"
  s.homepage = "http://github.com/gnugeek/congredi"
  s.description = "Congredi is a Ruby Library for interfacing with various sources of data on the U.S. Congress"
  s.has_rdoc = true
  s.authors  = ["Brian Knox"]
  s.files    = ["History.txt",
    "README.rdoc",
    "Rakefile",
    "congredi.gemspec",
    "History.txt",
    "lib/congredi.rb",
    "lib/congredi/bio.rb",
    "lib/congredi/role.rb",
    "lib/congredi/members.rb",
    "lib/congredi/member.rb",
    "lib/congredi/roll_call.rb",
    "lib/congredi/votes.rb",
    "test/helper.rb",
    "test/test_bio.rb",
    "test/test_members.rb",
    "test/test_roll_call.rb",
    "test/test_votes.rb",
    "test/responses/bio.xml",
    "test/responses/members.xml",
    "test/responses/roll_call.xml",
    "test/responses/votes.xml"]
  s.test_files = ["test/test_bio.rb",
    "test/test_members.rb",
    "test/test_roll_call.rb",
    "test/test_votes.rb"]
  s.rdoc_options = ["--main", "README.rdoc"]
  s.extra_rdoc_files = ["History.txt", "README.rdoc"]
  s.add_dependency("hpricot", ["> 0.0.0"])
end
