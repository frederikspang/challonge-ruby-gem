# Challonge Ruby Gem

Utilize the CHALLONGE! API with preconfigured ActiveResource classes.


## Install and Configure

Add ```challonge-api``` to your Gemfile:

```
gem 'challonge-api'
```

Add challonge-api as a dependency for your project and set your username and API key on startup. This can go into an initializer, if you're using Rails, or just somewhere in the top of your project.

```
# config/initializers/challonge.rb
Challonge.configure do |config|
  config.api_user = 'username'
  config.api_key = '123keyayaonge'
end
```

## Basic Usage

Get all your tournaments:

```
Challonge::Tournament.find(:all)
```

Get a filtered set of tournaments:

```
Challonge::Tournament.find(:all, params: { state: 'in_progress' })
```

Run a basic tournament from start to finish:

```
t = Challonge::Tournament.new
t.name = 'Basic Single Elim Tournament'
t.url = 'unique_url_123'
t.tournament_type = 'single elimination'
t.save
# if save returns false, view validation errors with t.errors.full_messages

# add some participants
Challonge::Participant.create(name: 'Joe', tournament: t)
Challonge::Participant.create(name: 'Bob', tournament: t)

t.start!
# at this point, t.live_image_url and t.full_challonge_url are available (t.reload to refetch)

m = t.matches(:first)
m.scores_csv = '3-1,3-2'
m.winner_id = m.player1_id
m.save
# congratulations, Joe

t.finalize!
# Finalize a tournament, rendering its results permanent.
```
