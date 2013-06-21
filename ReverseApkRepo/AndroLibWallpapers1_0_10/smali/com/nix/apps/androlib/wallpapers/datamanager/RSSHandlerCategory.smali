.class public Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "RSSHandlerCategory.java"


# instance fields
.field public categoriesFound:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nix/apps/androlib/wallpapers/datamanager/category;",
            ">;"
        }
    .end annotation
.end field

.field private currentCategory:Lcom/nix/apps/androlib/wallpapers/datamanager/category;

.field private inCategory:Z

.field private inCategoryCount:Z

.field private inCategoryID:Z

.field private inItem:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->categoriesFound:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;

    invoke-direct {v0}, Lcom/nix/apps/androlib/wallpapers/datamanager/category;-><init>()V

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->currentCategory:Lcom/nix/apps/androlib/wallpapers/datamanager/category;

    .line 30
    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->inItem:Z

    .line 31
    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->inCategory:Z

    .line 32
    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->inCategoryID:Z

    .line 33
    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->inCategoryCount:Z

    .line 25
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 4
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 61
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 62
    .local v0, chars:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->inItem:Z

    if-eqz v1, :cond_2

    .line 65
    iget-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->inCategory:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->currentCategory:Lcom/nix/apps/androlib/wallpapers/datamanager/category;

    iget-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->CatName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->CatName:Ljava/lang/String;

    .line 66
    :cond_0
    iget-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->inCategoryID:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->currentCategory:Lcom/nix/apps/androlib/wallpapers/datamanager/category;

    iget-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->CatID:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->CatID:Ljava/lang/String;

    .line 67
    :cond_1
    iget-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->inCategoryCount:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->currentCategory:Lcom/nix/apps/androlib/wallpapers/datamanager/category;

    iget-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->CatCount:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->CatCount:Ljava/lang/String;

    .line 69
    :cond_2
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "uri"
    .parameter "name"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string v3, "item"

    .line 46
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "item"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->inItem:Z

    .line 52
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "item"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->currentCategory:Lcom/nix/apps/androlib/wallpapers/datamanager/category;

    iput-boolean v2, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->Special:Z

    .line 54
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->currentCategory:Lcom/nix/apps/androlib/wallpapers/datamanager/category;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->normal:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    iput-object v1, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->Type:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    .line 55
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->categoriesFound:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->currentCategory:Lcom/nix/apps/androlib/wallpapers/datamanager/category;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;

    invoke-direct {v0}, Lcom/nix/apps/androlib/wallpapers/datamanager/category;-><init>()V

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->currentCategory:Lcom/nix/apps/androlib/wallpapers/datamanager/category;

    .line 58
    :cond_1
    return-void

    .line 47
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "catname"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->inCategory:Z

    goto :goto_0

    .line 48
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "catid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->inCategoryID:Z

    goto :goto_0

    .line 49
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "catcount"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->inCategoryCount:Z

    goto :goto_0
.end method

.method public getFeed(Landroid/content/Context;Ljava/net/URL;)Z
    .locals 11
    .parameter "ctx"
    .parameter "url"

    .prologue
    .line 72
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->categoriesFound:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;

    invoke-direct {v0}, Lcom/nix/apps/androlib/wallpapers/datamanager/category;-><init>()V

    .line 75
    .local v0, cat:Lcom/nix/apps/androlib/wallpapers/datamanager/category;
    const-string v6, "0"

    iput-object v6, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->CatID:Ljava/lang/String;

    .line 76
    const v6, 0x7f04002e

    invoke-static {v6}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->CatName:Ljava/lang/String;

    .line 77
    sget-object v6, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->last:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    iput-object v6, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->Type:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    .line 78
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->Special:Z

    .line 79
    iget-object v6, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->categoriesFound:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;

    .end local v0           #cat:Lcom/nix/apps/androlib/wallpapers/datamanager/category;
    invoke-direct {v0}, Lcom/nix/apps/androlib/wallpapers/datamanager/category;-><init>()V

    .line 82
    .restart local v0       #cat:Lcom/nix/apps/androlib/wallpapers/datamanager/category;
    const-string v6, "0"

    iput-object v6, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->CatID:Ljava/lang/String;

    .line 83
    const v6, 0x7f04002f

    invoke-static {v6}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->CatName:Ljava/lang/String;

    .line 84
    sget-object v6, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->favs:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    iput-object v6, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->Type:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    .line 85
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->Special:Z

    .line 86
    iget-object v6, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->categoriesFound:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;

    .end local v0           #cat:Lcom/nix/apps/androlib/wallpapers/datamanager/category;
    invoke-direct {v0}, Lcom/nix/apps/androlib/wallpapers/datamanager/category;-><init>()V

    .line 89
    .restart local v0       #cat:Lcom/nix/apps/androlib/wallpapers/datamanager/category;
    const-string v6, "0"

    iput-object v6, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->CatID:Ljava/lang/String;

    .line 90
    const v6, 0x7f040030

    invoke-static {v6}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->CatName:Ljava/lang/String;

    .line 91
    sget-object v6, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->toprated:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    iput-object v6, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->Type:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    .line 92
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->Special:Z

    .line 93
    iget-object v6, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->categoriesFound:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;

    .end local v0           #cat:Lcom/nix/apps/androlib/wallpapers/datamanager/category;
    invoke-direct {v0}, Lcom/nix/apps/androlib/wallpapers/datamanager/category;-><init>()V

    .line 96
    .restart local v0       #cat:Lcom/nix/apps/androlib/wallpapers/datamanager/category;
    const-string v6, "0"

    iput-object v6, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->CatID:Ljava/lang/String;

    .line 97
    const v6, 0x7f040031

    invoke-static {v6}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->CatName:Ljava/lang/String;

    .line 98
    sget-object v6, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->random:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    iput-object v6, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->Type:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    .line 99
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->Special:Z

    .line 100
    iget-object v6, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->categoriesFound:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;

    .end local v0           #cat:Lcom/nix/apps/androlib/wallpapers/datamanager/category;
    invoke-direct {v0}, Lcom/nix/apps/androlib/wallpapers/datamanager/category;-><init>()V

    .line 103
    .restart local v0       #cat:Lcom/nix/apps/androlib/wallpapers/datamanager/category;
    const-string v6, "0"

    iput-object v6, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->CatID:Ljava/lang/String;

    .line 104
    const v6, 0x7f040032

    invoke-static {v6}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->CatName:Ljava/lang/String;

    .line 105
    sget-object v6, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->topfavs:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    iput-object v6, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->Type:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    .line 106
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->Special:Z

    .line 107
    iget-object v6, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->categoriesFound:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;

    .end local v0           #cat:Lcom/nix/apps/androlib/wallpapers/datamanager/category;
    invoke-direct {v0}, Lcom/nix/apps/androlib/wallpapers/datamanager/category;-><init>()V

    .line 110
    .restart local v0       #cat:Lcom/nix/apps/androlib/wallpapers/datamanager/category;
    const-string v6, "0"

    iput-object v6, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->CatID:Ljava/lang/String;

    .line 111
    const v6, 0x7f040033

    invoke-static {v6}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->CatName:Ljava/lang/String;

    .line 112
    sget-object v6, Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;->topinstalls:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    iput-object v6, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->Type:Lcom/nix/apps/androlib/wallpapers/datamanager/category$catType;

    .line 113
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/category;->Special:Z

    .line 114
    iget-object v6, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->categoriesFound:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 118
    .local v4, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 119
    .local v3, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 120
    .local v5, xr:Lorg/xml/sax/XMLReader;
    invoke-interface {v5, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 123
    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v6, Ljava/io/StringReader;

    sget-object v7, Lcom/nix/apps/androlib/wallpapers/modCommon;->dhttp:Lcom/nix/apps/androlib/wallpapers/DataHttpClient;

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/nix/apps/androlib/wallpapers/DataHttpClient;->GetXMLGzip(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 124
    .local v2, input:Lorg/xml/sax/InputSource;
    invoke-interface {v5, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 127
    const/4 v6, 0x1

    .line 138
    .end local v2           #input:Lorg/xml/sax/InputSource;
    .end local v3           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v4           #spf:Ljavax/xml/parsers/SAXParserFactory;
    .end local v5           #xr:Lorg/xml/sax/XMLReader;
    :goto_0
    return v6

    .line 128
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 129
    .local v1, e:Ljava/io/IOException;
    const-string v6, "Wallpapers"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v6, 0x0

    goto :goto_0

    .line 131
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 132
    .local v1, e:Lorg/xml/sax/SAXException;
    const-string v6, "Wallpapers"

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v6, 0x0

    goto :goto_0

    .line 134
    .end local v1           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 135
    .local v1, e:Ljavax/xml/parsers/ParserConfigurationException;
    const-string v6, "Wallpapers"

    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v6, 0x0

    goto :goto_0

    .line 137
    .end local v1           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_3
    move-exception v6

    move-object v1, v6

    .line 138
    .local v1, e:Ljava/lang/Exception;
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "uri"
    .parameter "name"
    .parameter "qName"
    .parameter "atts"

    .prologue
    const/4 v2, 0x1

    .line 37
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "item"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->inItem:Z

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "catname"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->inCategory:Z

    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "catid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->inCategoryID:Z

    goto :goto_0

    .line 40
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "catcount"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandlerCategory;->inCategoryCount:Z

    goto :goto_0
.end method
