# Crib Ninja (cribninja.com)

### college apartment hunting sucks. we make it better.

###### v1 built during 48 hours [#48hfw](https://twitter.com/#48hfw) brought to you by [Founders](http://atfounders.com)

[Todd Garland](http://toddgarland.com):
> Openly share and talk to people about your idea. Use their lack of interest or doubt to fuel your motivation to make it happen.

## Getting Started

You need to setup all the good stuff like the Postgres database, RVM, Ruby, and bundler. Once you have that setup, this is how to get started.

Install the required gems:

```console
bundle install
```

Migrate to the latest version of the database:

```console
bundle exec rake db:migrate
```

Finally, you should be able to start the app:

```console
foreman start
```
