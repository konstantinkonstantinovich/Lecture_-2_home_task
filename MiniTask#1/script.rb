require 'pg'

conn = PG.connect(:dbname => 'bank_system', :password => 'apple', :port => 5432, :user => 'postgres')

conn.exec( "SELECT * FROM offices" ) do |result|
    puts "     ID | address            | title          "
    result.each do |row|
      puts " %7d | %-16s | %s" % row.values_at('id', 'address', 'title')
    end
end


conn.exec( "SELECT * FROM offices" ) do |result|
    puts "     ID | address            | title          "
    result.each do |row|
      puts " %7d | %-16s | %s" % row.values_at('id', 'address', 'title')
    end
end


conn.exec(
  ''
)
#
# offices = conn.exec('CREATE TABLE IF NOT EXISTS "offices" (
#     "id" SERIAL PRIMARY KEY,
#     "title" varchar,
#     "address" varchar,
#     "city" varchar,
#     "state" varchar,
#     "phone" BIGINT,
#     "lob" varchar,
#     "type" varchar
#   );')
#
#
# zones = conn.exec(
#     'CREATE TABLE IF NOT EXISTS "zones" (
#       "id" SERIAL PRIMARY KEY,
#       "type" varchar,
#       "office_id" integer NOT NULL,
#       UNIQUE(type, office_id)
#     );
#     ALTER TABLE "zones" ADD FOREIGN KEY ("office_id") REFERENCES "offices" ("id");'
# )
#
#
# rooms = conn.exec(
#   'CREATE TABLE IF NOT EXISTS "rooms" (
#   "id" int PRIMARY KEY,
#   "name" varchar,
#   "area" integer,
#   "max_people" integer,
#   "zone_id" integer NOT NULL,
#   UNIQUE(name, zone_id)
#   );
#   ALTER TABLE "rooms" ADD FOREIGN KEY ("zone_id") REFERENCES "zones" ("id");'
# )
#
# fixtures = conn.exec(
#   '
#   CREATE TABLE IF NOT EXISTS "fixtures" (
#     "id" int PRIMARY KEY,
#     "name" varchar,
#     "type" type_fixture,
#     "room_id" integer NOT NULL
#   );
#   ALTER TABLE "fixtures" ADD FOREIGN KEY ("room_id") REFERENCES "rooms" ("id");'
# )
#
#
# marketing_material = conn.exec(
#   'CREATE TABLE IF NOT EXISTS "marketing_material" (
#     "id" SERIAL PRIMARY KEY,
#     "type" varchar,
#     "name" varchar,
#     "cost" integer,
#     "fixture_id" integer NOT NULL,
#     UNIQUE(name, fixture_id)
#   );
#   ALTER TABLE "marketing_material" ADD FOREIGN KEY ("fixture_id") REFERENCES "fixtures" ("id");'
# )
#
#


# drop = conn.exec(
#     'DROP TABLE IF EXISTS offices, zones, rooms, fixtures, marketing_material;
#      DROP TYPE IF EXISTS type_fixture'
# )
