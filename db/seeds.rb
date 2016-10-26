# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Program.delete_all
SpaceAgency.delete_all
Mission.delete_all
SpaceCraft.delete_all
Nation.delete_all
SpaceTraveler.delete_all

# Space Agency → Program

nasa = SpaceAgency.create({
  abbreviation: "NASA",
  name:         "National Aeronautics and Space Administration",
  english_name: "National Aeronautics and Space Administration",
  budget:       18724,
  founded_on:   "1958-10-01"
})
ussr_sa = SpaceAgency.create({
  abbreviation: "Soviet Space Agency",
  name:         "Советская космическая программа",
  english_name: "Soviet Space Agency",
  budget:       0,
  founded_on:   "1955-01-01"
})
interkosmos = SpaceAgency.create({
  abbreviation: "Interkosmos",
  name:         "Интеркосмос",
  english_name: "Soviet International Space Program",
  budget:       0,
  founded_on:   "1967-04-01"
})

mercury = Program.create name: "Mercury", space_agency: nasa
gemini  = Program.create name: "Gemini",  space_agency: nasa
apollo  = Program.create name: "Apollo",  space_agency: nasa
sputnik = Program.create name: "Sputnik", space_agency: ussr_sa # Спутник (Satellite)
vostok  = Program.create name: "Vostok",  space_agency: ussr_sa # Восток (East)
voskhod = Program.create name: "Voskhod", space_agency: ussr_sa # Восход (Dawn)
kosmos  = Program.create name: "Kosmos",  space_agency: ussr_sa

# Program → Mission

mr3 = mercury.missions.create name: "Mercury-Redstone 3", starts_on: "1961-05-05", ends_on: "1961-05-05"
mr4 = mercury.missions.create name: "Mercury-Redstone 4", starts_on: "1961-07-21", ends_on: "1961-07-21"
ma6 = mercury.missions.create name: "Mercury-Atlas 6",    starts_on: "1962-02-20", ends_on: "1962-02-20"
ma7 = mercury.missions.create name: "Mercury-Atlas 7",    starts_on: "1962-05-24", ends_on: "1962-05-24"
ma8 = mercury.missions.create name: "Mercury-Atlas 8",    starts_on: "1962-10-03", ends_on: "1962-10-03"
ma9 = mercury.missions.create name: "Mercury-Atlas 9",    starts_on: "1963-05-15", ends_on: "1963-05-15"
g03 = gemini.missions.create name: "Gemini 3",    starts_on: "1965-03-23", ends_on: "1965-03-23"
g04 = gemini.missions.create name: "Gemini IV",   starts_on: "1965-06-03", ends_on: "1965-06-07"
g05 = gemini.missions.create name: "Gemini V",    starts_on: "1965-08-21", ends_on: "1965-08-29"
g06 = gemini.missions.create name: "Gemini VII",  starts_on: "1965-12-04", ends_on: "1965-12-18"
g07 = gemini.missions.create name: "Gemini VI-A", starts_on: "1965-12-15", ends_on: "1965-12-16"
g08 = gemini.missions.create name: "Gemini VIII", starts_on: "1966-03-16", ends_on: "1966-03-17"
g09 = gemini.missions.create name: "Gemini IX-A", starts_on: "1966-06-03", ends_on: "1966-06-06"
g10 = gemini.missions.create name: "Gemini X",    starts_on: "1966-07-18", ends_on: "1966-07-21"
g11 = gemini.missions.create name: "Gemini XI",   starts_on: "1966-09-12", ends_on: "1966-09-15"
g12 = gemini.missions.create name: "Gemini XII",  starts_on: "1966-11-11", ends_on: "1966-11-15"
a01 = apollo.missions.create name: "Apollo 1",  starts_on: "1967-02-21", ends_on: "1967-02-21" # ✝
a07 = apollo.missions.create name: "Apollo 7",  starts_on: "1968-10-11", ends_on: "1968-10-22"
a08 = apollo.missions.create name: "Apollo 8",  starts_on: "1968-12-21", ends_on: "1968-12-27"
a09 = apollo.missions.create name: "Apollo 9",  starts_on: "1969-03-03", ends_on: "1969-03-13"
a10 = apollo.missions.create name: "Apollo 10", starts_on: "1969-05-18", ends_on: "1969-05-26"
a11 = apollo.missions.create name: "Apollo 11", starts_on: "1969-07-16", ends_on: "1969-07-24"
a12 = apollo.missions.create name: "Apollo 12", starts_on: "1969-11-14", ends_on: "1969-11-24"
a13 = apollo.missions.create name: "Apollo 13", starts_on: "1970-04-11", ends_on: "1970-04-17"
a14 = apollo.missions.create name: "Apollo 14", starts_on: "1971-01-31", ends_on: "1971-02-09"
a15 = apollo.missions.create name: "Apollo 15", starts_on: "1971-07-26", ends_on: "1971-08-07"
a16 = apollo.missions.create name: "Apollo 16", starts_on: "1972-04-16", ends_on: "1972-04-27"
a17 = apollo.missions.create name: "Apollo 17", starts_on: "1972-12-07", ends_on: "1972-12-19"
sp2 = sputnik.missions.create name: "Sputnik 2", starts_on: "1957-11-03", ends_on: "1958-04-14" # ✝
ks2 = vostok.missions.create name: "Korabl-Sputnik 2", starts_on: "1960-08-19", ends_on: "1960-08-20"
ks3 = vostok.missions.create name: "Korabl-Sputnik 3", starts_on: "1960-12-01", ends_on: "1960-12-02" # ✝
ks4 = vostok.missions.create name: "Korabl-Sputnik 4", starts_on: "1961-03-09", ends_on: "1961-03-09"
ks5 = vostok.missions.create name: "Korabl-Sputnik 5", starts_on: "1961-03-25", ends_on: "1961-03-25"
vk1 = vostok.missions.create name: "Vostok 1", starts_on: "1961-04-12", ends_on: "1961-04-12"
vk2 = vostok.missions.create name: "Vostok 2", starts_on: "1961-08-06", ends_on: "1961-08-07"
vk3 = vostok.missions.create name: "Vostok 3", starts_on: "1962-08-11", ends_on: "1962-08-15"
vk4 = vostok.missions.create name: "Vostok 4", starts_on: "1962-08-12", ends_on: "1962-08-15"
vk5 = vostok.missions.create name: "Vostok 5", starts_on: "1963-06-14", ends_on: "1963-06-19"
vk6 = vostok.missions.create name: "Vostok 6", starts_on: "1963-06-16", ends_on: "1963-06-19"
vd1 = voskhod.missions.create name: "Voskhod 1", starts_on: "1964-10-12", ends_on: "1964-10-13"
vd2 = voskhod.missions.create name: "Voskhod 2", starts_on: "1965-03-18", ends_on: "1965-03-19"
k110 = kosmos.missions.create name: "Kosmos 110", starts_on: "1966-02-22", ends_on: "1966-03-16"

# Space Craft → Mission

mr = SpaceCraft.create name: "Mercury-Redstone",   build: "Capsule - 1 Stage ELV",     payload_capacity: 1800
ma = SpaceCraft.create name: "Mercury-Atlas",      build: "Capsule - 1.5 Stage ELV",   payload_capacity: 1360
titan2  = SpaceCraft.create name: "Titan II (GLV)",     build: "Dual Module - 2 Stage ELV", payload_capacity: 3580
saturn1 = SpaceCraft.create name: "Saturn IB (AS-200)", build: "Dual Module - 3 Stage ELV", payload_capacity: 21000
saturn5 = SpaceCraft.create name: "Saturn V (AS-500)",  build: "Dual Module - 3 Stage ELV", payload_capacity: 140000
sp_ps  = SpaceCraft.create name: "Sputnik-PS",            build: "Capsule - 1 Stage ELV",     payload_capacity: 500
vk_1k  = SpaceCraft.create name: "Vostok 1K (Vostok L)",  build: "Capsule - 2 Stage ELV",     payload_capacity: 4550
vk_3ka = SpaceCraft.create name: "Vostok 3KA (Vostok-K)", build: "Capsule - 2 Stage ELV",     payload_capacity: 4730
vk_3kv = SpaceCraft.create name: "Vostok 3KV (Voskhod)",  build: "Dual Module - 2 Stage ELV", payload_capacity: 5900
vd_3kd = SpaceCraft.create name: "Voskhod 3KD (Voskhod)", build: "Dual Module - 2 Stage ELV", payload_capacity: 5900

mr3.update space_craft: mr
mr4.update space_craft: mr
[ma6, ma7, ma8, ma9].each do |mercury_atlas_mission|
  mercury_atlas_mission.update space_craft: ma
end

[g03, g04, g05, g06, g07, g08, g09, g10, g11, g12].each do |gemini_mission|
  gemini_mission.update space_craft: titan2
end

a01.update space_craft: saturn1
a07.update space_craft: saturn1

[a08, a09, a10, a11, a12, a13, a14, a15, a16, a17].each do |apollo_mission|
  apollo_mission.update space_craft: saturn5
end

sp2.update space_craft: sp_ps
ks2.update space_craft: vk_1k
ks3.update space_craft: vk_1k

[ks4, ks5, vk1, vk2, vk3, vk4, vk5, vk6].each do |mission|
  mission.update space_craft: vk_3ka
end

vd1.update space_craft: vk_3kv
k110.update space_craft: vk_3kv
vd2.update space_craft: vd_3kd

# Nation → Space Traveler

usa    = Nation.create name: "The United States of America",            country_code: "US"
ussr   = Nation.create name: "The Union of Soviet Socialist Republics", country_code: "SU"

# The Mercury 7
carpenter = SpaceTraveler.create name: "M. Scott Carpenter", sex: "M", nation: usa, born_on: "1925-05-01", died_on: "2013-10-10"
cooper    = SpaceTraveler.create name: "Gordo Cooper",       sex: "M", nation: usa, born_on: "1927-03-06", died_on: "2004-10-04"
glenn     = SpaceTraveler.create name: "John Glenn",         sex: "M", nation: usa, born_on: "1921-07-18"
grissom   = SpaceTraveler.create name: "Gus Grissom",        sex: "M", nation: usa, born_on: "1926-04-03", died_on: "1967-01-27"
schirra   = SpaceTraveler.create name: "Wally Schirra",      sex: "M", nation: usa, born_on: "1923-03-12", died_on: "2007-05-03"
shepard   = SpaceTraveler.create name: "Alan Shepard",       sex: "M", nation: usa, born_on: "1923-11-18", died_on: "1998-07-21"
slayton   = SpaceTraveler.create name: "Deke Slayton",       sex: "M", nation: usa, born_on: "1924-03-01", died_on: "1993-06-13"

# The New Nine (Astronaut Group 2)
armstrong   = SpaceTraveler.create name: "Neil Armstrong",  sex: "M", nation: usa, born_on: "1930-08-05", died_on: "2012-08-25"
borman      = SpaceTraveler.create name: "Frank Borman",    sex: "M", nation: usa, born_on: "1928-03-14"
conrad      = SpaceTraveler.create name: "Pete Conrad",     sex: "M", nation: usa, born_on: "1930-06-02", died_on: "1999-07-08"
lovell      = SpaceTraveler.create name: "James Lovell",    sex: "M", nation: usa, born_on: "1928-03-25"
mcdivitt    = SpaceTraveler.create name: "James McDivitt",  sex: "M", nation: usa, born_on: "1929-06-10"
see         = SpaceTraveler.create name: "Elliot See",      sex: "M", nation: usa, born_on: "1927-07-23", died_on: "1966-02-28"
stafford    = SpaceTraveler.create name: "Thomas Stafford", sex: "M", nation: usa, born_on: "1930-09-17"
white       = SpaceTraveler.create name: "Edward White",    sex: "M", nation: usa, born_on: "1930-11-14", died_on: "1967-01-27"
young       = SpaceTraveler.create name: "John Young",      sex: "M", nation: usa, born_on: "1930-09-24"

# The Fourteen (Astronaut Group 3)
aldrin      = SpaceTraveler.create name: "Buzz Aldrin",          sex: "M", nation: usa, born_on: "1930-01-20"
anders      = SpaceTraveler.create name: "William Anders",       sex: "M", nation: usa, born_on: "1933-10-17"
bassett     = SpaceTraveler.create name: "Charles Bassett" ,     sex: "M", nation: usa, born_on: "1931-12-30", died_on: "1966-02-28"
bean        = SpaceTraveler.create name: "Alan Bean",            sex: "M", nation: usa, born_on: "1932-03-15"
cernan      = SpaceTraveler.create name: "Eugene Cernan",        sex: "M", nation: usa, born_on: "1934-03-14"
chaffee     = SpaceTraveler.create name: "Roger Chaffee",        sex: "M", nation: usa, born_on: "1935-02-15", died_on: "1967-01-27"
collins     = SpaceTraveler.create name: "Michael Collins",      sex: "M", nation: usa, born_on: "1930-10-31"
cunningham  = SpaceTraveler.create name: "R. Walter Cunningham", sex: "M", nation: usa, born_on: "1932-03-16"
eisele      = SpaceTraveler.create name: "Donn Eisele",          sex: "M", nation: usa, born_on: "1930-06-23", died_on: "1987-12-02"
freeman     = SpaceTraveler.create name: "Theodore Freeman",     sex: "M", nation: usa, born_on: "1930-02-18", died_on: "1964-10-31"
gordon      = SpaceTraveler.create name: "Richard Gordon",       sex: "M", nation: usa, born_on: "1929-10-05"
schweickart = SpaceTraveler.create name: "Rusty Schweickart",    sex: "M", nation: usa, born_on: "1935-10-25"
scott       = SpaceTraveler.create name: "David Scott",          sex: "M", nation: usa, born_on: "1932-06-06"
williams    = SpaceTraveler.create name: "Clifton Williams",     sex: "M", nation: usa, born_on: "1932-09-26", died_on: "1967-10-05"

# The Scientists (Astronaut Group 4)
garriott  = SpaceTraveler.create name: "Dr. Owen Garriott",   sex: "M", nation: usa, born_on: "1930-11-22"
gibson    = SpaceTraveler.create name: "Dr. Edward Gibson",   sex: "M", nation: usa, born_on: "1936-11-08"
graveline = SpaceTraveler.create name: "Dr. Duane Graveline", sex: "M", nation: usa, born_on: "1931-03-02"
kerwin    = SpaceTraveler.create name: "Dr. Joseph Kerwin",   sex: "M", nation: usa, born_on: "1932-02-19"
michel    = SpaceTraveler.create name: "Dr. Curt Michel",     sex: "M", nation: usa, born_on: "1934-06-05", died_on: "2015-02-26"
schmitt   = SpaceTraveler.create name: "Dr. Jack Schmitt",    sex: "M", nation: usa, born_on: "1935-07-03"

# The "Original" 19 (Astronaut Group 5)
brand       = SpaceTraveler.create name: "Vance Brand",          sex: "M", nation: usa, born_on: "1931-05-09"
bull        = SpaceTraveler.create name: "John S. Bull",         sex: "M", nation: usa, born_on: "1934-09-25", died_on: "2008-08-11"
carr        = SpaceTraveler.create name: "Gerald Carr",          sex: "M", nation: usa, born_on: "1932-08-22"
duke        = SpaceTraveler.create name: "Charles Duke",         sex: "M", nation: usa, born_on: "1935-10-03"
engle       = SpaceTraveler.create name: "Joseph Engle",         sex: "M", nation: usa, born_on: "1932-08-26"
evans       = SpaceTraveler.create name: "Ronald Evans",         sex: "M", nation: usa, born_on: "1933-11-10", died_on: "1990-04-07"
givens      = SpaceTraveler.create name: "Edward Givens",        sex: "M", nation: usa, born_on: "1930-01-05", died_on: "1967-06-06"
haise       = SpaceTraveler.create name: "Fred Haise",           sex: "M", nation: usa, born_on: "1933-11-14"
irwin       = SpaceTraveler.create name: "James Irwin",          sex: "M", nation: usa, born_on: "1930-03-17", died_on: "1991-08-08"
lind        = SpaceTraveler.create name: "Don Lind",             sex: "M", nation: usa, born_on: "1930-05-18"
lousma      = SpaceTraveler.create name: "Jack Lousma",          sex: "M", nation: usa, born_on: "1936-02-29"
mattingly   = SpaceTraveler.create name: "T. 'Ken' Mattingly",   sex: "M", nation: usa, born_on: "1936-03-17"
mccandless  = SpaceTraveler.create name: "Bruce McCandless",     sex: "M", nation: usa, born_on: "1937-06-08"
mitchell    = SpaceTraveler.create name: "Edgar Mitchell",       sex: "M", nation: usa, born_on: "1930-09-17", died_on: "2016-02-04"
pogue       = SpaceTraveler.create name: "William Pogue",        sex: "M", nation: usa, born_on: "1930-01-23", died_on: "2014-03-03"
roosa       = SpaceTraveler.create name: "Stuart Roosa",         sex: "M", nation: usa, born_on: "1933-08-16", died_on: "1994-12-12"
swigert     = SpaceTraveler.create name: "Jack Swigert",         sex: "M", nation: usa, born_on: "1931-08-30", died_on: "1982-12-27"
weitz       = SpaceTraveler.create name: "Paul Weitz",           sex: "M", nation: usa, born_on: "1932-07-25"
worden      = SpaceTraveler.create name: "Alfred Worden",        sex: "M", nation: usa, born_on: "1932-02-07"

# The Vanguard Six
# https://en.wikipedia.org/wiki/Vostok_programme
bykovsky   = SpaceTraveler.create name: "Valery Bykovsky",      sex: "M", nation: ussr, born_on: "1934-08-02"
gagarin    = SpaceTraveler.create name: "Yuri Gagarin",         sex: "M", nation: ussr, born_on: "1934-03-09", died_on: "1968-03-27"
kartashov  = SpaceTraveler.create name: "Anatoli Kartashov",    sex: "M", nation: ussr, born_on: "1932-08-25", died_on: "2005-12-11" # original, dismissed for medical reasons
nelyubov   = SpaceTraveler.create name: "Grigori Nelyubov",     sex: "M", nation: ussr, born_on: "1934-03-31", died_on: "1966-02-18" # replacement, but dismissed for disorderly conduct
nikolayev  = SpaceTraveler.create name: "Andriyan Nikolayev",   sex: "M", nation: ussr, born_on: "1929-09-01", died_on: "2004-07-03"
popovich   = SpaceTraveler.create name: "Pavel Popovich",       sex: "M", nation: ussr, born_on: "1930-10-05", died_on: "2009-09-29"
titov      = SpaceTraveler.create name: "Gherman Titov",        sex: "M", nation: ussr, born_on: "1935-09-01", died_on: "2000-09-20"
varlamov   = SpaceTraveler.create name: "Valentin Varlamov",    sex: "M", nation: ussr, born_on: "1934-08-15", died_on: "1980-10-02" # original, dismissed for medical reasons

# Graduate of the Women's Cosmonaut Group
tereshkova = SpaceTraveler.create name: "Valentina Tereshkova", sex: "F", nation: ussr, born_on: "1937-03-06"

# Voskhod Cosmonauts
belyayev   = SpaceTraveler.create name: "Pavel Belyayev",        sex: "M", nation: ussr, born_on: "1925-06-26", died_on: "1970-01-10"
feoktistov = SpaceTraveler.create name: "Konstantin Feoktistov", sex: "M", nation: ussr, born_on: "1926-02-07", died_on: "2009-11-21"
komarov    = SpaceTraveler.create name: "Vladimir Komarov",      sex: "M", nation: ussr, born_on: "1927-03-16", died_on: "1967-04-24"
leonov     = SpaceTraveler.create name: "Alexey Leonov",         sex: "M", nation: ussr, born_on: "1934-05-30"
yegorov    = SpaceTraveler.create name: "Boris Yegorov",         sex: "M", nation: ussr, born_on: "1937-11-26", died_on: "1994-09-12"

# Soviet Space Dogs
laika       = SpaceTraveler.create name: "Laika (Dog)",       sex: "F", nation: ussr, born_on: "1954-01-01", died_on: "1957-11-03"
belka       = SpaceTraveler.create name: "Belka (Dog)",       sex: "F", nation: ussr, born_on: "1954-01-01", died_on: "1966-01-01"
strelka     = SpaceTraveler.create name: "Strelka (Dog)",     sex: "F", nation: ussr, born_on: "1954-01-01", died_on: "1966-01-01"
pchyolka    = SpaceTraveler.create name: "Pchyolka (Dog)",    sex: "F", nation: ussr, born_on: "1956-01-01", died_on: "1960-12-02"
mushka      = SpaceTraveler.create name: "Mushka (Dog)",      sex: "F", nation: ussr, born_on: "1956-01-01", died_on: "1960-12-02"
chernushka  = SpaceTraveler.create name: "Chernushka (Dog)",  sex: "F", nation: ussr, born_on: "1956-01-01", died_on: "1968-01-01"
zvyozdochka = SpaceTraveler.create name: "Zvyozdochka (Dog)", sex: "F", nation: ussr, born_on: "1956-01-01", died_on: "1968-01-01"
veterok     = SpaceTraveler.create name: "Veterok (Dog)",     sex: "M", nation: ussr, born_on: "1963-01-01", died_on: "1975-01-01"
ugolyok     = SpaceTraveler.create name: "Ugolyok (Dog)",     sex: "M", nation: ussr, born_on: "1963-01-01", died_on: "1975-01-01"

# Space Agency ↔ Nation

usa.space_agencies << nasa
ussr.space_agencies << ussr_sa
ussr.space_agencies << interkosmos

# Mission ↔ Space Traveler

mr3.space_travelers << shepard
mr4.space_travelers << grissom
ma6.space_travelers << glenn
ma7.space_travelers << carpenter
ma8.space_travelers << schirra
ma9.space_travelers << cooper
g03.space_travelers << [grissom, young]
g04.space_travelers << [mcdivitt, white]
g05.space_travelers << [cooper, conrad]
g06.space_travelers << [borman, lovell]
g07.space_travelers << [schirra, stafford]
g08.space_travelers << [armstrong, scott]
g09.space_travelers << [stafford, cernan]
g10.space_travelers << [young, collins]
g11.space_travelers << [conrad, gordon]
g12.space_travelers << [lovell, aldrin]
a01.space_travelers << [grissom, white, chaffee]
a07.space_travelers << [schirra, cunningham, eisele]
a08.space_travelers << [borman, lovell, anders]
a09.space_travelers << [mcdivitt, scott, schweickart]
a10.space_travelers << [stafford, young, cernan]
a11.space_travelers << [armstrong, collins, aldrin]
a12.space_travelers << [conrad, gordon, bean]
a13.space_travelers << [lovell, swigert, haise]
a14.space_travelers << [shepard, roosa, mitchell]
a15.space_travelers << [scott, worden, irwin]
a16.space_travelers << [young, mattingly, duke]
a17.space_travelers << [cernan, evans, schmitt]

sp2.space_travelers << laika
ks2.space_travelers << [belka, strelka]
ks3.space_travelers << [pchyolka, mushka]
ks4.space_travelers << chernushka
ks5.space_travelers << zvyozdochka
vk1.space_travelers << gagarin
vk2.space_travelers << titov
vk3.space_travelers << nikolayev
vk4.space_travelers << popovich
vk5.space_travelers << bykovsky
vk6.space_travelers << tereshkova
vd1.space_travelers << [komarov, feoktistov, yegorov]
vd2.space_travelers << [belyayev, leonov]
k110.space_travelers << [veterok, ugolyok]
