.class public Lcom/madvil/core/BillboardChartParser;
.super Ljava/lang/Object;
.source "BillboardChartParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;Landroid/content/Context;)Lcom/madvil/core/ChartAdapter;
    .locals 4
    .parameter "xmlFile"
    .parameter "context"

    .prologue
    .line 17
    const/4 v0, 0x0

    .line 21
    .local v0, chartAdapter:Lcom/madvil/core/ChartAdapter;
    :try_start_0
    new-instance v1, Lcom/madvil/core/ChartAdapter;

    invoke-static {p0, p1}, Lcom/madvil/core/BillboardChartParser;->parsing(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, p1, v3}, Lcom/madvil/core/ChartAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #chartAdapter:Lcom/madvil/core/ChartAdapter;
    .local v1, chartAdapter:Lcom/madvil/core/ChartAdapter;
    move-object v0, v1

    .end local v1           #chartAdapter:Lcom/madvil/core/ChartAdapter;
    .restart local v0       #chartAdapter:Lcom/madvil/core/ChartAdapter;
    move-object v3, v1

    .line 28
    :goto_0
    return-object v3

    .line 24
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 25
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static parsing(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .parameter "xmlFile"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/madvil/core/SimpleSong;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/madvil/core/SimpleSong;>;"
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 36
    .local v0, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 38
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {p1, p0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p1

    .line 39
    .local p1, stream:Ljava/io/InputStream;
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 40
    .local p0, document:Lorg/w3c/dom/Document;
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 42
    const-string p1, "channel"

    .end local p1           #stream:Ljava/io/InputStream;
    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 43
    .local p0, channelNode:Lorg/w3c/dom/NodeList;
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .end local p0           #channelNode:Lorg/w3c/dom/NodeList;
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 44
    .local v0, itemsNL:Lorg/w3c/dom/NodeList;
    const/4 p0, 0x0

    .local p0, i:I
    move p1, p0

    .end local p0           #i:I
    .local p1, i:I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    if-lt p1, p0, :cond_0

    move-object p0, v1

    .line 68
    .end local v0           #itemsNL:Lorg/w3c/dom/NodeList;
    .end local v1           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/madvil/core/SimpleSong;>;"
    .end local p1           #i:I
    :goto_1
    return-object p0

    .line 45
    .restart local v0       #itemsNL:Lorg/w3c/dom/NodeList;
    .restart local v1       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/madvil/core/SimpleSong;>;"
    .restart local p1       #i:I
    :cond_0
    invoke-interface {v0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "item"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p0

    if-eqz p0, :cond_1

    .line 47
    :try_start_1
    invoke-interface {v0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    .line 49
    .local p0, tempString:Ljava/lang/String;
    new-instance v3, Lcom/madvil/core/SimpleSong;

    invoke-direct {v3}, Lcom/madvil/core/SimpleSong;-><init>()V

    .line 50
    .local v3, ss:Lcom/madvil/core/SimpleSong;
    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 51
    .end local p0           #tempString:Ljava/lang/String;
    .local v2, tempString:Ljava/lang/String;
    move-object p0, v2

    .line 52
    .local p0, artist:Ljava/lang/String;
    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 53
    const/4 v4, 0x0

    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, song:Ljava/lang/String;
    invoke-virtual {v3, p0}, Lcom/madvil/core/SimpleSong;->setArtist(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v3, v2}, Lcom/madvil/core/SimpleSong;->setName(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 44
    .end local v2           #song:Ljava/lang/String;
    .end local v3           #ss:Lcom/madvil/core/SimpleSong;
    .end local p0           #artist:Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 p0, p1, 0x1

    .end local p1           #i:I
    .local p0, i:I
    move p1, p0

    .end local p0           #i:I
    .restart local p1       #i:I
    goto :goto_0

    .line 64
    .end local v0           #itemsNL:Lorg/w3c/dom/NodeList;
    .end local v1           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/madvil/core/SimpleSong;>;"
    .end local p1           #i:I
    :catch_0
    move-exception p0

    .line 65
    .local p0, ex:Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    const/4 p0, 0x0

    goto :goto_1

    .line 58
    .end local p0           #ex:Ljava/lang/Exception;
    .restart local v0       #itemsNL:Lorg/w3c/dom/NodeList;
    .restart local v1       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/madvil/core/SimpleSong;>;"
    .restart local p1       #i:I
    :catch_1
    move-exception p0

    goto :goto_2
.end method
