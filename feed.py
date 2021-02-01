import feedparser

# For now we will hard code an RSS feed into the Feed parser.
NewsFeed = feedparser.parse("https://feeds.simplecast.com/6HzeyO6b")
entry = NewsFeed.entries[0]

print(entry.values())

