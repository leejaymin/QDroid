.class public Lcom/superdroid/rss/model/RSSItem;
.super Ljava/lang/Object;
.source "RSSItem.java"


# instance fields
.field protected _category:Ljava/lang/String;

.field protected _description:Ljava/lang/String;

.field protected _enclosure:Ljava/lang/String;

.field protected _link:Ljava/lang/String;

.field protected _pubData:Ljava/lang/String;

.field protected _title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/superdroid/rss/model/RSSItem;->_title:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/superdroid/rss/model/RSSItem;->_description:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/superdroid/rss/model/RSSItem;->_link:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/superdroid/rss/model/RSSItem;->_category:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/superdroid/rss/model/RSSItem;->_pubData:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/superdroid/rss/model/RSSItem;->_enclosure:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/superdroid/rss/model/RSSItem;->_category:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/superdroid/rss/model/RSSItem;->_description:Ljava/lang/String;

    return-object v0
.end method

.method public getEnclosure()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/superdroid/rss/model/RSSItem;->_enclosure:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/superdroid/rss/model/RSSItem;->_link:Ljava/lang/String;

    return-object v0
.end method

.method public getPubData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/superdroid/rss/model/RSSItem;->_pubData:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/superdroid/rss/model/RSSItem;->_title:Ljava/lang/String;

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .parameter "category"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/superdroid/rss/model/RSSItem;->_category:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/superdroid/rss/model/RSSItem;->_description:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setEnclosure(Ljava/lang/String;)V
    .locals 0
    .parameter "enclosure"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/superdroid/rss/model/RSSItem;->_enclosure:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .parameter "link"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/superdroid/rss/model/RSSItem;->_link:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setPubData(Ljava/lang/String;)V
    .locals 0
    .parameter "pubData"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/superdroid/rss/model/RSSItem;->_pubData:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/superdroid/rss/model/RSSItem;->_title:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x2a

    .line 64
    iget-object v0, p0, Lcom/superdroid/rss/model/RSSItem;->_title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/superdroid/rss/model/RSSItem;->_title:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/superdroid/rss/model/RSSItem;->_title:Ljava/lang/String;

    goto :goto_0
.end method
