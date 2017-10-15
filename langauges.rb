require 'net/http'
require 'json'

def type_case(language)
  l = language
    .gsub(/\+\+/,'PlusPlus')
    .gsub(/#/,'Sharp')
    .gsub(/^1/,'One')
    .gsub(/[\s'\-\+]+/, '')
  l[0] = l[0].capitalize
  l
end

def default(color)
  if color.nil?
    "grey"
  else
    color
  end
end

response = Net::HTTP.get(URI('https://raw.githubusercontent.com/ozh/github-colors/master/colors.json'))
json = JSON.parse(response)

def all_langs_in_type_case(json)
  json.keys.map do |lang|
    "    | #{type_case(lang)}"
  end.join("\n")
end

def string_to_type_mapping(json)
  json.keys.map do |lang|
<<-CASE
        \"#{lang}\" ->
            #{type_case(lang)}
CASE
  end.join("\n")
end

def type_to_color_mapping(json)
  json.map do |lang, attr|
<<-CASE
        #{type_case(lang)} ->
           \"#{default(attr['color'])}\"
CASE
  end.join("\n")
end

puts <<-TEMPLATE
module Language exposing (..)

type Language
    = Other
#{all_langs_in_type_case(json)}

fromString : String -> Language
fromString raw =
    case raw of
#{string_to_type_mapping(json)}
        _ ->
            Other


color : Language -> String
color language =
    case language of
#{type_to_color_mapping(json)}
        Other ->
            "grey"
TEMPLATE
