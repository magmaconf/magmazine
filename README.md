# Magmazine


## Installation

```
$ git clone git@github.com:crowdint/magmazine.git
$ bundle install
$ rake db:setup
```
## Configuration
```
$ rails c
User.create!({ email: "user@email.com", password: "12345",
confirm_password: "12345" })
```
### Load Translations with I18n Active Record

```
$ rails c
I18n.backend.load_translations

```

### Set Guard

```
$ rake db:test:prepare
$ bundle exec guard start
```

## Run Application

```
$ rails server
```

## Aditional Usage

### If you want to use a Gem Pry an IRB alternative and runtime developer console


Put in Controllers wherever you want like this:

```
binding.pry
```

Put in Views wherever you want like this:

```
- binding.pry
```

After that just go to your server console and see what it's going on,
and start to play.

When you finish just write:

> Exit


## Expected Conventions

* http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html
