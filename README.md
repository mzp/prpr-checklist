# Prpr::Checklist

[Prpr](https://github.com/mzp/prpr) plugin to post check list to pull requset.

## Install

Add this line to your application's Gemfile:

```ruby
# Gemfile
gem 'prpr-checklist'
```

## Usage
When new pull request is created, the content of `CONTRIBUTING.md` is posted as comment.

![checklist](https://raw.githubusercontent.com/mzp/prpr-checklist/master/checklist.png)

## Env

```
CHECKLIST_NAME - filename of check list. (Default: CONTRIBUTING.md)
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
