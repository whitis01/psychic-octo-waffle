import feedparser

print("Enter your name:")
x = input()
print("Hello, " + x)

# For now we will hard code an RSS feed into the Feed parser.
NewsFeed = feedparser.parse(x)
# entry = NewsFeed.entries[0]

print(len(NewsFeed.entries))

for post in NewsFeed.entries:
    print(post.title + " : " + post.link)

#print(NewsFeed.values())
print(NewsFeed.keys())

