# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Favorite.destroy_all 
User.destroy_all 
Audio.destroy_all 


username = [
    'cmur64',
    'maitfam',
    'ekim20',
    'rcleary16',
    'gdwire11',
  ]
   
username.each do |name|
    User.create(username: name)
end

beach = Audio.create(name: "Beach Waves", audio_path: "../breathe_frontend/audios/beach.mp3 ", category: "Sleep", length: 600)
rain = Audio.create(name: "Rain", audio_path: "../breathe_frontend/audios/rain.mp3", category: "Sleep", length: 600)
waterfall = Audio.create(name: "Waterfall", audio_path: "../breathe_frontend/audios/waterfall.mp3", category: "Sleep", length: 42)
deepsleep = Audio.create(name: "Deep Sleep", audio_path: "../breathe_frontend/audios/ultimatedeepsleep.mp3", category: "Sleep", length: 1200)
babbling_brook = Audio.create(name: "Babbling Brook", audio_path: "../breathe_frontend/audios/babbling_brook.mp3 ", category: "Sleep", length: 600)

tension_release = Audio.create(name: "Tension Release", audio_path: "../breathe_frontend/audios/VidyamalaTensionRelease.mp3", category: "Meditation", length: 345)
mindfulness_breathing = Audio.create(name: "Meditative Breathing", audio_path: "../breathe_frontend/audios/FreeMindfulness3MinuteBreathing.mp3", category: "Meditation", length: 216)
mindfulness_sounds = Audio.create(name: "Mindfulness", audio_path: "../breathe_frontend/audios/FreeMindfulness3MinuteSounds.mp3", category: "Meditation", length: 182)
release_negativity = Audio.create(name: "Release Negativity", audio_path: "../breathe_frontend/audios/Release_Negativity_By_Jason_Stephenson.mp3", category: "Meditation", length: 600)
clear_mind = Audio.create(name: "Clear Your Mind", audio_path: "../breathe_frontend/audios/ClearYourMind_GreatMeditation.mp3", category: "Meditation", length: 600)

acoustic = Audio.create(name: "Acoustic Guitar", audio_path: "../breathe_frontend/audios/AcousticGuitar1.mp3", category: "Relaxation", length: 174)
namaste = Audio.create(name: "Namaste", audio_path: "../breathe_frontend/audios/Namaste.mp3", category: "Relaxation", length: 324)
calm = Audio.create(name: "Calming", audio_path: "../breathe_frontend/audios/calm.mp3", category: "Relaxation", length: 300)
inner_peace = Audio.create(name: "Inner Peace", audio_path: "../breathe_frontend/audios/deepmeditation.mp3", category: "Relaxation", length: 900)
calmWind= Audio.create(name: "Calm Wind", audio_path: "../breathe_frontend/audios/Peder B. Helland - Calm Wind.mp3", category: "Relaxation", length: 600)

9.times {
    Favorite.create(user_id: User.all.sample.id, audio_id: Audio.all.sample.id)
}

puts 'Data Seeded!'