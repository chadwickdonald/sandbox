include Lab

labs_scientists_inner_join = Lab.find_by_sql("select * from labs inner join scientists on labs.id = scientists.lab_id;")

#labs_scientists_lo_join = Lab.find_by_sql("select * from labs left outer join scientists on labs.id = scientists.lab_id;")

puts "labs_scientists_inner_join: #{labs_scientists_inner_join.inspect}"