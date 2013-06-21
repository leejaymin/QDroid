.class public Lcom/wolfram/alpha/impl/WAPodStateImpl;
.super Ljava/lang/Object;
.source "WAPodStateImpl.java"

# interfaces
.implements Lcom/wolfram/alpha/WAPodState;
.implements Lcom/wolfram/alpha/visitor/Visitable;
.implements Ljava/io/Serializable;


# static fields
.field private static final DEFAULT_NAME_ARRAY:[Ljava/lang/String; = null

.field static final EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WAPodStateImpl; = null

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0x3844387c0914989L


# instance fields
.field private current:Ljava/lang/String;

.field private currentIndex:I

.field private id:J

.field private inputs:[Ljava/lang/String;

.field private names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    new-array v0, v2, [Lcom/wolfram/alpha/impl/WAPodStateImpl;

    sput-object v0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WAPodStateImpl;

    .line 32
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    sput-object v0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->DEFAULT_NAME_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->names:[Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->inputs:[Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->current:Ljava/lang/String;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->currentIndex:I

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->id:J

    .line 42
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "input"

    .prologue
    .line 48
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/wolfram/alpha/impl/WAPodStateImpl;-><init>(Ljava/lang/String;J)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 3
    .parameter "input"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->names:[Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->inputs:[Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->current:Ljava/lang/String;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->currentIndex:I

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->id:J

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v2

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->inputs:[Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->DEFAULT_NAME_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->names:[Ljava/lang/String;

    .line 54
    iput v2, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->currentIndex:I

    .line 55
    iput-wide p2, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->id:J

    .line 56
    return-void
.end method

.method constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "thisElement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->names:[Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->inputs:[Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->current:Ljava/lang/String;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->currentIndex:I

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->id:J

    .line 39
    invoke-direct {p0, p1}, Lcom/wolfram/alpha/impl/WAPodStateImpl;->createFromDOM(Lorg/w3c/dom/Element;)V

    .line 40
    return-void
.end method

.method private computeID()V
    .locals 10

    .prologue
    .line 178
    const-wide/16 v4, 0x11

    iput-wide v4, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->id:J

    .line 179
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->inputs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 180
    .local v3, s:Ljava/lang/String;
    iget-wide v4, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->id:J

    const-wide/16 v6, 0x25

    iget-wide v8, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->id:J

    mul-long/2addr v6, v8

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->id:J

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v3           #s:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private declared-synchronized createFromDOM(Lorg/w3c/dom/Element;)V
    .locals 13
    .parameter "thisElement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, nodeName:Ljava/lang/String;
    const-string v11, "state"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 71
    const-string v11, "name"

    invoke-interface {p1, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, name:Ljava/lang/String;
    const-string v11, "input"

    invoke-interface {p1, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, input:Ljava/lang/String;
    const-string v11, ""

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 77
    move-object v2, v3

    .line 78
    :cond_0
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    iput-object v11, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->names:[Ljava/lang/String;

    .line 79
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    iput-object v11, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->inputs:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .end local v2           #input:Ljava/lang/String;
    .end local v3           #name:Ljava/lang/String;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 80
    :cond_2
    :try_start_1
    const-string v11, "statelist"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 81
    const-string v11, "value"

    invoke-interface {p1, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, cur:Ljava/lang/String;
    const-string v11, ""

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 83
    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->current:Ljava/lang/String;

    .line 86
    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 87
    .local v10, states:Lorg/w3c/dom/NodeList;
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 88
    .local v5, numStates:I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    .local v8, stateElements:Ljava/util/List;,"Ljava/util/List<Lorg/w3c/dom/Node;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_5

    .line 90
    invoke-interface {v10, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 91
    .local v9, stateNode:Lorg/w3c/dom/Node;
    const-string v11, "state"

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 92
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 94
    .end local v9           #stateNode:Lorg/w3c/dom/Node;
    :cond_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    .line 95
    .local v6, numStatesFound:I
    new-array v11, v6, [Ljava/lang/String;

    iput-object v11, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->names:[Ljava/lang/String;

    .line 96
    new-array v11, v6, [Ljava/lang/String;

    iput-object v11, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->inputs:[Ljava/lang/String;

    .line 97
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v6, :cond_7

    .line 98
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 99
    .local v7, stateElement:Lorg/w3c/dom/Element;
    const-string v11, "name"

    invoke-interface {v7, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    .restart local v3       #name:Ljava/lang/String;
    const-string v11, "input"

    invoke-interface {v7, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .restart local v2       #input:Ljava/lang/String;
    const-string v11, ""

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 105
    move-object v2, v3

    .line 106
    :cond_6
    iget-object v11, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->names:[Ljava/lang/String;

    aput-object v3, v11, v1

    .line 107
    iget-object v11, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->inputs:[Ljava/lang/String;

    aput-object v2, v11, v1

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 109
    .end local v2           #input:Ljava/lang/String;
    .end local v3           #name:Ljava/lang/String;
    .end local v7           #stateElement:Lorg/w3c/dom/Element;
    :cond_7
    invoke-direct {p0}, Lcom/wolfram/alpha/impl/WAPodStateImpl;->computeID()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    .end local v0           #cur:Ljava/lang/String;
    .end local v1           #i:I
    .end local v4           #nodeName:Ljava/lang/String;
    .end local v5           #numStates:I
    .end local v6           #numStatesFound:I
    .end local v8           #stateElements:Ljava/util/List;,"Ljava/util/List<Lorg/w3c/dom/Node;>;"
    .end local v10           #states:Lorg/w3c/dom/NodeList;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11
.end method


# virtual methods
.method public accept(Lcom/wolfram/alpha/visitor/Visitor;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 186
    invoke-interface {p1, p0}, Lcom/wolfram/alpha/visitor/Visitor;->visit(Lcom/wolfram/alpha/WAPodState;)V

    .line 187
    return-void
.end method

.method public getCurrentIndex()I
    .locals 3

    .prologue
    .line 124
    iget v1, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->currentIndex:I

    if-ltz v1, :cond_0

    .line 126
    iget v1, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->currentIndex:I

    .line 138
    :goto_0
    return v1

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->current:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 129
    const/4 v1, 0x0

    iput v1, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->currentIndex:I

    .line 138
    :cond_1
    :goto_1
    iget v1, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->currentIndex:I

    goto :goto_0

    .line 132
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v1, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->names:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->current:Ljava/lang/String;

    iget-object v2, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->names:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 134
    iput v0, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->currentIndex:I

    goto :goto_1

    .line 132
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public getID()J
    .locals 2

    .prologue
    .line 154
    iget-wide v0, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->id:J

    return-wide v0
.end method

.method public getInputs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->inputs:[Ljava/lang/String;

    return-object v0
.end method

.method public getNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->names:[Ljava/lang/String;

    return-object v0
.end method

.method public setCurrentIndex(I)Lcom/wolfram/alpha/WAPodState;
    .locals 2
    .parameter "index"

    .prologue
    .line 144
    new-instance v0, Lcom/wolfram/alpha/impl/WAPodStateImpl;

    invoke-direct {v0}, Lcom/wolfram/alpha/impl/WAPodStateImpl;-><init>()V

    .line 145
    .local v0, newState:Lcom/wolfram/alpha/impl/WAPodStateImpl;
    iget-object v1, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->names:[Ljava/lang/String;

    iput-object v1, v0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->names:[Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->inputs:[Ljava/lang/String;

    iput-object v1, v0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->inputs:[Ljava/lang/String;

    .line 147
    iput p1, v0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->currentIndex:I

    .line 148
    iget-object v1, v0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->names:[Ljava/lang/String;

    aget-object v1, v1, p1

    iput-object v1, v0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->current:Ljava/lang/String;

    .line 149
    invoke-direct {v0}, Lcom/wolfram/alpha/impl/WAPodStateImpl;->computeID()V

    .line 150
    return-object v0
.end method

.method public setCurrentIndex_SubPodState(I)V
    .locals 0
    .parameter "currentIndex"

    .prologue
    .line 167
    iput p1, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->currentIndex:I

    .line 168
    return-void
.end method

.method public setID_SubPodState(J)V
    .locals 0
    .parameter "ID"

    .prologue
    .line 171
    iput-wide p1, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->id:J

    .line 172
    return-void
.end method

.method public setInputs_SubPodState([Ljava/lang/String;)V
    .locals 0
    .parameter "inputs"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->inputs:[Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setNames_SubPodState([Ljava/lang/String;)V
    .locals 0
    .parameter "names"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/wolfram/alpha/impl/WAPodStateImpl;->names:[Ljava/lang/String;

    .line 160
    return-void
.end method
