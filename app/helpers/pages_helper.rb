module PagesHelper
  def getTags str
    str.scan(/#\S+/)
  end
  
  def tagLinkSub (str)
    tags = getTags(str)
    tags.each do |tag|
      str.gsub!(tag, "<a href='https://twitter.com/search?q=#{tag.gsub("#","%23")}' target='_blank'>#{tag}</a>")
    end
    str
  end
  
  def getHandles str
    str.scan(/@\S+/).each { |h| h.gsub(/[^a-zA-Z0-9\s]$/,'')}
  end
  
  def handleLinkSub(str)
    users = getHandles(str)
    users.each do |user|
      str.gsub!(user, "<a href='https://twitter.com/#{user.gsub("@","")}' target='_blank'>#{user}</a>")
    end
    str
  end
  
  def subs str
    tags = tagLinkSub str
    handleLinkSub tags
  end

  def twitter_parser tweet
    url_regex = %r{
      \b
      (
        (?: [a-z][\w-]+:
         (?: /{1,3} | [a-z0-9%] ) |
          www\d{0,3}[.] |
          [a-z0-9.\-]+[.][a-z]{2,4}/
        )
        (?:
         [^\s()<>]+ | \(([^\s()<>]+|(\([^\s()<>]+\)))*\)
        )+
        (?:
          \(([^\s()<>]+|(\([^\s()<>]+\)))*\) |
          [^\s`!()\[\]{};:'".,<>?«»“”‘’]
        )
      )
    }ix
    tweet = tweet.gsub(url_regex) do |url|
      "<a href='#{url}' target='_blank'>#{url}</a>"
    end 
    tweet = subs(tweet)
  end
end
