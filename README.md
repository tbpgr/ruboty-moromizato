# Ruboty::Moromizato

An Ruboty Handler + Actions to show moromizatonized text.

[![Gem Version](https://badge.fury.io/rb/ruboty-moromizato.svg)](http://badge.fury.io/rb/ruboty-moromizato)

[Ruboty](https://github.com/r7kamura/ruboty) is Chat bot framework. Ruby + Bot = Ruboty

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruboty-moromizato'
```

And then execute:

    $ bundle

## Commands

|Command|Pattern|Description|
|:--|:--|:--|
|[convert](#convert)|/moromizato convert (.+)\z/|Show moromizatonized text|

## Usage
### convert
* Show moromizatonized text

~~~
>ruboty moromizato convert さしすせそ
>しゃししゅせしょ
>ruboty moromizato convert ローソン
>ローション
>ruboty moromizato convert あいうえお
>あいうえお
~~~

## ENV

|Name|Description|
|:--|:--|
|--|--|

## Dependency

|Name|Description|
|:--|:--|
|--|--|

## Contributing

1. Fork it ( https://github.com/tbpgr/ruboty-moromizato/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
