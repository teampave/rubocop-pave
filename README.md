# rubocop-pave

Pave shared rubocop configs.

## Installation

Add this line to your application's Gemfile:

```ruby
group :test, :development do
  gem 'rubocop-pave', require: false
end
```

And then run:

```bash
bundle install
```

## Usage

Create a `.rubocop.yml` with the following directives:

```yaml
inherit_gem:
  rubocop-pave:
    - default.yml
```

Now, run:

```bash
bundle exec rubocop
```

You do not need to include rubocop directly in your application's dependencies. rubocop-pave will include a specific version of `rubocop` and `rubocop-rspec` that is shared across all projects.
