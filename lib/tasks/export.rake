namespace :export do
  desc "Prints Gist.all in a seeds.rb way."
  task :seeds_format => :environment do
    Gist.order(:id).all.each do |gist|
      puts "Gist.create(#{gist.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
end
