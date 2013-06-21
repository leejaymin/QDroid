.class public Lcom/wolfram/alpha/impl/WASubpodImpl;
.super Ljava/lang/Object;
.source "WASubpodImpl.java"

# interfaces
.implements Lcom/wolfram/alpha/WASubpod;
.implements Lcom/wolfram/alpha/visitor/Visitable;
.implements Ljava/io/Serializable;


# static fields
.field static final EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WASubpodImpl; = null

.field private static final serialVersionUID:J = 0x68b5693ceee5ddbeL


# instance fields
.field private contentElements:[Lcom/wolfram/alpha/visitor/Visitable;

.field private transient http:Lcom/wolfram/alpha/net/HttpProvider;

.field private volatile imageAcquired:Z

.field private subpodstates:[Lcom/wolfram/alpha/impl/WASubpodStateImpl;

.field private title:Ljava/lang/String;

.field private userData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/wolfram/alpha/impl/WASubpodImpl;

    sput-object v0, Lcom/wolfram/alpha/impl/WASubpodImpl;->EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WASubpodImpl;

    return-void
.end method

.method constructor <init>(Lorg/w3c/dom/Element;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V
    .locals 17
    .parameter "thisElement"
    .parameter "http"
    .parameter "tempDir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v15, Lcom/wolfram/alpha/impl/WASubpodStateImpl;->EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WASubpodStateImpl;

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WASubpodImpl;->subpodstates:[Lcom/wolfram/alpha/impl/WASubpodStateImpl;

    .line 29
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/wolfram/alpha/impl/WASubpodImpl;->imageAcquired:Z

    .line 35
    sget-object v15, Lcom/wolfram/alpha/impl/WASubpodImpl;->EMPTY_VISITABLE_ARRAY:[Lcom/wolfram/alpha/visitor/Visitable;

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WASubpodImpl;->contentElements:[Lcom/wolfram/alpha/visitor/Visitable;

    .line 44
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WASubpodImpl;->http:Lcom/wolfram/alpha/net/HttpProvider;

    .line 46
    const-string v15, "title"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WASubpodImpl;->title:Ljava/lang/String;

    .line 51
    const-string v15, "states"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 54
    .local v4, SubpodstatesElements:Lorg/w3c/dom/NodeList;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    .line 55
    .local v10, numStatesElements:I
    if-lez v10, :cond_3

    .line 56
    const/4 v15, 0x0

    invoke-interface {v4, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Element;

    .line 57
    .local v13, statesElement:Lorg/w3c/dom/Element;
    invoke-interface {v13}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 60
    .local v14, subElements:Lorg/w3c/dom/NodeList;
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    .line 61
    .local v11, numSubElements:I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    .local v12, stateAndStatelistNodes:Ljava/util/List;,"Ljava/util/List<Lorg/w3c/dom/Node;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v11, :cond_2

    .line 63
    invoke-interface {v14, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 64
    .local v5, child:Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    .line 65
    .local v8, name:Ljava/lang/String;
    const-string v15, "state"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "statelist"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 66
    :cond_0
    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 68
    .end local v5           #child:Lorg/w3c/dom/Node;
    .end local v8           #name:Ljava/lang/String;
    :cond_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    .line 69
    .local v9, numStates:I
    new-array v15, v9, [Lcom/wolfram/alpha/impl/WASubpodStateImpl;

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WASubpodImpl;->subpodstates:[Lcom/wolfram/alpha/impl/WASubpodStateImpl;

    .line 70
    const/4 v7, 0x0

    .end local v4           #SubpodstatesElements:Lorg/w3c/dom/NodeList;
    :goto_1
    if-ge v7, v9, :cond_3

    .line 71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WASubpodImpl;->subpodstates:[Lcom/wolfram/alpha/impl/WASubpodStateImpl;

    move-object v15, v0

    new-instance v16, Lcom/wolfram/alpha/impl/WASubpodStateImpl;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/wolfram/alpha/impl/WASubpodStateImpl;-><init>(Lorg/w3c/dom/Element;)V

    aput-object v16, v15, v7

    .line 70
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 77
    .end local v7           #i:I
    .end local v9           #numStates:I
    .end local v11           #numSubElements:I
    .end local v12           #stateAndStatelistNodes:Ljava/util/List;,"Ljava/util/List<Lorg/w3c/dom/Node;>;"
    .end local v13           #statesElement:Lorg/w3c/dom/Element;
    .end local v14           #subElements:Lorg/w3c/dom/NodeList;
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 78
    .restart local v14       #subElements:Lorg/w3c/dom/NodeList;
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    .line 79
    .restart local v11       #numSubElements:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    .local v6, contentList:Ljava/util/List;,"Ljava/util/List<Lcom/wolfram/alpha/visitor/Visitable;>;"
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_2
    if-ge v7, v11, :cond_8

    .line 81
    invoke-interface {v14, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 82
    .restart local v5       #child:Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    .line 83
    .restart local v8       #name:Ljava/lang/String;
    const-string v15, "plaintext"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 84
    new-instance v15, Lcom/wolfram/alpha/impl/WAPlainTextImpl;

    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #child:Lorg/w3c/dom/Node;
    invoke-direct {v15, v5}, Lcom/wolfram/alpha/impl/WAPlainTextImpl;-><init>(Lorg/w3c/dom/Element;)V

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 85
    .restart local v5       #child:Lorg/w3c/dom/Node;
    :cond_5
    const-string v15, "img"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 86
    new-instance v15, Lcom/wolfram/alpha/impl/WAImageImpl;

    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #child:Lorg/w3c/dom/Node;
    move-object v0, v15

    move-object v1, v5

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/wolfram/alpha/impl/WAImageImpl;-><init>(Lorg/w3c/dom/Element;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 87
    .restart local v5       #child:Lorg/w3c/dom/Node;
    :cond_6
    const-string v15, "imagemap"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 88
    new-instance v15, Lcom/wolfram/alpha/impl/WAImageMapImpl;

    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #child:Lorg/w3c/dom/Node;
    invoke-direct {v15, v5}, Lcom/wolfram/alpha/impl/WAImageMapImpl;-><init>(Lorg/w3c/dom/Element;)V

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 89
    .restart local v5       #child:Lorg/w3c/dom/Node;
    :cond_7
    const-string v15, "minput"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 90
    new-instance v15, Lcom/wolfram/alpha/impl/WAMathematicaInputImpl;

    check-cast v5, Lorg/w3c/dom/Element;

    .end local v5           #child:Lorg/w3c/dom/Node;
    invoke-direct {v15, v5}, Lcom/wolfram/alpha/impl/WAMathematicaInputImpl;-><init>(Lorg/w3c/dom/Element;)V

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 93
    .end local v8           #name:Ljava/lang/String;
    :cond_8
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    new-array v15, v15, [Lcom/wolfram/alpha/visitor/Visitable;

    invoke-interface {v6, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [Lcom/wolfram/alpha/visitor/Visitable;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WASubpodImpl;->contentElements:[Lcom/wolfram/alpha/visitor/Visitable;

    .line 94
    return-void
.end method


# virtual methods
.method public accept(Lcom/wolfram/alpha/visitor/Visitor;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 169
    invoke-interface {p1, p0}, Lcom/wolfram/alpha/visitor/Visitor;->visit(Lcom/wolfram/alpha/WASubpod;)V

    .line 170
    return-void
.end method

.method public acquireImage()V
    .locals 7

    .prologue
    .line 153
    iget-boolean v6, p0, Lcom/wolfram/alpha/impl/WASubpodImpl;->imageAcquired:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/wolfram/alpha/impl/WASubpodImpl;->http:Lcom/wolfram/alpha/net/HttpProvider;

    if-eqz v6, :cond_1

    .line 154
    iget-object v1, p0, Lcom/wolfram/alpha/impl/WASubpodImpl;->contentElements:[Lcom/wolfram/alpha/visitor/Visitable;

    .local v1, arr$:[Lcom/wolfram/alpha/visitor/Visitable;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v1, v3

    .line 155
    .local v2, elem:Lcom/wolfram/alpha/visitor/Visitable;
    instance-of v6, v2, Lcom/wolfram/alpha/impl/WAImageImpl;

    if-eqz v6, :cond_2

    .line 156
    move-object v0, v2

    check-cast v0, Lcom/wolfram/alpha/impl/WAImageImpl;

    move-object v4, v0

    .line 157
    .local v4, image:Lcom/wolfram/alpha/impl/WAImageImpl;
    invoke-virtual {v4}, Lcom/wolfram/alpha/impl/WAImageImpl;->acquireImage()V

    .line 161
    .end local v2           #elem:Lcom/wolfram/alpha/visitor/Visitable;
    .end local v4           #image:Lcom/wolfram/alpha/impl/WAImageImpl;
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/wolfram/alpha/impl/WASubpodImpl;->imageAcquired:Z

    .line 163
    .end local v1           #arr$:[Lcom/wolfram/alpha/visitor/Visitable;
    .end local v3           #i$:I
    .end local v5           #len$:I
    :cond_1
    return-void

    .line 154
    .restart local v1       #arr$:[Lcom/wolfram/alpha/visitor/Visitable;
    .restart local v2       #elem:Lcom/wolfram/alpha/visitor/Visitable;
    .restart local v3       #i$:I
    .restart local v5       #len$:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getContents()[Lcom/wolfram/alpha/visitor/Visitable;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WASubpodImpl;->contentElements:[Lcom/wolfram/alpha/visitor/Visitable;

    return-object v0
.end method

.method public declared-synchronized getSubpodStates()[Lcom/wolfram/alpha/WASubpodState;
    .locals 1

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WASubpodImpl;->subpodstates:[Lcom/wolfram/alpha/impl/WASubpodStateImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WASubpodImpl;->title:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WASubpodImpl;->userData:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hashCode()I
    .locals 7

    .prologue
    .line 132
    monitor-enter p0

    const/16 v4, 0x11

    .line 133
    .local v4, result:I
    mul-int/lit8 v5, v4, 0x25

    :try_start_0
    iget-object v5, p0, Lcom/wolfram/alpha/impl/WASubpodImpl;->title:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int/lit16 v4, v5, 0x275

    .line 134
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WASubpodImpl;->contentElements:[Lcom/wolfram/alpha/visitor/Visitable;

    .local v0, arr$:[Lcom/wolfram/alpha/visitor/Visitable;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 135
    .local v3, obj:Lcom/wolfram/alpha/visitor/Visitable;
    instance-of v5, v3, Lcom/wolfram/alpha/impl/WAImageImpl;

    if-eqz v5, :cond_2

    .line 136
    mul-int/lit8 v5, v4, 0x25

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    add-int v4, v5, v6

    .line 140
    .end local v3           #obj:Lcom/wolfram/alpha/visitor/Visitable;
    :cond_0
    iget-object v5, p0, Lcom/wolfram/alpha/impl/WASubpodImpl;->userData:Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 141
    mul-int/lit8 v5, v4, 0x25

    iget-object v6, p0, Lcom/wolfram/alpha/impl/WASubpodImpl;->userData:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    add-int v4, v5, v6

    .line 142
    :cond_1
    monitor-exit p0

    return v4

    .line 134
    .restart local v3       #obj:Lcom/wolfram/alpha/visitor/Visitable;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v0           #arr$:[Lcom/wolfram/alpha/visitor/Visitable;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #obj:Lcom/wolfram/alpha/visitor/Visitable;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setUserData(Ljava/lang/Object;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/wolfram/alpha/impl/WASubpodImpl;->userData:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
