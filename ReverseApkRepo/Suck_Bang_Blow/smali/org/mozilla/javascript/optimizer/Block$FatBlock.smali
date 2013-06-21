.class Lorg/mozilla/javascript/optimizer/Block$FatBlock;
.super Ljava/lang/Object;
.source "Block.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/optimizer/Block;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FatBlock"
.end annotation


# instance fields
.field private predecessors:Lorg/mozilla/javascript/ObjToIntMap;

.field realBlock:Lorg/mozilla/javascript/optimizer/Block;

.field private successors:Lorg/mozilla/javascript/ObjToIntMap;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjToIntMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->successors:Lorg/mozilla/javascript/ObjToIntMap;

    .line 81
    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjToIntMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->predecessors:Lorg/mozilla/javascript/ObjToIntMap;

    return-void
.end method

.method synthetic constructor <init>(Lorg/mozilla/javascript/optimizer/Block$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/mozilla/javascript/optimizer/Block$FatBlock;-><init>()V

    return-void
.end method

.method private static reduceToArray(Lorg/mozilla/javascript/ObjToIntMap;)[Lorg/mozilla/javascript/optimizer/Block;
    .locals 7
    .parameter "map"

    .prologue
    .line 59
    const/4 v5, 0x0

    .line 60
    .local v5, result:[Lorg/mozilla/javascript/optimizer/Block;
    invoke-virtual {p0}, Lorg/mozilla/javascript/ObjToIntMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 61
    invoke-virtual {p0}, Lorg/mozilla/javascript/ObjToIntMap;->size()I

    move-result v6

    new-array v5, v6, [Lorg/mozilla/javascript/optimizer/Block;

    .line 62
    const/4 v2, 0x0

    .line 63
    .local v2, i:I
    invoke-virtual {p0}, Lorg/mozilla/javascript/ObjToIntMap;->newIterator()Lorg/mozilla/javascript/ObjToIntMap$Iterator;

    move-result-object v4

    .line 64
    .local v4, iter:Lorg/mozilla/javascript/ObjToIntMap$Iterator;
    invoke-virtual {v4}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->start()V

    .end local p0
    :goto_0
    invoke-virtual {v4}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->done()Z

    move-result v6

    if-nez v6, :cond_0

    .line 65
    invoke-virtual {v4}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    move-object v1, v0

    .line 66
    .local v1, fb:Lorg/mozilla/javascript/optimizer/Block$FatBlock;
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    iget-object v6, v1, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->realBlock:Lorg/mozilla/javascript/optimizer/Block;

    aput-object v6, v5, v2

    .line 64
    invoke-virtual {v4}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->next()V

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 69
    .end local v1           #fb:Lorg/mozilla/javascript/optimizer/Block$FatBlock;
    .end local v2           #i:I
    .end local v4           #iter:Lorg/mozilla/javascript/ObjToIntMap$Iterator;
    :cond_0
    return-object v5
.end method


# virtual methods
.method addPredecessor(Lorg/mozilla/javascript/optimizer/Block$FatBlock;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 73
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->predecessors:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    return-void
.end method

.method addSuccessor(Lorg/mozilla/javascript/optimizer/Block$FatBlock;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 72
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->successors:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    return-void
.end method

.method getPredecessors()[Lorg/mozilla/javascript/optimizer/Block;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->predecessors:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-static {v0}, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->reduceToArray(Lorg/mozilla/javascript/ObjToIntMap;)[Lorg/mozilla/javascript/optimizer/Block;

    move-result-object v0

    return-object v0
.end method

.method getSuccessors()[Lorg/mozilla/javascript/optimizer/Block;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->successors:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-static {v0}, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->reduceToArray(Lorg/mozilla/javascript/ObjToIntMap;)[Lorg/mozilla/javascript/optimizer/Block;

    move-result-object v0

    return-object v0
.end method
