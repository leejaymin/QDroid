.class public Lcom/superdroid/rss/RSSHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "RSSHandler.java"


# instance fields
.field final RSS_CATEGORY:I

.field final RSS_DESCRIPTION:I

.field final RSS_ENCLOSURE:I

.field final RSS_LINK:I

.field final RSS_PUBDATE:I

.field final RSS_TITLE:I

.field protected _feed:Lcom/superdroid/rss/model/RSSFeed;

.field protected _item:Lcom/superdroid/rss/model/RSSItem;

.field protected _lastElementName:Ljava/lang/String;

.field protected _sb:Ljava/lang/StringBuffer;

.field protected bFoundChannel:Z

.field protected currentstate:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/superdroid/rss/RSSHandler;->_lastElementName:Ljava/lang/String;

    .line 27
    iput-boolean v1, p0, Lcom/superdroid/rss/RSSHandler;->bFoundChannel:Z

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/superdroid/rss/RSSHandler;->RSS_TITLE:I

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/superdroid/rss/RSSHandler;->RSS_LINK:I

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lcom/superdroid/rss/RSSHandler;->RSS_DESCRIPTION:I

    .line 32
    const/4 v0, 0x4

    iput v0, p0, Lcom/superdroid/rss/RSSHandler;->RSS_CATEGORY:I

    .line 33
    const/4 v0, 0x5

    iput v0, p0, Lcom/superdroid/rss/RSSHandler;->RSS_PUBDATE:I

    .line 34
    const/4 v0, 0x6

    iput v0, p0, Lcom/superdroid/rss/RSSHandler;->RSS_ENCLOSURE:I

    .line 36
    iput v1, p0, Lcom/superdroid/rss/RSSHandler;->currentstate:I

    .line 40
    return-void
.end method

.method public static getFeed(Ljava/lang/String;)Lcom/superdroid/rss/model/RSSFeed;
    .locals 8
    .parameter "rssLink"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-static {p0}, Lcom/superdroid/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 146
    const-string p0, "http://news.google.com/news?ned=us&topic=s&output=rss"

    .line 150
    :cond_0
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 152
    .local v5, url:Ljava/net/URL;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 153
    .local v1, factory:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 155
    .local v3, parser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v6

    .line 156
    .local v6, xmlreader:Lorg/xml/sax/XMLReader;
    new-instance v4, Lcom/superdroid/rss/RSSHandler;

    invoke-direct {v4}, Lcom/superdroid/rss/RSSHandler;-><init>()V

    .line 158
    .local v4, theRssHandler:Lcom/superdroid/rss/RSSHandler;
    invoke-interface {v6, v4}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 160
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 161
    .local v2, is:Lorg/xml/sax/InputSource;
    invoke-interface {v6, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 162
    invoke-virtual {v4}, Lcom/superdroid/rss/RSSHandler;->getFeed()Lcom/superdroid/rss/model/RSSFeed;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v7

    return-object v7

    .line 163
    .end local v1           #factory:Ljavax/xml/parsers/SAXParserFactory;
    .end local v2           #is:Lorg/xml/sax/InputSource;
    .end local v3           #parser:Ljavax/xml/parsers/SAXParser;
    .end local v4           #theRssHandler:Lcom/superdroid/rss/RSSHandler;
    .end local v5           #url:Ljava/net/URL;
    .end local v6           #xmlreader:Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 164
    .local v0, e:Ljava/net/MalformedURLException;
    throw v0

    .line 165
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v7

    move-object v0, v7

    .line 166
    .local v0, e:Ljavax/xml/parsers/ParserConfigurationException;
    throw v0

    .line 167
    .end local v0           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v7

    move-object v0, v7

    .line 168
    .local v0, e:Lorg/xml/sax/SAXException;
    throw v0

    .line 169
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :catch_3
    move-exception v7

    move-object v0, v7

    .line 170
    .local v0, e:Ljava/io/IOException;
    throw v0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/superdroid/rss/RSSHandler;->_sb:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 141
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 54
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 108
    iget v0, p0, Lcom/superdroid/rss/RSSHandler;->currentstate:I

    packed-switch v0, :pswitch_data_0

    .line 130
    :goto_0
    const-string v0, "item"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/superdroid/rss/RSSHandler;->_feed:Lcom/superdroid/rss/model/RSSFeed;

    iget-object v1, p0, Lcom/superdroid/rss/RSSHandler;->_item:Lcom/superdroid/rss/model/RSSItem;

    invoke-virtual {v0, v1}, Lcom/superdroid/rss/model/RSSFeed;->addItem(Lcom/superdroid/rss/model/RSSItem;)I

    .line 135
    :cond_0
    return-void

    .line 110
    :pswitch_0
    iget-object v0, p0, Lcom/superdroid/rss/RSSHandler;->_item:Lcom/superdroid/rss/model/RSSItem;

    iget-object v1, p0, Lcom/superdroid/rss/RSSHandler;->_sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/superdroid/rss/model/RSSItem;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :pswitch_1
    iget-object v0, p0, Lcom/superdroid/rss/RSSHandler;->_item:Lcom/superdroid/rss/model/RSSItem;

    iget-object v1, p0, Lcom/superdroid/rss/RSSHandler;->_sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/superdroid/rss/model/RSSItem;->setLink(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :pswitch_2
    iget-object v0, p0, Lcom/superdroid/rss/RSSHandler;->_item:Lcom/superdroid/rss/model/RSSItem;

    iget-object v1, p0, Lcom/superdroid/rss/RSSHandler;->_sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/superdroid/rss/model/RSSItem;->setDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :pswitch_3
    iget-object v0, p0, Lcom/superdroid/rss/RSSHandler;->_item:Lcom/superdroid/rss/model/RSSItem;

    iget-object v1, p0, Lcom/superdroid/rss/RSSHandler;->_sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/superdroid/rss/model/RSSItem;->setCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :pswitch_4
    iget-object v0, p0, Lcom/superdroid/rss/RSSHandler;->_item:Lcom/superdroid/rss/model/RSSItem;

    iget-object v1, p0, Lcom/superdroid/rss/RSSHandler;->_sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/superdroid/rss/model/RSSItem;->setPubData(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getFeed()Lcom/superdroid/rss/model/RSSFeed;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/superdroid/rss/RSSHandler;->_feed:Lcom/superdroid/rss/model/RSSFeed;

    return-object v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/superdroid/rss/model/RSSFeed;

    invoke-direct {v0}, Lcom/superdroid/rss/model/RSSFeed;-><init>()V

    iput-object v0, p0, Lcom/superdroid/rss/RSSHandler;->_feed:Lcom/superdroid/rss/model/RSSFeed;

    .line 49
    new-instance v0, Lcom/superdroid/rss/model/RSSItem;

    invoke-direct {v0}, Lcom/superdroid/rss/model/RSSItem;-><init>()V

    iput-object v0, p0, Lcom/superdroid/rss/RSSHandler;->_item:Lcom/superdroid/rss/model/RSSItem;

    .line 50
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string v3, "url"

    .line 59
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/superdroid/rss/RSSHandler;->_sb:Ljava/lang/StringBuffer;

    .line 60
    const/4 v1, 0x0

    iput v1, p0, Lcom/superdroid/rss/RSSHandler;->currentstate:I

    .line 62
    const-string v1, "image"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/superdroid/rss/RSSHandler;->_feed:Lcom/superdroid/rss/model/RSSFeed;

    iget-object v2, p0, Lcom/superdroid/rss/RSSHandler;->_item:Lcom/superdroid/rss/model/RSSItem;

    invoke-virtual {v2}, Lcom/superdroid/rss/model/RSSItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/superdroid/rss/model/RSSFeed;->setTitle(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/superdroid/rss/RSSHandler;->_feed:Lcom/superdroid/rss/model/RSSFeed;

    iget-object v2, p0, Lcom/superdroid/rss/RSSHandler;->_item:Lcom/superdroid/rss/model/RSSItem;

    invoke-virtual {v2}, Lcom/superdroid/rss/model/RSSItem;->getPubData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/superdroid/rss/model/RSSFeed;->setPubDate(Ljava/lang/String;)V

    .line 66
    :cond_0
    const-string v1, "item"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    new-instance v1, Lcom/superdroid/rss/model/RSSItem;

    invoke-direct {v1}, Lcom/superdroid/rss/model/RSSItem;-><init>()V

    iput-object v1, p0, Lcom/superdroid/rss/RSSHandler;->_item:Lcom/superdroid/rss/model/RSSItem;

    .line 102
    :cond_1
    :goto_0
    return-void

    .line 71
    :cond_2
    const-string v1, "title"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    const/4 v1, 0x1

    iput v1, p0, Lcom/superdroid/rss/RSSHandler;->currentstate:I

    goto :goto_0

    .line 76
    :cond_3
    const-string v1, "description"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 77
    const/4 v1, 0x3

    iput v1, p0, Lcom/superdroid/rss/RSSHandler;->currentstate:I

    goto :goto_0

    .line 80
    :cond_4
    const-string v1, "link"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 81
    const/4 v1, 0x2

    iput v1, p0, Lcom/superdroid/rss/RSSHandler;->currentstate:I

    goto :goto_0

    .line 84
    :cond_5
    const-string v1, "category"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 85
    const/4 v1, 0x4

    iput v1, p0, Lcom/superdroid/rss/RSSHandler;->currentstate:I

    goto :goto_0

    .line 88
    :cond_6
    const-string v1, "pubDate"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 89
    const/4 v1, 0x5

    iput v1, p0, Lcom/superdroid/rss/RSSHandler;->currentstate:I

    goto :goto_0

    .line 92
    :cond_7
    const-string v1, "enclosure"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    const/4 v1, 0x6

    iput v1, p0, Lcom/superdroid/rss/RSSHandler;->currentstate:I

    .line 95
    const-string v1, "url"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, url:Ljava/lang/String;
    invoke-static {v0}, Lcom/superdroid/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/superdroid/rss/RSSHandler;->_item:Lcom/superdroid/rss/model/RSSItem;

    const-string v2, "url"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/superdroid/rss/model/RSSItem;->setEnclosure(Ljava/lang/String;)V

    goto :goto_0
.end method
