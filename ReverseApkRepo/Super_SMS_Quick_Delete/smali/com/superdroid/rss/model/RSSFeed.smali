.class public Lcom/superdroid/rss/model/RSSFeed;
.super Ljava/lang/Object;
.source "RSSFeed.java"


# instance fields
.field protected _itemCount:I

.field protected _itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rss/model/RSSItem;",
            ">;"
        }
    .end annotation
.end field

.field protected _pubdate:Ljava/lang/String;

.field protected _title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/superdroid/rss/model/RSSFeed;->_title:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/superdroid/rss/model/RSSFeed;->_pubdate:Ljava/lang/String;

    .line 9
    iput v1, p0, Lcom/superdroid/rss/model/RSSFeed;->_itemCount:I

    .line 10
    iput-object v0, p0, Lcom/superdroid/rss/model/RSSFeed;->_itemList:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/superdroid/rss/model/RSSFeed;->_itemList:Ljava/util/List;

    .line 14
    return-void
.end method


# virtual methods
.method public addItem(Lcom/superdroid/rss/model/RSSItem;)I
    .locals 1
    .parameter "item"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/superdroid/rss/model/RSSFeed;->_itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget v0, p0, Lcom/superdroid/rss/model/RSSFeed;->_itemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/superdroid/rss/model/RSSFeed;->_itemCount:I

    .line 19
    iget v0, p0, Lcom/superdroid/rss/model/RSSFeed;->_itemCount:I

    return v0
.end method

.method public getAllItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rss/model/RSSItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/superdroid/rss/model/RSSFeed;->_itemList:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Lcom/superdroid/rss/model/RSSItem;
    .locals 1
    .parameter "location"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/superdroid/rss/model/RSSFeed;->_itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/superdroid/rss/model/RSSItem;

    return-object p0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/superdroid/rss/model/RSSFeed;->_itemCount:I

    return v0
.end method

.method public getPubDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/superdroid/rss/model/RSSFeed;->_pubdate:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/superdroid/rss/model/RSSFeed;->_title:Ljava/lang/String;

    return-object v0
.end method

.method public setPubDate(Ljava/lang/String;)V
    .locals 0
    .parameter "pubdate"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/superdroid/rss/model/RSSFeed;->_pubdate:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/superdroid/rss/model/RSSFeed;->_title:Ljava/lang/String;

    .line 36
    return-void
.end method
