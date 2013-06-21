.class public Lcom/wolfram/alpha/impl/WABannerImpl;
.super Ljava/lang/Object;
.source "WABannerImpl.java"

# interfaces
.implements Lcom/wolfram/alpha/WABanner;
.implements Lcom/wolfram/alpha/visitor/Visitable;
.implements Ljava/io/Serializable;


# static fields
.field static final EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WABannerImpl; = null

.field private static final serialVersionUID:J = 0x6c022035b2e2b177L


# instance fields
.field private contentElements:[Lcom/wolfram/alpha/visitor/Visitable;

.field private transient http:Lcom/wolfram/alpha/net/HttpProvider;

.field private volatile imageAcquired:Z

.field private transient tempDir:Ljava/io/File;

.field private weatherBannerPodstates:[Lcom/wolfram/alpha/impl/WAPodStateImpl;

.field private weatherBannerTitle:Ljava/lang/String;

.field private weatherBannerTitle_daily:Ljava/lang/String;

.field private weatherBannerTitle_hourly:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/wolfram/alpha/impl/WABannerImpl;

    sput-object v0, Lcom/wolfram/alpha/impl/WABannerImpl;->EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WABannerImpl;

    return-void
.end method

.method constructor <init>(Lorg/w3c/dom/Element;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V
    .locals 1
    .parameter "thisElement"
    .parameter "http"
    .parameter "tempDir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "Current weather summary for "

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WABannerImpl;->weatherBannerTitle_daily:Ljava/lang/String;

    .line 31
    const-string v0, "12-hour weather forecast for "

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WABannerImpl;->weatherBannerTitle_hourly:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WABannerImpl;->weatherBannerTitle:Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/wolfram/alpha/impl/WABannerImpl;->EMPTY_VISITABLE_ARRAY:[Lcom/wolfram/alpha/visitor/Visitable;

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WABannerImpl;->contentElements:[Lcom/wolfram/alpha/visitor/Visitable;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wolfram/alpha/impl/WABannerImpl;->imageAcquired:Z

    .line 36
    sget-object v0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WAPodStateImpl;

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WABannerImpl;->weatherBannerPodstates:[Lcom/wolfram/alpha/impl/WAPodStateImpl;

    .line 41
    iput-object p2, p0, Lcom/wolfram/alpha/impl/WABannerImpl;->http:Lcom/wolfram/alpha/net/HttpProvider;

    .line 42
    iput-object p3, p0, Lcom/wolfram/alpha/impl/WABannerImpl;->tempDir:Ljava/io/File;

    .line 43
    invoke-direct {p0, p1}, Lcom/wolfram/alpha/impl/WABannerImpl;->createFromDOM(Lorg/w3c/dom/Element;)V

    .line 44
    return-void
.end method

.method private declared-synchronized createFromDOM(Lorg/w3c/dom/Element;)V
    .locals 22
    .parameter "thisElement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    const-string v19, "banner"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 51
    .local v18, weatherbannerElement:Lorg/w3c/dom/NodeList;
    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/Element;

    .line 53
    .local v17, weatherbannElem:Lorg/w3c/dom/Element;
    const-string v19, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WABannerImpl;->weatherBannerTitle:Ljava/lang/String;

    .line 56
    const-string v19, "img"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Element;

    .line 57
    .local v15, weatherBannerImageElem:Lorg/w3c/dom/Element;
    new-instance v5, Ljava/util/ArrayList;

    const/16 v19, 0x1

    move-object v0, v5

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    .local v5, contentList:Ljava/util/List;,"Ljava/util/List<Lcom/wolfram/alpha/visitor/Visitable;>;"
    new-instance v19, Lcom/wolfram/alpha/impl/WAImageImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WABannerImpl;->http:Lcom/wolfram/alpha/net/HttpProvider;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WABannerImpl;->tempDir:Ljava/io/File;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object v1, v15

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/wolfram/alpha/impl/WAImageImpl;-><init>(Lorg/w3c/dom/Element;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Lcom/wolfram/alpha/visitor/Visitable;

    move-object/from16 v19, v0

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/wolfram/alpha/visitor/Visitable;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WABannerImpl;->contentElements:[Lcom/wolfram/alpha/visitor/Visitable;

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/alpha/impl/WABannerImpl;->acquireWeatherBannerImage()V

    .line 63
    const-string v19, "states"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 65
    .local v16, weatherBannerstatesElements:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    .line 67
    .local v10, numStatesElements:I
    const/4 v7, 0x0

    .end local p1
    .local v7, j:I
    :goto_0
    if-ge v7, v10, :cond_4

    .line 68
    move-object/from16 v0, v16

    move v1, v7

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Element;

    .line 69
    .local v13, statesElement:Lorg/w3c/dom/Element;
    invoke-interface {v13}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 72
    .local v14, subElements:Lorg/w3c/dom/NodeList;
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    .line 73
    .local v11, numSubElements:I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    .local v12, stateAndStatelistNodes:Ljava/util/List;,"Ljava/util/List<Lorg/w3c/dom/Node;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v11, :cond_2

    .line 75
    invoke-interface {v14, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 76
    .local v4, child:Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    .line 77
    .local v8, name:Ljava/lang/String;
    const-string v19, "state"

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "statelist"

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 78
    :cond_0
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 80
    .end local v4           #child:Lorg/w3c/dom/Node;
    .end local v8           #name:Ljava/lang/String;
    :cond_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    .line 82
    .local v9, numStates:I
    move v0, v9

    new-array v0, v0, [Lcom/wolfram/alpha/impl/WAPodStateImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WABannerImpl;->weatherBannerPodstates:[Lcom/wolfram/alpha/impl/WAPodStateImpl;

    .line 83
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v9, :cond_3

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WABannerImpl;->weatherBannerPodstates:[Lcom/wolfram/alpha/impl/WAPodStateImpl;

    move-object/from16 v19, v0

    new-instance v20, Lcom/wolfram/alpha/impl/WAPodStateImpl;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/wolfram/alpha/impl/WAPodStateImpl;-><init>(Lorg/w3c/dom/Element;)V

    aput-object v20, v19, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 67
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 86
    .end local v6           #i:I
    .end local v9           #numStates:I
    .end local v11           #numSubElements:I
    .end local v12           #stateAndStatelistNodes:Ljava/util/List;,"Ljava/util/List<Lorg/w3c/dom/Node;>;"
    .end local v13           #statesElement:Lorg/w3c/dom/Element;
    .end local v14           #subElements:Lorg/w3c/dom/NodeList;
    :cond_4
    monitor-exit p0

    return-void

    .line 49
    .end local v5           #contentList:Ljava/util/List;,"Ljava/util/List<Lcom/wolfram/alpha/visitor/Visitable;>;"
    .end local v7           #j:I
    .end local v10           #numStatesElements:I
    .end local v15           #weatherBannerImageElem:Lorg/w3c/dom/Element;
    .end local v16           #weatherBannerstatesElements:Lorg/w3c/dom/NodeList;
    .end local v17           #weatherbannElem:Lorg/w3c/dom/Element;
    .end local v18           #weatherbannerElement:Lorg/w3c/dom/NodeList;
    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19
.end method


# virtual methods
.method public accept(Lcom/wolfram/alpha/visitor/Visitor;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 116
    return-void
.end method

.method public acquireWeatherBannerImage()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation

    .prologue
    .line 92
    iget-boolean v1, p0, Lcom/wolfram/alpha/impl/WABannerImpl;->imageAcquired:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/wolfram/alpha/impl/WABannerImpl;->http:Lcom/wolfram/alpha/net/HttpProvider;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/wolfram/alpha/impl/WABannerImpl;->contentElements:[Lcom/wolfram/alpha/visitor/Visitable;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    check-cast v0, Lcom/wolfram/alpha/impl/WAImageImpl;

    .line 94
    .local v0, image:Lcom/wolfram/alpha/impl/WAImageImpl;
    invoke-virtual {v0}, Lcom/wolfram/alpha/impl/WAImageImpl;->acquireImage()V

    .line 95
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/wolfram/alpha/impl/WABannerImpl;->imageAcquired:Z

    .line 98
    .end local v0           #image:Lcom/wolfram/alpha/impl/WAImageImpl;
    :cond_0
    return-void
.end method

.method public getContents()[Lcom/wolfram/alpha/visitor/Visitable;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WABannerImpl;->contentElements:[Lcom/wolfram/alpha/visitor/Visitable;

    return-object v0
.end method

.method public getWeatherBannerTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WABannerImpl;->weatherBannerTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getweatherBannerPodstates()[Lcom/wolfram/alpha/WAPodState;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WABannerImpl;->weatherBannerPodstates:[Lcom/wolfram/alpha/impl/WAPodStateImpl;

    return-object v0
.end method
