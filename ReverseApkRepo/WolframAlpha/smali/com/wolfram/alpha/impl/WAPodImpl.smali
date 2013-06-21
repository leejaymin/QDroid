.class public Lcom/wolfram/alpha/impl/WAPodImpl;
.super Ljava/lang/Object;
.source "WAPodImpl.java"

# interfaces
.implements Lcom/wolfram/alpha/WAPod;
.implements Lcom/wolfram/alpha/visitor/Visitable;
.implements Ljava/io/Serializable;


# static fields
.field static final EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WAPodImpl; = null

.field private static final serialVersionUID:J = 0x64db5fbcfcd33008L


# instance fields
.field private asyncException:Lcom/wolfram/alpha/WAException;

.field private asyncURL:Ljava/lang/String;

.field private definitions:[Lcom/wolfram/alpha/impl/WADefinitionImpl;

.field private error:Z

.field private transient http:Lcom/wolfram/alpha/net/HttpProvider;

.field private id:Ljava/lang/String;

.field private infos:[Lcom/wolfram/alpha/impl/WAInfoImpl;

.field private isToggleArrows_Clicked:Z

.field private notes:[Lcom/wolfram/alpha/impl/WANoteImpl;

.field private podstates:[Lcom/wolfram/alpha/impl/WAPodStateImpl;

.field private position:I

.field private scanner:Ljava/lang/String;

.field private sounds:[Lcom/wolfram/alpha/impl/WASoundImpl;

.field private subpods:[Lcom/wolfram/alpha/impl/WASubpodImpl;

.field private transient tempDir:Ljava/io/File;

.field private title:Ljava/lang/String;

.field private transient userData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/wolfram/alpha/impl/WAPodImpl;

    sput-object v0, Lcom/wolfram/alpha/impl/WAPodImpl;->EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WAPodImpl;

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
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Lcom/wolfram/alpha/impl/WASubpodImpl;->EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WASubpodImpl;

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->subpods:[Lcom/wolfram/alpha/impl/WASubpodImpl;

    .line 55
    sget-object v0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WAPodStateImpl;

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->podstates:[Lcom/wolfram/alpha/impl/WAPodStateImpl;

    .line 56
    sget-object v0, Lcom/wolfram/alpha/impl/WAInfoImpl;->EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WAInfoImpl;

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->infos:[Lcom/wolfram/alpha/impl/WAInfoImpl;

    .line 57
    sget-object v0, Lcom/wolfram/alpha/impl/WADefinitionImpl;->EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WADefinitionImpl;

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->definitions:[Lcom/wolfram/alpha/impl/WADefinitionImpl;

    .line 58
    sget-object v0, Lcom/wolfram/alpha/impl/WANoteImpl;->EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WANoteImpl;

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->notes:[Lcom/wolfram/alpha/impl/WANoteImpl;

    .line 59
    sget-object v0, Lcom/wolfram/alpha/impl/WASoundImpl;->EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WASoundImpl;

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->sounds:[Lcom/wolfram/alpha/impl/WASoundImpl;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->isToggleArrows_Clicked:Z

    .line 71
    iput-object p2, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->http:Lcom/wolfram/alpha/net/HttpProvider;

    .line 72
    iput-object p3, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->tempDir:Ljava/io/File;

    .line 73
    invoke-direct {p0, p1}, Lcom/wolfram/alpha/impl/WAPodImpl;->createFromDOM(Lorg/w3c/dom/Element;)V

    .line 74
    return-void
.end method

.method private declared-synchronized createFromDOM(Lorg/w3c/dom/Element;)V
    .locals 42
    .parameter "thisElement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    const-string v38, "error"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    const-string v39, "true"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/wolfram/alpha/impl/WAPodImpl;->error:Z

    .line 83
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/alpha/impl/WAPodImpl;->error:Z

    move/from16 v38, v0

    if-nez v38, :cond_12

    .line 84
    const-string v38, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WAPodImpl;->title:Ljava/lang/String;

    .line 85
    const-string v38, "scanner"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WAPodImpl;->scanner:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :try_start_1
    const-string v38, "position"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wolfram/alpha/impl/WAPodImpl;->position:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    :goto_0
    :try_start_2
    const-string v38, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WAPodImpl;->id:Ljava/lang/String;

    .line 90
    const-string v38, "async"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WAPodImpl;->asyncURL:Ljava/lang/String;

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAPodImpl;->asyncURL:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, ""

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_0

    .line 92
    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WAPodImpl;->asyncURL:Ljava/lang/String;

    .line 95
    :cond_0
    const-string v38, "subpod"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v37

    .line 96
    .local v37, subpodElements:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v29

    .line 97
    .local v29, numSubpods:I
    move/from16 v0, v29

    new-array v0, v0, [Lcom/wolfram/alpha/impl/WASubpodImpl;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WAPodImpl;->subpods:[Lcom/wolfram/alpha/impl/WASubpodImpl;

    .line 98
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    move v0, v9

    move/from16 v1, v29

    if-ge v0, v1, :cond_1

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAPodImpl;->subpods:[Lcom/wolfram/alpha/impl/WASubpodImpl;

    move-object/from16 v38, v0

    new-instance v39, Lcom/wolfram/alpha/impl/WASubpodImpl;

    move-object/from16 v0, v37

    move v1, v9

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAPodImpl;->http:Lcom/wolfram/alpha/net/HttpProvider;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAPodImpl;->tempDir:Ljava/io/File;

    move-object/from16 v41, v0

    move-object/from16 v0, v39

    move-object v1, v4

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/wolfram/alpha/impl/WASubpodImpl;-><init>(Lorg/w3c/dom/Element;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V

    aput-object v39, v38, v9

    .line 98
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 102
    :cond_1
    const-string v38, "states"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v30

    .line 105
    .local v30, podstatesElements:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v27

    .line 107
    .local v27, numStatesElements:I
    const/4 v13, 0x0

    .local v13, j:I
    :goto_2
    move v0, v13

    move/from16 v1, v27

    if-ge v0, v1, :cond_6

    .line 108
    move-object/from16 v0, v30

    move v1, v13

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    check-cast v35, Lorg/w3c/dom/Element;

    .line 110
    .local v35, statesElement:Lorg/w3c/dom/Element;
    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, Parent_nodeName:Ljava/lang/String;
    const-string v38, "pod"

    move-object v0, v4

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_5

    .line 114
    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v36

    .line 117
    .local v36, subElements:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    .line 118
    .local v28, numSubElements:I
    new-instance v34, Ljava/util/ArrayList;

    move-object/from16 v0, v34

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    .local v34, stateAndStatelistNodes:Ljava/util/List;,"Ljava/util/List<Lorg/w3c/dom/Node;>;"
    const/4 v9, 0x0

    :goto_3
    move v0, v9

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    .line 120
    move-object/from16 v0, v36

    move v1, v9

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 121
    .local v5, child:Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    .line 122
    .local v14, name:Ljava/lang/String;
    const-string v38, "state"

    move-object/from16 v0, v38

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_2

    const-string v38, "statelist"

    move-object/from16 v0, v38

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_3

    .line 123
    :cond_2
    move-object/from16 v0, v34

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 125
    .end local v5           #child:Lorg/w3c/dom/Node;
    .end local v14           #name:Ljava/lang/String;
    :cond_4
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v26

    .line 126
    .local v26, numStates:I
    move/from16 v0, v26

    new-array v0, v0, [Lcom/wolfram/alpha/impl/WAPodStateImpl;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WAPodImpl;->podstates:[Lcom/wolfram/alpha/impl/WAPodStateImpl;

    .line 127
    const/4 v9, 0x0

    .end local v4           #Parent_nodeName:Ljava/lang/String;
    :goto_4
    move v0, v9

    move/from16 v1, v26

    if-ge v0, v1, :cond_5

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAPodImpl;->podstates:[Lcom/wolfram/alpha/impl/WAPodStateImpl;

    move-object/from16 v38, v0

    new-instance v39, Lcom/wolfram/alpha/impl/WAPodStateImpl;

    move-object/from16 v0, v34

    move v1, v9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    move-object/from16 v0, v39

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/wolfram/alpha/impl/WAPodStateImpl;-><init>(Lorg/w3c/dom/Element;)V

    aput-object v39, v38, v9

    .line 127
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 107
    .end local v26           #numStates:I
    .end local v28           #numSubElements:I
    .end local v34           #stateAndStatelistNodes:Ljava/util/List;,"Ljava/util/List<Lorg/w3c/dom/Node;>;"
    .end local v36           #subElements:Lorg/w3c/dom/NodeList;
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 134
    .end local v35           #statesElement:Lorg/w3c/dom/Element;
    :cond_6
    const-string v38, "infos"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 137
    .local v12, infosElements:Lorg/w3c/dom/NodeList;
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    .line 138
    .local v21, numInfosElements:I
    if-lez v21, :cond_9

    .line 139
    const/16 v38, 0x0

    move-object v0, v12

    move/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .line 140
    .local v11, infosElement:Lorg/w3c/dom/Element;
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v36

    .line 143
    .restart local v36       #subElements:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    .line 144
    .restart local v28       #numSubElements:I
    new-instance v10, Ljava/util/ArrayList;

    move-object v0, v10

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    .local v10, infoNodes:Ljava/util/List;,"Ljava/util/List<Lorg/w3c/dom/Node;>;"
    const/4 v9, 0x0

    :goto_5
    move v0, v9

    move/from16 v1, v28

    if-ge v0, v1, :cond_8

    .line 146
    move-object/from16 v0, v36

    move v1, v9

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 147
    .restart local v5       #child:Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    .line 148
    .restart local v14       #name:Ljava/lang/String;
    const-string v38, "info"

    move-object/from16 v0, v38

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 149
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 151
    .end local v5           #child:Lorg/w3c/dom/Node;
    .end local v14           #name:Ljava/lang/String;
    :cond_8
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v20

    .line 152
    .local v20, numInfos:I
    move/from16 v0, v20

    new-array v0, v0, [Lcom/wolfram/alpha/impl/WAInfoImpl;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WAPodImpl;->infos:[Lcom/wolfram/alpha/impl/WAInfoImpl;

    .line 153
    const/4 v9, 0x0

    :goto_6
    move v0, v9

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAPodImpl;->infos:[Lcom/wolfram/alpha/impl/WAInfoImpl;

    move-object/from16 v38, v0

    new-instance v39, Lcom/wolfram/alpha/impl/WAInfoImpl;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAPodImpl;->http:Lcom/wolfram/alpha/net/HttpProvider;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAPodImpl;->tempDir:Ljava/io/File;

    move-object/from16 v41, v0

    move-object/from16 v0, v39

    move-object v1, v4

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/wolfram/alpha/impl/WAInfoImpl;-><init>(Lorg/w3c/dom/Element;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V

    aput-object v39, v38, v9

    .line 153
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 158
    .end local v10           #infoNodes:Ljava/util/List;,"Ljava/util/List<Lorg/w3c/dom/Node;>;"
    .end local v11           #infosElement:Lorg/w3c/dom/Element;
    .end local v20           #numInfos:I
    .end local v28           #numSubElements:I
    .end local v36           #subElements:Lorg/w3c/dom/NodeList;
    :cond_9
    const-string v38, "definitions"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 159
    .local v8, definitionsElements:Lorg/w3c/dom/NodeList;
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    .line 160
    .local v19, numDefinitionsElements:I
    if-lez v19, :cond_c

    .line 161
    const/16 v38, 0x0

    move-object v0, v8

    move/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 162
    .local v7, definitionsElement:Lorg/w3c/dom/Element;
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v36

    .line 165
    .restart local v36       #subElements:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    .line 166
    .restart local v28       #numSubElements:I
    new-instance v6, Ljava/util/ArrayList;

    move-object v0, v6

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 167
    .local v6, definitionNodes:Ljava/util/List;,"Ljava/util/List<Lorg/w3c/dom/Node;>;"
    const/4 v9, 0x0

    :goto_7
    move v0, v9

    move/from16 v1, v28

    if-ge v0, v1, :cond_b

    .line 168
    move-object/from16 v0, v36

    move v1, v9

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 169
    .restart local v5       #child:Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    .line 170
    .restart local v14       #name:Ljava/lang/String;
    const-string v38, "definition"

    move-object/from16 v0, v38

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_a

    .line 171
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 173
    .end local v5           #child:Lorg/w3c/dom/Node;
    .end local v14           #name:Ljava/lang/String;
    :cond_b
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v18

    .line 174
    .local v18, numDefinitions:I
    move/from16 v0, v18

    new-array v0, v0, [Lcom/wolfram/alpha/impl/WADefinitionImpl;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WAPodImpl;->definitions:[Lcom/wolfram/alpha/impl/WADefinitionImpl;

    .line 175
    const/4 v9, 0x0

    :goto_8
    move v0, v9

    move/from16 v1, v18

    if-ge v0, v1, :cond_c

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAPodImpl;->definitions:[Lcom/wolfram/alpha/impl/WADefinitionImpl;

    move-object/from16 v38, v0

    new-instance v39, Lcom/wolfram/alpha/impl/WADefinitionImpl;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAPodImpl;->http:Lcom/wolfram/alpha/net/HttpProvider;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAPodImpl;->tempDir:Ljava/io/File;

    move-object/from16 v41, v0

    move-object/from16 v0, v39

    move-object v1, v4

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/wolfram/alpha/impl/WADefinitionImpl;-><init>(Lorg/w3c/dom/Element;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V

    aput-object v39, v38, v9

    .line 175
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 180
    .end local v6           #definitionNodes:Ljava/util/List;,"Ljava/util/List<Lorg/w3c/dom/Node;>;"
    .end local v7           #definitionsElement:Lorg/w3c/dom/Element;
    .end local v18           #numDefinitions:I
    .end local v28           #numSubElements:I
    .end local v36           #subElements:Lorg/w3c/dom/NodeList;
    :cond_c
    const-string v38, "notes"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 181
    .local v17, notesElements:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v23

    .line 182
    .local v23, numNotesElements:I
    if-lez v23, :cond_f

    .line 183
    const/16 v38, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/Element;

    .line 184
    .local v16, notesElement:Lorg/w3c/dom/Element;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v36

    .line 187
    .restart local v36       #subElements:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    .line 188
    .restart local v28       #numSubElements:I
    new-instance v15, Ljava/util/ArrayList;

    move-object v0, v15

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 189
    .local v15, noteNodes:Ljava/util/List;,"Ljava/util/List<Lorg/w3c/dom/Node;>;"
    const/4 v9, 0x0

    :goto_9
    move v0, v9

    move/from16 v1, v28

    if-ge v0, v1, :cond_e

    .line 190
    move-object/from16 v0, v36

    move v1, v9

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 191
    .restart local v5       #child:Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    .line 192
    .restart local v14       #name:Ljava/lang/String;
    const-string v38, "note"

    move-object/from16 v0, v38

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_d

    .line 193
    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 195
    .end local v5           #child:Lorg/w3c/dom/Node;
    .end local v14           #name:Ljava/lang/String;
    :cond_e
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v22

    .line 196
    .local v22, numNotes:I
    move/from16 v0, v22

    new-array v0, v0, [Lcom/wolfram/alpha/impl/WANoteImpl;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WAPodImpl;->notes:[Lcom/wolfram/alpha/impl/WANoteImpl;

    .line 197
    const/4 v9, 0x0

    :goto_a
    move v0, v9

    move/from16 v1, v22

    if-ge v0, v1, :cond_f

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAPodImpl;->notes:[Lcom/wolfram/alpha/impl/WANoteImpl;

    move-object/from16 v38, v0

    new-instance v39, Lcom/wolfram/alpha/impl/WANoteImpl;

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAPodImpl;->http:Lcom/wolfram/alpha/net/HttpProvider;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAPodImpl;->tempDir:Ljava/io/File;

    move-object/from16 v41, v0

    move-object/from16 v0, v39

    move-object v1, v4

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/wolfram/alpha/impl/WANoteImpl;-><init>(Lorg/w3c/dom/Element;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V

    aput-object v39, v38, v9

    .line 197
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 201
    .end local v15           #noteNodes:Ljava/util/List;,"Ljava/util/List<Lorg/w3c/dom/Node;>;"
    .end local v16           #notesElement:Lorg/w3c/dom/Element;
    .end local v22           #numNotes:I
    .end local v28           #numSubElements:I
    .end local v36           #subElements:Lorg/w3c/dom/NodeList;
    :cond_f
    const-string v38, "sounds"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v32

    .line 202
    .local v32, soundElements:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    .line 203
    .local v24, numSoundElements:I
    if-lez v24, :cond_12

    .line 204
    const/16 v38, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 205
    .local v31, soundElement:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v36

    .line 208
    .restart local v36       #subElements:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    .line 209
    .restart local v28       #numSubElements:I
    new-instance v33, Ljava/util/ArrayList;

    move-object/from16 v0, v33

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 210
    .local v33, soundNodes:Ljava/util/List;,"Ljava/util/List<Lorg/w3c/dom/Node;>;"
    const/4 v9, 0x0

    :goto_b
    move v0, v9

    move/from16 v1, v28

    if-ge v0, v1, :cond_11

    .line 211
    move-object/from16 v0, v36

    move v1, v9

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 212
    .restart local v5       #child:Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    .line 213
    .restart local v14       #name:Ljava/lang/String;
    const-string v38, "sound"

    move-object/from16 v0, v38

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_10

    .line 214
    move-object/from16 v0, v33

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 216
    .end local v5           #child:Lorg/w3c/dom/Node;
    .end local v14           #name:Ljava/lang/String;
    :cond_11
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v25

    .line 217
    .local v25, numSounds:I
    move/from16 v0, v25

    new-array v0, v0, [Lcom/wolfram/alpha/impl/WASoundImpl;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WAPodImpl;->sounds:[Lcom/wolfram/alpha/impl/WASoundImpl;

    .line 218
    const/4 v9, 0x0

    .end local p1
    :goto_c
    move v0, v9

    move/from16 v1, v25

    if-ge v0, v1, :cond_12

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAPodImpl;->sounds:[Lcom/wolfram/alpha/impl/WASoundImpl;

    move-object/from16 v38, v0

    new-instance v39, Lcom/wolfram/alpha/impl/WASoundImpl;

    move-object/from16 v0, v33

    move v1, v9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAPodImpl;->http:Lcom/wolfram/alpha/net/HttpProvider;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAPodImpl;->tempDir:Ljava/io/File;

    move-object/from16 v41, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/wolfram/alpha/impl/WASoundImpl;-><init>(Lorg/w3c/dom/Element;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V

    aput-object v39, v38, v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 224
    .end local v8           #definitionsElements:Lorg/w3c/dom/NodeList;
    .end local v9           #i:I
    .end local v12           #infosElements:Lorg/w3c/dom/NodeList;
    .end local v13           #j:I
    .end local v17           #notesElements:Lorg/w3c/dom/NodeList;
    .end local v19           #numDefinitionsElements:I
    .end local v21           #numInfosElements:I
    .end local v23           #numNotesElements:I
    .end local v24           #numSoundElements:I
    .end local v25           #numSounds:I
    .end local v27           #numStatesElements:I
    .end local v28           #numSubElements:I
    .end local v29           #numSubpods:I
    .end local v30           #podstatesElements:Lorg/w3c/dom/NodeList;
    .end local v31           #soundElement:Lorg/w3c/dom/Element;
    .end local v32           #soundElements:Lorg/w3c/dom/NodeList;
    .end local v33           #soundNodes:Ljava/util/List;,"Ljava/util/List<Lorg/w3c/dom/Node;>;"
    .end local v36           #subElements:Lorg/w3c/dom/NodeList;
    .end local v37           #subpodElements:Lorg/w3c/dom/NodeList;
    :cond_12
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v38

    monitor-exit p0

    throw v38

    .line 88
    .restart local p1
    :catch_0
    move-exception v38

    goto/16 :goto_0
.end method


# virtual methods
.method public accept(Lcom/wolfram/alpha/visitor/Visitor;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 414
    invoke-interface {p1, p0}, Lcom/wolfram/alpha/visitor/Visitor;->visit(Lcom/wolfram/alpha/WAPod;)V

    .line 415
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->subpods:[Lcom/wolfram/alpha/impl/WASubpodImpl;

    .local v0, arr$:[Lcom/wolfram/alpha/impl/WASubpodImpl;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 416
    .local v3, subpod:Lcom/wolfram/alpha/WASubpod;
    invoke-interface {v3, p1}, Lcom/wolfram/alpha/WASubpod;->accept(Lcom/wolfram/alpha/visitor/Visitor;)V

    .line 415
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    .end local v3           #subpod:Lcom/wolfram/alpha/WASubpod;
    :cond_0
    return-void
.end method

.method public acquireImages()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation

    .prologue
    .line 300
    monitor-enter p0

    .line 301
    :try_start_0
    iget-object v3, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->subpods:[Lcom/wolfram/alpha/impl/WASubpodImpl;

    .line 302
    .local v3, sps:[Lcom/wolfram/alpha/impl/WASubpodImpl;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    move-object v0, v3

    .local v0, arr$:[Lcom/wolfram/alpha/impl/WASubpodImpl;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 304
    .local v4, sub:Lcom/wolfram/alpha/impl/WASubpodImpl;
    invoke-virtual {v4}, Lcom/wolfram/alpha/impl/WASubpodImpl;->acquireImage()V

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    .end local v0           #arr$:[Lcom/wolfram/alpha/impl/WASubpodImpl;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #sps:[Lcom/wolfram/alpha/impl/WASubpodImpl;
    .end local v4           #sub:Lcom/wolfram/alpha/impl/WASubpodImpl;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 306
    .restart local v0       #arr$:[Lcom/wolfram/alpha/impl/WASubpodImpl;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #sps:[Lcom/wolfram/alpha/impl/WASubpodImpl;
    :cond_0
    return-void
.end method

.method public finishAsync()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation

    .prologue
    .line 318
    const/4 v6, 0x0

    .line 319
    .local v6, newAsyncException:Lcom/wolfram/alpha/WAException;
    monitor-enter p0

    .line 320
    :try_start_0
    iget-object v7, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->asyncURL:Ljava/lang/String;

    .line 321
    .local v7, url:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 322
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->asyncException:Lcom/wolfram/alpha/WAException;

    .line 323
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    if-eqz v7, :cond_3

    .line 326
    :try_start_1
    new-instance v5, Lcom/wolfram/alpha/net/URLFetcher;

    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->http:Lcom/wolfram/alpha/net/HttpProvider;

    const/4 v11, 0x0

    invoke-direct {v5, v8, v9, v10, v11}, Lcom/wolfram/alpha/net/URLFetcher;-><init>(Ljava/net/URL;Ljava/lang/String;Lcom/wolfram/alpha/net/HttpProvider;Lcom/wolfram/alpha/net/ProxySettings;)V

    .line 327
    .local v5, fetcher:Lcom/wolfram/alpha/net/URLFetcher;
    invoke-virtual {v5}, Lcom/wolfram/alpha/net/URLFetcher;->fetch()V

    .line 328
    invoke-virtual {v5}, Lcom/wolfram/alpha/net/URLFetcher;->wasCancelled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 329
    new-instance v8, Lcom/wolfram/alpha/WAException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Download of url "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->asyncURL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " was cancelled"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/wolfram/alpha/WAException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3

    .line 341
    .end local v5           #fetcher:Lcom/wolfram/alpha/net/URLFetcher;
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 343
    .local v3, e:Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v6, Lcom/wolfram/alpha/WAException;

    .end local v6           #newAsyncException:Lcom/wolfram/alpha/WAException;
    invoke-direct {v6, v3}, Lcom/wolfram/alpha/WAException;-><init>(Ljava/lang/Throwable;)V

    .line 352
    .end local v3           #e:Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v6       #newAsyncException:Lcom/wolfram/alpha/WAException;
    :goto_0
    if-eqz v6, :cond_3

    .line 353
    monitor-enter p0

    .line 354
    :try_start_2
    iput-object v6, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->asyncException:Lcom/wolfram/alpha/WAException;

    .line 355
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 356
    throw v6

    .line 323
    .end local v7           #url:Ljava/lang/String;
    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 330
    .restart local v5       #fetcher:Lcom/wolfram/alpha/net/URLFetcher;
    .restart local v7       #url:Ljava/lang/String;
    :cond_1
    :try_start_4
    invoke-virtual {v5}, Lcom/wolfram/alpha/net/URLFetcher;->getException()Ljava/lang/Exception;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 331
    new-instance v8, Lcom/wolfram/alpha/WAException;

    invoke-virtual {v5}, Lcom/wolfram/alpha/net/URLFetcher;->getException()Ljava/lang/Exception;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/wolfram/alpha/WAException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_3

    .line 344
    .end local v5           #fetcher:Lcom/wolfram/alpha/net/URLFetcher;
    :catch_1
    move-exception v8

    move-object v3, v8

    .line 346
    .local v3, e:Ljavax/xml/parsers/FactoryConfigurationError;
    new-instance v6, Lcom/wolfram/alpha/WAException;

    .end local v6           #newAsyncException:Lcom/wolfram/alpha/WAException;
    invoke-direct {v6, v3}, Lcom/wolfram/alpha/WAException;-><init>(Ljava/lang/Throwable;)V

    .line 351
    .restart local v6       #newAsyncException:Lcom/wolfram/alpha/WAException;
    goto :goto_0

    .line 332
    .end local v3           #e:Ljavax/xml/parsers/FactoryConfigurationError;
    .restart local v5       #fetcher:Lcom/wolfram/alpha/net/URLFetcher;
    :cond_2
    :try_start_5
    invoke-virtual {v5}, Lcom/wolfram/alpha/net/URLFetcher;->getBytes()[B

    move-result-object v1

    .line 333
    .local v1, bytes:[B
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 334
    .local v4, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 335
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 336
    .local v2, doc:Lorg/w3c/dom/Document;
    monitor-enter p0
    :try_end_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_3

    .line 337
    :try_start_6
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/wolfram/alpha/impl/WAPodImpl;->createFromDOM(Lorg/w3c/dom/Element;)V

    .line 338
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->asyncURL:Ljava/lang/String;

    .line 339
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 340
    :try_start_7
    invoke-virtual {p0}, Lcom/wolfram/alpha/impl/WAPodImpl;->acquireImages()V
    :try_end_7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    .line 347
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #bytes:[B
    .end local v2           #doc:Lorg/w3c/dom/Document;
    .end local v4           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5           #fetcher:Lcom/wolfram/alpha/net/URLFetcher;
    :catch_2
    move-exception v8

    move-object v3, v8

    .line 348
    .local v3, e:Ljava/io/IOException;
    new-instance v6, Lcom/wolfram/alpha/WAException;

    .end local v6           #newAsyncException:Lcom/wolfram/alpha/WAException;
    invoke-direct {v6, v3}, Lcom/wolfram/alpha/WAException;-><init>(Ljava/lang/Throwable;)V

    .line 351
    .restart local v6       #newAsyncException:Lcom/wolfram/alpha/WAException;
    goto :goto_0

    .line 339
    .end local v3           #e:Ljava/io/IOException;
    .restart local v0       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1       #bytes:[B
    .restart local v2       #doc:Lorg/w3c/dom/Document;
    .restart local v4       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5       #fetcher:Lcom/wolfram/alpha/net/URLFetcher;
    :catchall_1
    move-exception v8

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v8
    :try_end_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_3

    .line 349
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #bytes:[B
    .end local v2           #doc:Lorg/w3c/dom/Document;
    .end local v4           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5           #fetcher:Lcom/wolfram/alpha/net/URLFetcher;
    :catch_3
    move-exception v8

    move-object v3, v8

    .line 350
    .local v3, e:Lorg/xml/sax/SAXException;
    new-instance v6, Lcom/wolfram/alpha/WAException;

    .end local v6           #newAsyncException:Lcom/wolfram/alpha/WAException;
    invoke-direct {v6, v3}, Lcom/wolfram/alpha/WAException;-><init>(Ljava/lang/Throwable;)V

    .restart local v6       #newAsyncException:Lcom/wolfram/alpha/WAException;
    goto :goto_0

    .line 355
    .end local v3           #e:Lorg/xml/sax/SAXException;
    :catchall_2
    move-exception v8

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v8

    .line 359
    :cond_3
    return-void
.end method

.method public declared-synchronized getAsyncException()Lcom/wolfram/alpha/WAException;
    .locals 1

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->asyncException:Lcom/wolfram/alpha/WAException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAsyncURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->asyncURL:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefinitions()[Lcom/wolfram/alpha/WADefinition;
    .locals 1

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->definitions:[Lcom/wolfram/alpha/impl/WADefinitionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->id:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInfos()[Lcom/wolfram/alpha/WAInfo;
    .locals 1

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->infos:[Lcom/wolfram/alpha/impl/WAInfoImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNotes()[Lcom/wolfram/alpha/WANote;
    .locals 1

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->notes:[Lcom/wolfram/alpha/impl/WANoteImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumSubpods()I
    .locals 1

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->subpods:[Lcom/wolfram/alpha/impl/WASubpodImpl;

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPodStates()[Lcom/wolfram/alpha/WAPodState;
    .locals 1

    .prologue
    .line 262
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->podstates:[Lcom/wolfram/alpha/impl/WAPodStateImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPosition()I
    .locals 1

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->position:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getScanner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->scanner:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSounds()[Lcom/wolfram/alpha/WASound;
    .locals 1

    .prologue
    .line 278
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->sounds:[Lcom/wolfram/alpha/impl/WASoundImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSubpods()[Lcom/wolfram/alpha/WASubpod;
    .locals 1

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->subpods:[Lcom/wolfram/alpha/impl/WASubpodImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->title:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getToggleArrows_Clicked()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->isToggleArrows_Clicked:Z

    return v0
.end method

.method public declared-synchronized getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 371
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->userData:Ljava/lang/Object;
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
    .locals 8

    .prologue
    .line 389
    monitor-enter p0

    const/16 v3, 0x11

    .line 390
    .local v3, result:I
    mul-int/lit8 v6, v3, 0x25

    :try_start_0
    iget-object v6, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->title:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    add-int/lit16 v3, v6, 0x275

    .line 398
    mul-int/lit8 v6, v3, 0x25

    iget-boolean v7, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->error:Z

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_0
    add-int v3, v6, v7

    .line 399
    iget-object v6, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->asyncException:Lcom/wolfram/alpha/WAException;

    if-eqz v6, :cond_0

    .line 400
    mul-int/lit8 v6, v3, 0x25

    iget-object v7, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->asyncException:Lcom/wolfram/alpha/WAException;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    add-int v3, v6, v7

    .line 401
    :cond_0
    iget-object v6, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->userData:Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 402
    mul-int/lit8 v6, v3, 0x25

    iget-object v7, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->userData:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    add-int v3, v6, v7

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->subpods:[Lcom/wolfram/alpha/impl/WASubpodImpl;

    .local v0, arr$:[Lcom/wolfram/alpha/impl/WASubpodImpl;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 404
    .local v5, subpod:Lcom/wolfram/alpha/WASubpod;
    mul-int/lit8 v6, v3, 0x25

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    add-int v3, v6, v7

    .line 403
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 398
    .end local v0           #arr$:[Lcom/wolfram/alpha/impl/WASubpodImpl;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v5           #subpod:Lcom/wolfram/alpha/WASubpod;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 405
    .restart local v0       #arr$:[Lcom/wolfram/alpha/impl/WASubpodImpl;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    :cond_3
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->sounds:[Lcom/wolfram/alpha/impl/WASoundImpl;

    .local v0, arr$:[Lcom/wolfram/alpha/impl/WASoundImpl;
    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_4

    aget-object v4, v0, v1

    .line 406
    .local v4, sound:Lcom/wolfram/alpha/WASound;
    mul-int/lit8 v6, v3, 0x25

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    add-int v3, v6, v7

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 407
    .end local v4           #sound:Lcom/wolfram/alpha/WASound;
    :cond_4
    monitor-exit p0

    return v3

    .line 389
    .end local v0           #arr$:[Lcom/wolfram/alpha/impl/WASoundImpl;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized isError()Z
    .locals 1

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->error:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setToggleArrows_Clicked(Z)V
    .locals 0
    .parameter "isToggleArrows_Clicked"

    .prologue
    .line 293
    iput-boolean p1, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->isToggleArrows_Clicked:Z

    .line 295
    return-void
.end method

.method public declared-synchronized setUserData(Ljava/lang/Object;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 367
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/wolfram/alpha/impl/WAPodImpl;->userData:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    monitor-exit p0

    return-void

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
