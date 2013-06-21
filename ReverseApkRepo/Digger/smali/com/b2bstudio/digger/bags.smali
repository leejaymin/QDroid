.class Lcom/b2bstudio/digger/bags;
.super Ljava/lang/Object;
.source "bags.java"


# instance fields
.field bagdat:[Lcom/b2bstudio/digger/bag;

.field bagdat1:[Lcom/b2bstudio/digger/bag;

.field bagdat2:[Lcom/b2bstudio/digger/bag;

.field dig:Lcom/b2bstudio/digger/main;

.field goldtime:I

.field pushcount:I

.field wblanim:[I


# direct methods
.method constructor <init>(Lcom/b2bstudio/digger/main;)V
    .locals 8
    .parameter "d"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/b2bstudio/digger/bag;

    new-instance v1, Lcom/b2bstudio/digger/bag;

    invoke-direct {v1}, Lcom/b2bstudio/digger/bag;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Lcom/b2bstudio/digger/bag;

    invoke-direct {v1}, Lcom/b2bstudio/digger/bag;-><init>()V

    aput-object v1, v0, v5

    new-instance v1, Lcom/b2bstudio/digger/bag;

    invoke-direct {v1}, Lcom/b2bstudio/digger/bag;-><init>()V

    aput-object v1, v0, v4

    new-instance v1, Lcom/b2bstudio/digger/bag;

    invoke-direct {v1}, Lcom/b2bstudio/digger/bag;-><init>()V

    aput-object v1, v0, v7

    new-instance v1, Lcom/b2bstudio/digger/bag;

    invoke-direct {v1}, Lcom/b2bstudio/digger/bag;-><init>()V

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-instance v2, Lcom/b2bstudio/digger/bag;

    invoke-direct {v2}, Lcom/b2bstudio/digger/bag;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/b2bstudio/digger/bag;

    invoke-direct {v2}, Lcom/b2bstudio/digger/bag;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/b2bstudio/digger/bag;

    invoke-direct {v2}, Lcom/b2bstudio/digger/bag;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/b2bstudio/digger/bags;->bagdat1:[Lcom/b2bstudio/digger/bag;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/b2bstudio/digger/bag;

    new-instance v1, Lcom/b2bstudio/digger/bag;

    invoke-direct {v1}, Lcom/b2bstudio/digger/bag;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Lcom/b2bstudio/digger/bag;

    invoke-direct {v1}, Lcom/b2bstudio/digger/bag;-><init>()V

    aput-object v1, v0, v5

    new-instance v1, Lcom/b2bstudio/digger/bag;

    invoke-direct {v1}, Lcom/b2bstudio/digger/bag;-><init>()V

    aput-object v1, v0, v4

    new-instance v1, Lcom/b2bstudio/digger/bag;

    invoke-direct {v1}, Lcom/b2bstudio/digger/bag;-><init>()V

    aput-object v1, v0, v7

    new-instance v1, Lcom/b2bstudio/digger/bag;

    invoke-direct {v1}, Lcom/b2bstudio/digger/bag;-><init>()V

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-instance v2, Lcom/b2bstudio/digger/bag;

    invoke-direct {v2}, Lcom/b2bstudio/digger/bag;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/b2bstudio/digger/bag;

    invoke-direct {v2}, Lcom/b2bstudio/digger/bag;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/b2bstudio/digger/bag;

    invoke-direct {v2}, Lcom/b2bstudio/digger/bag;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/b2bstudio/digger/bags;->bagdat2:[Lcom/b2bstudio/digger/bag;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/b2bstudio/digger/bag;

    new-instance v1, Lcom/b2bstudio/digger/bag;

    invoke-direct {v1}, Lcom/b2bstudio/digger/bag;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Lcom/b2bstudio/digger/bag;

    invoke-direct {v1}, Lcom/b2bstudio/digger/bag;-><init>()V

    aput-object v1, v0, v5

    new-instance v1, Lcom/b2bstudio/digger/bag;

    invoke-direct {v1}, Lcom/b2bstudio/digger/bag;-><init>()V

    aput-object v1, v0, v4

    new-instance v1, Lcom/b2bstudio/digger/bag;

    invoke-direct {v1}, Lcom/b2bstudio/digger/bag;-><init>()V

    aput-object v1, v0, v7

    new-instance v1, Lcom/b2bstudio/digger/bag;

    invoke-direct {v1}, Lcom/b2bstudio/digger/bag;-><init>()V

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-instance v2, Lcom/b2bstudio/digger/bag;

    invoke-direct {v2}, Lcom/b2bstudio/digger/bag;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/b2bstudio/digger/bag;

    invoke-direct {v2}, Lcom/b2bstudio/digger/bag;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/b2bstudio/digger/bag;

    invoke-direct {v2}, Lcom/b2bstudio/digger/bag;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    .line 9
    iput v3, p0, Lcom/b2bstudio/digger/bags;->pushcount:I

    iput v3, p0, Lcom/b2bstudio/digger/bags;->goldtime:I

    .line 11
    new-array v0, v6, [I

    aput v4, v0, v3

    aput v5, v0, v4

    iput-object v0, p0, Lcom/b2bstudio/digger/bags;->wblanim:[I

    .line 14
    iput-object p1, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    .line 15
    return-void
.end method


# virtual methods
.method bagbits()I
    .locals 4

    .prologue
    .line 17
    const/4 v2, 0x0

    .line 18
    .local v2, bags:I
    const/4 v1, 0x1

    .local v1, bag:I
    const/4 v0, 0x2

    .local v0, b:I
    :goto_0
    const/16 v3, 0x8

    if-lt v1, v3, :cond_0

    .line 21
    return v2

    .line 19
    :cond_0
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Lcom/b2bstudio/digger/bag;->exist:Z

    if-eqz v3, :cond_1

    .line 20
    or-int/2addr v2, v0

    .line 18
    :cond_1
    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method baghitground(I)V
    .locals 7
    .parameter "bag"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 25
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/b2bstudio/digger/bag;->dir:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/b2bstudio/digger/bag;->fallh:I

    if-le v3, v5, :cond_0

    .line 26
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v3, v3, p1

    iput v5, v3, Lcom/b2bstudio/digger/bag;->gt:I

    .line 29
    :goto_0
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v3, v3, p1

    const/4 v4, -0x1

    iput v4, v3, Lcom/b2bstudio/digger/bag;->dir:I

    .line 30
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v3, v3, p1

    const/16 v4, 0xf

    iput v4, v3, Lcom/b2bstudio/digger/bag;->wt:I

    .line 31
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v3, v3, p1

    iput-boolean v6, v3, Lcom/b2bstudio/digger/bag;->wobbling:Z

    .line 32
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v3, v3, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    iget-object v4, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/b2bstudio/digger/bag;->x:I

    iget-object v5, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v5, v5, p1

    iget v5, v5, Lcom/b2bstudio/digger/bag;->y:I

    invoke-virtual {v3, p1, v6, v4, v5}, Lcom/b2bstudio/digger/draw;->drawgold(IIII)I

    move-result v2

    .line 33
    .local v2, clbits:I
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v3, v3, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v3}, Lcom/b2bstudio/digger/construct;->incpenalty()V

    .line 34
    const/4 v1, 0x1

    .local v1, bn:I
    const/4 v0, 0x2

    .local v0, b:I
    :goto_1
    const/16 v3, 0x8

    if-lt v1, v3, :cond_1

    .line 37
    return-void

    .line 28
    .end local v0           #b:I
    .end local v1           #bn:I
    .end local v2           #clbits:I
    :cond_0
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v3, v3, p1

    iput v6, v3, Lcom/b2bstudio/digger/bag;->fallh:I

    goto :goto_0

    .line 35
    .restart local v0       #b:I
    .restart local v1       #bn:I
    .restart local v2       #clbits:I
    :cond_1
    and-int v3, v0, v2

    if-eqz v3, :cond_2

    .line 36
    invoke-virtual {p0, v1}, Lcom/b2bstudio/digger/bags;->removebag(I)V

    .line 34
    :cond_2
    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method bagy(I)I
    .locals 1
    .parameter "bag"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/b2bstudio/digger/bag;->y:I

    return v0
.end method

.method cleanupbags()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x1

    .local v0, bpa:I
    :goto_0
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 55
    return-void

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/b2bstudio/digger/bag;->exist:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/b2bstudio/digger/bag;->h:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/b2bstudio/digger/bag;->v:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/b2bstudio/digger/bag;->xr:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/b2bstudio/digger/bag;->yr:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/b2bstudio/digger/bag;->gt:I

    if-nez v1, :cond_2

    .line 46
    iget-object v1, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/b2bstudio/digger/bag;->fallh:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/b2bstudio/digger/bag;->wobbling:Z

    if-eqz v1, :cond_3

    .line 47
    :cond_2
    iget-object v1, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/b2bstudio/digger/bag;->exist:Z

    .line 48
    iget-object v1, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v1, v1, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    invoke-virtual {v1, v0}, Lcom/b2bstudio/digger/sprite;->erasespr(I)V

    .line 50
    :cond_3
    iget-object v1, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v1, v1, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v1}, Lcom/b2bstudio/digger/construct;->getcplayer()I

    move-result v1

    if-nez v1, :cond_4

    .line 51
    iget-object v1, p0, Lcom/b2bstudio/digger/bags;->bagdat1:[Lcom/b2bstudio/digger/bag;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/b2bstudio/digger/bag;->copyFrom(Lcom/b2bstudio/digger/bag;)V

    .line 43
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_4
    iget-object v1, p0, Lcom/b2bstudio/digger/bags;->bagdat2:[Lcom/b2bstudio/digger/bag;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/b2bstudio/digger/bag;->copyFrom(Lcom/b2bstudio/digger/bag;)V

    goto :goto_1
.end method

.method dobags()V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v9, 0x6

    const/4 v8, 0x1

    .line 58
    const/4 v1, 0x1

    .local v1, soundfalloffflag:Z
    const/4 v2, 0x1

    .line 59
    .local v2, soundwobbleoffflag:Z
    const/4 v0, 0x1

    .local v0, bag:I
    :goto_0
    if-lt v0, v12, :cond_0

    .line 91
    const/4 v0, 0x1

    :goto_1
    if-lt v0, v12, :cond_7

    .line 101
    return-void

    .line 60
    :cond_0
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/b2bstudio/digger/bag;->exist:Z

    if-eqz v3, :cond_4

    .line 61
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/b2bstudio/digger/bag;->gt:I

    if-eqz v3, :cond_6

    .line 62
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/b2bstudio/digger/bag;->gt:I

    if-ne v3, v8, :cond_1

    .line 63
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    sub-int v4, v0, v8

    invoke-virtual {v3, v4}, Lcom/b2bstudio/digger/main;->removebag(I)V

    .line 64
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v3, v3, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/b2bstudio/digger/bag;->x:I

    iget-object v6, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/b2bstudio/digger/bag;->y:I

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/b2bstudio/digger/draw;->drawgold(IIII)I

    .line 65
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    sub-int v4, v0, v8

    iget-object v5, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/b2bstudio/digger/bag;->x:I

    iget-object v6, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/b2bstudio/digger/bag;->y:I

    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/b2bstudio/digger/main;->drawgold(IIII)V

    .line 66
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v3, v3, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v3}, Lcom/b2bstudio/digger/construct;->incpenalty()V

    .line 68
    :cond_1
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/b2bstudio/digger/bag;->gt:I

    if-ne v3, v10, :cond_2

    .line 69
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v3, v3, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    iget-object v4, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/b2bstudio/digger/bag;->x:I

    iget-object v5, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/b2bstudio/digger/bag;->y:I

    invoke-virtual {v3, v0, v11, v4, v5}, Lcom/b2bstudio/digger/draw;->drawgold(IIII)I

    .line 70
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    sub-int v4, v0, v8

    invoke-virtual {v3, v4}, Lcom/b2bstudio/digger/main;->removebag(I)V

    .line 71
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    sub-int v4, v0, v8

    iget-object v5, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/b2bstudio/digger/bag;->x:I

    iget-object v6, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/b2bstudio/digger/bag;->y:I

    const/4 v7, 0x2

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/b2bstudio/digger/main;->drawgold(IIII)V

    .line 72
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v3, v3, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v3}, Lcom/b2bstudio/digger/construct;->incpenalty()V

    .line 74
    :cond_2
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/b2bstudio/digger/bag;->gt:I

    if-ne v3, v11, :cond_3

    .line 75
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v3, v3, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    iget-object v4, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/b2bstudio/digger/bag;->x:I

    iget-object v5, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/b2bstudio/digger/bag;->y:I

    invoke-virtual {v3, v0, v9, v4, v5}, Lcom/b2bstudio/digger/draw;->drawgold(IIII)I

    .line 76
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    sub-int v4, v0, v8

    invoke-virtual {v3, v4}, Lcom/b2bstudio/digger/main;->removebag(I)V

    .line 77
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    sub-int v4, v0, v8

    iget-object v5, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/b2bstudio/digger/bag;->x:I

    iget-object v6, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/b2bstudio/digger/bag;->y:I

    invoke-virtual {v3, v4, v5, v6, v10}, Lcom/b2bstudio/digger/main;->drawgold(IIII)V

    .line 78
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v3, v3, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v3}, Lcom/b2bstudio/digger/construct;->incpenalty()V

    .line 80
    :cond_3
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v3, v3, v0

    iget v4, v3, Lcom/b2bstudio/digger/bag;->gt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/b2bstudio/digger/bag;->gt:I

    .line 81
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/b2bstudio/digger/bag;->gt:I

    iget v4, p0, Lcom/b2bstudio/digger/bags;->goldtime:I

    if-ne v3, v4, :cond_5

    .line 82
    invoke-virtual {p0, v0}, Lcom/b2bstudio/digger/bags;->removebag(I)V

    .line 59
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 84
    :cond_5
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/b2bstudio/digger/bag;->v:I

    const/16 v4, 0x9

    if-ge v3, v4, :cond_4

    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/b2bstudio/digger/bag;->gt:I

    iget v4, p0, Lcom/b2bstudio/digger/bags;->goldtime:I

    const/16 v5, 0xa

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_4

    .line 85
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v3, v3, Lcom/b2bstudio/digger/main;->monster:Lcom/b2bstudio/digger/monster;

    iget-object v4, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/b2bstudio/digger/bag;->h:I

    iget-object v5, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/b2bstudio/digger/bag;->v:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/b2bstudio/digger/monster;->getfield(II)I

    move-result v3

    and-int/lit16 v3, v3, 0x2000

    if-nez v3, :cond_4

    .line 86
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v3, v3, v0

    iget v4, p0, Lcom/b2bstudio/digger/bags;->goldtime:I

    const/16 v5, 0xa

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/b2bstudio/digger/bag;->gt:I

    goto :goto_2

    .line 89
    :cond_6
    invoke-virtual {p0, v0}, Lcom/b2bstudio/digger/bags;->updatebag(I)V

    goto :goto_2

    .line 92
    :cond_7
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/b2bstudio/digger/bag;->dir:I

    if-ne v3, v9, :cond_8

    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/b2bstudio/digger/bag;->exist:Z

    .line 94
    :cond_8
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/b2bstudio/digger/bag;->dir:I

    if-eq v3, v9, :cond_9

    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/b2bstudio/digger/bag;->wobbling:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/b2bstudio/digger/bag;->exist:Z

    .line 91
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method drawbags()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 104
    const/4 v0, 0x1

    .local v0, bag:I
    :goto_0
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 114
    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v1, v1, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v1}, Lcom/b2bstudio/digger/construct;->getcplayer()I

    move-result v1

    if-nez v1, :cond_2

    .line 106
    iget-object v1, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/b2bstudio/digger/bags;->bagdat1:[Lcom/b2bstudio/digger/bag;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/b2bstudio/digger/bag;->copyFrom(Lcom/b2bstudio/digger/bag;)V

    .line 109
    :goto_1
    iget-object v1, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/b2bstudio/digger/bag;->exist:Z

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v1, v1, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    iget-object v2, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/b2bstudio/digger/bag;->x:I

    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/b2bstudio/digger/bag;->y:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/b2bstudio/digger/sprite;->movedrawspr(III)I

    .line 111
    iget-object v1, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    sub-int v2, v0, v5

    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/b2bstudio/digger/bag;->x:I

    iget-object v4, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/b2bstudio/digger/bag;->y:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/b2bstudio/digger/main;->drawbag(IIII)V

    .line 104
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_2
    iget-object v1, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/b2bstudio/digger/bags;->bagdat2:[Lcom/b2bstudio/digger/bag;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/b2bstudio/digger/bag;->copyFrom(Lcom/b2bstudio/digger/bag;)V

    goto :goto_1
.end method

.method getbagdir(I)I
    .locals 1
    .parameter "bag"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/b2bstudio/digger/bag;->exist:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/b2bstudio/digger/bag;->dir:I

    .line 118
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getgold(I)V
    .locals 6
    .parameter "bag"

    .prologue
    .line 122
    iget-object v1, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v1, v1, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/b2bstudio/digger/bag;->x:I

    iget-object v4, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/b2bstudio/digger/bag;->y:I

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/b2bstudio/digger/draw;->drawgold(IIII)I

    move-result v0

    .line 123
    .local v0, clbits:I
    iget-object v1, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    const/4 v2, 0x1

    sub-int v2, p1, v2

    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/b2bstudio/digger/bag;->x:I

    iget-object v4, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/b2bstudio/digger/bag;->y:I

    const/4 v5, 0x3

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/b2bstudio/digger/main;->drawgold(IIII)V

    .line 124
    iget-object v1, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v1, v1, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v1}, Lcom/b2bstudio/digger/construct;->incpenalty()V

    .line 125
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v1, v1, Lcom/b2bstudio/digger/main;->score:Lcom/b2bstudio/digger/score;

    invoke-virtual {v1}, Lcom/b2bstudio/digger/score;->scoregold()V

    .line 127
    iget-object v1, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    const/4 v2, 0x0

    iput v2, v1, Lcom/b2bstudio/digger/main;->digtime:I

    .line 131
    :goto_0
    invoke-virtual {p0, p1}, Lcom/b2bstudio/digger/bags;->removebag(I)V

    .line 132
    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v1, v1, Lcom/b2bstudio/digger/main;->monster:Lcom/b2bstudio/digger/monster;

    invoke-virtual {v1}, Lcom/b2bstudio/digger/monster;->mongold()V

    goto :goto_0
.end method

.method getnmovingbags()I
    .locals 4

    .prologue
    .line 134
    const/4 v1, 0x0

    .line 135
    .local v1, n:I
    const/4 v0, 0x1

    .local v0, bag:I
    :goto_0
    const/16 v2, 0x8

    if-lt v0, v2, :cond_0

    .line 139
    return v1

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/b2bstudio/digger/bag;->exist:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/b2bstudio/digger/bag;->gt:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_2

    .line 137
    iget-object v2, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/b2bstudio/digger/bag;->gt:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/b2bstudio/digger/bag;->wobbling:Z

    if-eqz v2, :cond_2

    .line 138
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 135
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method initbags()V
    .locals 11

    .prologue
    const/16 v10, 0xf

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 143
    iput v7, p0, Lcom/b2bstudio/digger/bags;->pushcount:I

    .line 144
    const/16 v5, 0x96

    iget-object v6, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v6, v6, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v6}, Lcom/b2bstudio/digger/construct;->levof10()I

    move-result v6

    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/b2bstudio/digger/bags;->goldtime:I

    .line 145
    const/4 v0, 0x1

    .local v0, bag:I
    :goto_0
    if-lt v0, v8, :cond_1

    .line 147
    const/4 v0, 0x1

    .line 148
    const/4 v3, 0x0

    .local v3, x:I
    :goto_1
    if-lt v3, v10, :cond_2

    .line 166
    iget-object v5, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v5, v5, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v5}, Lcom/b2bstudio/digger/construct;->getcplayer()I

    move-result v5

    if-nez v5, :cond_5

    .line 167
    const/4 v2, 0x1

    .local v2, i:I
    :goto_2
    if-lt v2, v8, :cond_4

    .line 172
    :cond_0
    return-void

    .line 146
    .end local v2           #i:I
    .end local v3           #x:I
    :cond_1
    iget-object v5, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v5, v5, v0

    iput-boolean v7, v5, Lcom/b2bstudio/digger/bag;->exist:Z

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    .restart local v3       #x:I
    :cond_2
    const/4 v4, 0x0

    .local v4, y:I
    move v1, v0

    .end local v0           #bag:I
    .local v1, bag:I
    :goto_3
    const/16 v5, 0xa

    if-lt v4, v5, :cond_3

    .line 148
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    .end local v1           #bag:I
    .restart local v0       #bag:I
    goto :goto_1

    .line 150
    .end local v0           #bag:I
    .restart local v1       #bag:I
    :cond_3
    iget-object v5, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v5, v5, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    iget-object v6, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v6, v6, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v6}, Lcom/b2bstudio/digger/construct;->levplan()I

    move-result v6

    invoke-virtual {v5, v3, v4, v6}, Lcom/b2bstudio/digger/construct;->getlevch(III)I

    move-result v5

    const/16 v6, 0x42

    if-ne v5, v6, :cond_6

    .line 151
    if-ge v1, v8, :cond_6

    .line 152
    iget-object v5, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v5, v5, v1

    iput-boolean v9, v5, Lcom/b2bstudio/digger/bag;->exist:Z

    .line 153
    iget-object v5, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v5, v5, v1

    iput v7, v5, Lcom/b2bstudio/digger/bag;->gt:I

    .line 154
    iget-object v5, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v5, v5, v1

    iput v7, v5, Lcom/b2bstudio/digger/bag;->fallh:I

    .line 155
    iget-object v5, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v5, v5, v1

    const/4 v6, -0x1

    iput v6, v5, Lcom/b2bstudio/digger/bag;->dir:I

    .line 156
    iget-object v5, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v5, v5, v1

    iput-boolean v7, v5, Lcom/b2bstudio/digger/bag;->wobbling:Z

    .line 157
    iget-object v5, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v5, v5, v1

    iput v10, v5, Lcom/b2bstudio/digger/bag;->wt:I

    .line 158
    iget-object v5, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v5, v5, v1

    iput-boolean v9, v5, Lcom/b2bstudio/digger/bag;->unfallen:Z

    .line 159
    iget-object v5, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v5, v5, v1

    mul-int/lit8 v6, v3, 0x14

    add-int/lit8 v6, v6, 0xc

    iput v6, v5, Lcom/b2bstudio/digger/bag;->x:I

    .line 160
    iget-object v5, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v5, v5, v1

    mul-int/lit8 v6, v4, 0x12

    add-int/lit8 v6, v6, 0x12

    iput v6, v5, Lcom/b2bstudio/digger/bag;->y:I

    .line 161
    iget-object v5, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v5, v5, v1

    iput v3, v5, Lcom/b2bstudio/digger/bag;->h:I

    .line 162
    iget-object v5, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v5, v5, v1

    iput v4, v5, Lcom/b2bstudio/digger/bag;->v:I

    .line 163
    iget-object v5, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v5, v5, v1

    iput v7, v5, Lcom/b2bstudio/digger/bag;->xr:I

    .line 164
    iget-object v5, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #bag:I
    .restart local v0       #bag:I
    aget-object v5, v5, v1

    iput v7, v5, Lcom/b2bstudio/digger/bag;->yr:I

    .line 149
    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0           #bag:I
    .restart local v1       #bag:I
    goto :goto_3

    .line 168
    .end local v1           #bag:I
    .end local v4           #y:I
    .restart local v0       #bag:I
    .restart local v2       #i:I
    :cond_4
    iget-object v5, p0, Lcom/b2bstudio/digger/bags;->bagdat1:[Lcom/b2bstudio/digger/bag;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Lcom/b2bstudio/digger/bag;->copyFrom(Lcom/b2bstudio/digger/bag;)V

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 170
    .end local v2           #i:I
    :cond_5
    const/4 v2, 0x1

    .restart local v2       #i:I
    :goto_5
    if-ge v2, v8, :cond_0

    .line 171
    iget-object v5, p0, Lcom/b2bstudio/digger/bags;->bagdat2:[Lcom/b2bstudio/digger/bag;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Lcom/b2bstudio/digger/bag;->copyFrom(Lcom/b2bstudio/digger/bag;)V

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .end local v0           #bag:I
    .end local v2           #i:I
    .restart local v1       #bag:I
    .restart local v4       #y:I
    :cond_6
    move v0, v1

    .end local v1           #bag:I
    .restart local v0       #bag:I
    goto :goto_4
.end method

.method pushbag(II)Z
    .locals 13
    .parameter "bag"
    .parameter "dir"

    .prologue
    .line 175
    const/4 v4, 0x1

    .line 176
    .local v4, push:Z
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v8, v8, p1

    iget v6, v8, Lcom/b2bstudio/digger/bag;->x:I

    .local v6, x:I
    move v2, v6

    .line 177
    .local v2, ox:I
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v8, v8, p1

    iget v7, v8, Lcom/b2bstudio/digger/bag;->y:I

    .local v7, y:I
    move v3, v7

    .line 178
    .local v3, oy:I
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v8, v8, p1

    iget v1, v8, Lcom/b2bstudio/digger/bag;->h:I

    .line 179
    .local v1, h:I
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v8, v8, p1

    iget v5, v8, Lcom/b2bstudio/digger/bag;->v:I

    .line 180
    .local v5, v:I
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v8, v8, p1

    iget v8, v8, Lcom/b2bstudio/digger/bag;->gt:I

    if-eqz v8, :cond_0

    .line 181
    invoke-virtual {p0, p1}, Lcom/b2bstudio/digger/bags;->getgold(I)V

    .line 182
    const/4 v8, 0x1

    .line 262
    :goto_0
    return v8

    .line 184
    :cond_0
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v8, v8, p1

    iget v8, v8, Lcom/b2bstudio/digger/bag;->dir:I

    const/4 v9, 0x6

    if-ne v8, v9, :cond_4

    const/4 v8, 0x4

    if-eq p2, v8, :cond_1

    if-nez p2, :cond_4

    .line 185
    :cond_1
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v8, v8, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    const/4 v9, 0x3

    invoke-virtual {v8, p1, v9, v6, v7}, Lcom/b2bstudio/digger/draw;->drawgold(IIII)I

    move-result v0

    .line 186
    .local v0, clbits:I
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v8, v8, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v8}, Lcom/b2bstudio/digger/construct;->incpenalty()V

    .line 187
    and-int/lit8 v8, v0, 0x1

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget v8, v8, Lcom/b2bstudio/digger/main;->diggery:I

    if-lt v8, v7, :cond_2

    .line 188
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    const/4 v9, 0x1

    invoke-virtual {v8, v9, p1}, Lcom/b2bstudio/digger/main;->killdigger(II)V

    .line 189
    :cond_2
    and-int/lit16 v8, v0, 0x3f00

    if-eqz v8, :cond_3

    .line 190
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v8, v8, Lcom/b2bstudio/digger/main;->monster:Lcom/b2bstudio/digger/monster;

    invoke-virtual {v8, p1, v0}, Lcom/b2bstudio/digger/monster;->squashmonsters(II)V

    .line 191
    :cond_3
    const/4 v8, 0x1

    goto :goto_0

    .line 193
    .end local v0           #clbits:I
    :cond_4
    const/16 v8, 0x124

    if-ne v6, v8, :cond_5

    if-eqz p2, :cond_8

    :cond_5
    const/16 v8, 0xc

    if-ne v6, v8, :cond_6

    const/4 v8, 0x4

    if-eq p2, v8, :cond_8

    :cond_6
    const/16 v8, 0xb4

    if-ne v7, v8, :cond_7

    const/4 v8, 0x6

    if-eq p2, v8, :cond_8

    .line 194
    :cond_7
    const/16 v8, 0x12

    if-ne v7, v8, :cond_9

    const/4 v8, 0x2

    if-ne p2, v8, :cond_9

    .line 195
    :cond_8
    const/4 v4, 0x0

    .line 196
    :cond_9
    if-eqz v4, :cond_b

    .line 197
    sparse-switch p2, :sswitch_data_0

    .line 218
    :goto_1
    sparse-switch p2, :sswitch_data_1

    .line 250
    :cond_a
    :goto_2
    if-eqz v4, :cond_10

    .line 251
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v8, v8, p1

    iput p2, v8, Lcom/b2bstudio/digger/bag;->dir:I

    .line 254
    :goto_3
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    const/4 v9, 0x1

    sub-int v9, p1, v9

    iget-object v10, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v10, v10, p1

    iget v10, v10, Lcom/b2bstudio/digger/bag;->x:I

    iget-object v11, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v11, v11, p1

    iget v11, v11, Lcom/b2bstudio/digger/bag;->y:I

    const/4 v12, 0x1

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/b2bstudio/digger/main;->drawbag(IIII)V

    .line 255
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v8, v8, p1

    iput v6, v8, Lcom/b2bstudio/digger/bag;->x:I

    .line 256
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v8, v8, p1

    iput v7, v8, Lcom/b2bstudio/digger/bag;->y:I

    .line 257
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v8, v8, p1

    const/16 v9, 0xc

    sub-int v9, v6, v9

    div-int/lit8 v9, v9, 0x14

    iput v9, v8, Lcom/b2bstudio/digger/bag;->h:I

    .line 258
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v8, v8, p1

    const/16 v9, 0x12

    sub-int v9, v7, v9

    div-int/lit8 v9, v9, 0x12

    iput v9, v8, Lcom/b2bstudio/digger/bag;->v:I

    .line 259
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v8, v8, p1

    const/16 v9, 0xc

    sub-int v9, v6, v9

    rem-int/lit8 v9, v9, 0x14

    iput v9, v8, Lcom/b2bstudio/digger/bag;->xr:I

    .line 260
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v8, v8, p1

    const/16 v9, 0x12

    sub-int v9, v7, v9

    rem-int/lit8 v9, v9, 0x12

    iput v9, v8, Lcom/b2bstudio/digger/bag;->yr:I

    :cond_b
    move v8, v4

    .line 262
    goto/16 :goto_0

    .line 199
    :sswitch_0
    add-int/lit8 v6, v6, 0x4

    .line 200
    goto :goto_1

    .line 202
    :sswitch_1
    add-int/lit8 v6, v6, -0x4

    .line 203
    goto :goto_1

    .line 205
    :sswitch_2
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v8, v8, p1

    iget-boolean v8, v8, Lcom/b2bstudio/digger/bag;->unfallen:Z

    if-eqz v8, :cond_c

    .line 206
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v8, v8, p1

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/b2bstudio/digger/bag;->unfallen:Z

    .line 207
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v8, v8, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    invoke-virtual {v8, v6, v7}, Lcom/b2bstudio/digger/draw;->drawsquareblob(II)V

    .line 208
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v8, v8, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    add-int/lit8 v9, v7, 0x15

    invoke-virtual {v8, v6, v9}, Lcom/b2bstudio/digger/draw;->drawtopblob(II)V

    .line 209
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    invoke-virtual {v8, v6, v7}, Lcom/b2bstudio/digger/main;->drawsquareblob(II)V

    .line 210
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    add-int/lit8 v9, v7, 0x15

    invoke-virtual {v8, v6, v9}, Lcom/b2bstudio/digger/main;->drawtopblob(II)V

    .line 214
    :goto_4
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v8, v8, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    invoke-virtual {v8, v6, v7, p2}, Lcom/b2bstudio/digger/draw;->eatfield(III)V

    .line 215
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    invoke-virtual {v8, v1, v5}, Lcom/b2bstudio/digger/main;->killemerald(II)V

    .line 216
    add-int/lit8 v7, v7, 0x6

    goto/16 :goto_1

    .line 213
    :cond_c
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    invoke-virtual {v8, v6, v7}, Lcom/b2bstudio/digger/main;->drawfurryblob(II)V

    goto :goto_4

    .line 220
    :sswitch_3
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v8, v8, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    const/4 v9, 0x3

    invoke-virtual {v8, p1, v9, v6, v7}, Lcom/b2bstudio/digger/draw;->drawgold(IIII)I

    move-result v0

    .line 221
    .restart local v0       #clbits:I
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v8, v8, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v8}, Lcom/b2bstudio/digger/construct;->incpenalty()V

    .line 222
    and-int/lit8 v8, v0, 0x1

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget v8, v8, Lcom/b2bstudio/digger/main;->diggery:I

    if-lt v8, v7, :cond_d

    .line 223
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    const/4 v9, 0x1

    invoke-virtual {v8, v9, p1}, Lcom/b2bstudio/digger/main;->killdigger(II)V

    .line 224
    :cond_d
    and-int/lit16 v8, v0, 0x3f00

    if-eqz v8, :cond_a

    .line 225
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v8, v8, Lcom/b2bstudio/digger/main;->monster:Lcom/b2bstudio/digger/monster;

    invoke-virtual {v8, p1, v0}, Lcom/b2bstudio/digger/monster;->squashmonsters(II)V

    goto/16 :goto_2

    .line 229
    .end local v0           #clbits:I
    :sswitch_4
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v8, v8, p1

    const/16 v9, 0xf

    iput v9, v8, Lcom/b2bstudio/digger/bag;->wt:I

    .line 230
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v8, v8, p1

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/b2bstudio/digger/bag;->wobbling:Z

    .line 231
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v8, v8, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9, v6, v7}, Lcom/b2bstudio/digger/draw;->drawgold(IIII)I

    move-result v0

    .line 232
    .restart local v0       #clbits:I
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v8, v8, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v8}, Lcom/b2bstudio/digger/construct;->incpenalty()V

    .line 233
    const/4 v8, 0x1

    iput v8, p0, Lcom/b2bstudio/digger/bags;->pushcount:I

    .line 234
    and-int/lit16 v8, v0, 0xfe

    if-eqz v8, :cond_e

    .line 235
    invoke-virtual {p0, p2, v0}, Lcom/b2bstudio/digger/bags;->pushbags(II)Z

    move-result v8

    if-nez v8, :cond_e

    .line 236
    move v6, v2

    .line 237
    move v7, v3

    .line 238
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v8, v8, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9, v2, v3}, Lcom/b2bstudio/digger/draw;->drawgold(IIII)I

    .line 239
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v8, v8, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v8}, Lcom/b2bstudio/digger/construct;->incpenalty()V

    .line 240
    const/4 v4, 0x0

    .line 242
    :cond_e
    and-int/lit8 v8, v0, 0x1

    if-nez v8, :cond_f

    and-int/lit16 v8, v0, 0x3f00

    if-eqz v8, :cond_a

    .line 243
    :cond_f
    move v6, v2

    .line 244
    move v7, v3

    .line 245
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v8, v8, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9, v2, v3}, Lcom/b2bstudio/digger/draw;->drawgold(IIII)I

    .line 246
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v8, v8, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v8}, Lcom/b2bstudio/digger/construct;->incpenalty()V

    .line 247
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 253
    .end local v0           #clbits:I
    :cond_10
    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v8, v8, p1

    iget-object v9, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    invoke-virtual {v9, p2}, Lcom/b2bstudio/digger/main;->reversedir(I)I

    move-result v9

    iput v9, v8, Lcom/b2bstudio/digger/bag;->dir:I

    goto/16 :goto_3

    .line 197
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch

    .line 218
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x4 -> :sswitch_4
        0x6 -> :sswitch_3
    .end sparse-switch
.end method

.method pushbags(II)Z
    .locals 4
    .parameter "dir"
    .parameter "bits"

    .prologue
    .line 266
    const/4 v2, 0x1

    .line 267
    .local v2, push:Z
    const/4 v0, 0x1

    .local v0, bag:I
    const/4 v1, 0x2

    .local v1, bit:I
    :goto_0
    const/16 v3, 0x8

    if-lt v0, v3, :cond_0

    .line 271
    return v2

    .line 268
    :cond_0
    and-int v3, p2, v1

    if-eqz v3, :cond_1

    .line 269
    invoke-virtual {p0, v0, p1}, Lcom/b2bstudio/digger/bags;->pushbag(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 270
    const/4 v2, 0x0

    .line 267
    :cond_1
    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method pushudbags(I)Z
    .locals 4
    .parameter "bits"

    .prologue
    .line 275
    const/4 v2, 0x1

    .line 276
    .local v2, push:Z
    const/4 v1, 0x1

    .local v1, bag:I
    const/4 v0, 0x2

    .local v0, b:I
    :goto_0
    const/16 v3, 0x8

    if-lt v1, v3, :cond_0

    .line 282
    return v2

    .line 277
    :cond_0
    and-int v3, p1, v0

    if-eqz v3, :cond_1

    .line 278
    iget-object v3, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/b2bstudio/digger/bag;->gt:I

    if-eqz v3, :cond_2

    .line 279
    invoke-virtual {p0, v1}, Lcom/b2bstudio/digger/bags;->getgold(I)V

    .line 276
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method removebag(I)V
    .locals 3
    .parameter "bag"

    .prologue
    const/4 v2, 0x1

    .line 285
    iget-object v0, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/b2bstudio/digger/bag;->exist:Z

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/b2bstudio/digger/bag;->exist:Z

    .line 287
    iget-object v0, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    sub-int v1, p1, v2

    invoke-virtual {v0, v1}, Lcom/b2bstudio/digger/main;->removegold(I)V

    .line 288
    iget-object v0, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    sub-int v1, p1, v2

    invoke-virtual {v0, v1}, Lcom/b2bstudio/digger/main;->removebag(I)V

    .line 289
    iget-object v0, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    invoke-virtual {v0, p1}, Lcom/b2bstudio/digger/sprite;->erasespr(I)V

    .line 291
    :cond_0
    return-void
.end method

.method removebags(I)V
    .locals 3
    .parameter "bits"

    .prologue
    .line 294
    const/4 v1, 0x1

    .local v1, bag:I
    const/4 v0, 0x2

    .local v0, b:I
    :goto_0
    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 297
    return-void

    .line 295
    :cond_0
    iget-object v2, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcom/b2bstudio/digger/bag;->exist:Z

    if-eqz v2, :cond_1

    and-int v2, p1, v0

    if-eqz v2, :cond_1

    .line 296
    invoke-virtual {p0, v1}, Lcom/b2bstudio/digger/bags;->removebag(I)V

    .line 294
    :cond_1
    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method updatebag(I)V
    .locals 14
    .parameter "bag"

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0xfdf

    const/16 v9, 0xb4

    const/4 v11, 0x6

    const/4 v10, 0x1

    .line 300
    iget-object v7, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v7, v7, p1

    iget v3, v7, Lcom/b2bstudio/digger/bag;->x:I

    .line 301
    .local v3, x:I
    iget-object v7, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v7, v7, p1

    iget v0, v7, Lcom/b2bstudio/digger/bag;->h:I

    .line 302
    .local v0, h:I
    iget-object v7, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v7, v7, p1

    iget v4, v7, Lcom/b2bstudio/digger/bag;->xr:I

    .line 303
    .local v4, xr:I
    iget-object v7, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v7, v7, p1

    iget v5, v7, Lcom/b2bstudio/digger/bag;->y:I

    .line 304
    .local v5, y:I
    iget-object v7, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v7, v7, p1

    iget v1, v7, Lcom/b2bstudio/digger/bag;->v:I

    .line 305
    .local v1, v:I
    iget-object v7, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v7, v7, p1

    iget v6, v7, Lcom/b2bstudio/digger/bag;->yr:I

    .line 306
    .local v6, yr:I
    iget-object v7, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v7, v7, p1

    iget v7, v7, Lcom/b2bstudio/digger/bag;->dir:I

    packed-switch v7, :pswitch_data_0

    .line 352
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v7, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v7, v7, p1

    iget v7, v7, Lcom/b2bstudio/digger/bag;->dir:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 353
    iget-object v7, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v7, v7, p1

    iget v7, v7, Lcom/b2bstudio/digger/bag;->dir:I

    if-eq v7, v11, :cond_9

    iget v7, p0, Lcom/b2bstudio/digger/bags;->pushcount:I

    if-eqz v7, :cond_9

    .line 354
    iget v7, p0, Lcom/b2bstudio/digger/bags;->pushcount:I

    sub-int/2addr v7, v10

    iput v7, p0, Lcom/b2bstudio/digger/bags;->pushcount:I

    .line 357
    :cond_1
    :goto_1
    return-void

    .line 308
    :pswitch_1
    if-ge v5, v9, :cond_4

    if-nez v4, :cond_4

    .line 309
    iget-object v7, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v7, v7, p1

    iget-boolean v7, v7, Lcom/b2bstudio/digger/bag;->wobbling:Z

    if-eqz v7, :cond_3

    .line 310
    iget-object v7, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v7, v7, p1

    iget v7, v7, Lcom/b2bstudio/digger/bag;->wt:I

    if-nez v7, :cond_2

    .line 311
    iget-object v7, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v7, v7, p1

    iput v11, v7, Lcom/b2bstudio/digger/bag;->dir:I

    goto :goto_0

    .line 314
    :cond_2
    iget-object v7, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v7, v7, p1

    iget v8, v7, Lcom/b2bstudio/digger/bag;->wt:I

    sub-int/2addr v8, v10

    iput v8, v7, Lcom/b2bstudio/digger/bag;->wt:I

    .line 315
    iget-object v7, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v7, v7, p1

    iget v7, v7, Lcom/b2bstudio/digger/bag;->wt:I

    rem-int/lit8 v2, v7, 0x8

    .line 316
    .local v2, wbl:I
    and-int/lit8 v7, v2, 0x1

    if-nez v7, :cond_0

    .line 317
    iget-object v7, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v7, v7, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->wblanim:[I

    shr-int/lit8 v9, v2, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, p1, v8, v3, v5}, Lcom/b2bstudio/digger/draw;->drawgold(IIII)I

    .line 318
    iget-object v7, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v7, v7, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v7}, Lcom/b2bstudio/digger/construct;->incpenalty()V

    goto :goto_0

    .line 322
    .end local v2           #wbl:I
    :cond_3
    iget-object v7, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v7, v7, Lcom/b2bstudio/digger/main;->monster:Lcom/b2bstudio/digger/monster;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v0, v8}, Lcom/b2bstudio/digger/monster;->getfield(II)I

    move-result v7

    and-int/lit16 v7, v7, 0xfdf

    if-eq v7, v12, :cond_0

    .line 323
    iget-object v7, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v0, v8}, Lcom/b2bstudio/digger/main;->checkdiggerunderbag(II)Z

    move-result v7

    if-nez v7, :cond_0

    .line 324
    iget-object v7, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v7, v7, p1

    iput-boolean v10, v7, Lcom/b2bstudio/digger/bag;->wobbling:Z

    goto :goto_0

    .line 327
    :cond_4
    iget-object v7, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v7, v7, p1

    const/16 v8, 0xf

    iput v8, v7, Lcom/b2bstudio/digger/bag;->wt:I

    .line 328
    iget-object v7, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v7, v7, p1

    iput-boolean v13, v7, Lcom/b2bstudio/digger/bag;->wobbling:Z

    goto/16 :goto_0

    .line 333
    :pswitch_2
    if-nez v4, :cond_0

    .line 334
    if-ge v5, v9, :cond_5

    iget-object v7, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v7, v7, Lcom/b2bstudio/digger/main;->monster:Lcom/b2bstudio/digger/monster;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v0, v8}, Lcom/b2bstudio/digger/monster;->getfield(II)I

    move-result v7

    and-int/lit16 v7, v7, 0xfdf

    if-eq v7, v12, :cond_5

    .line 335
    iget-object v7, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v7, v7, p1

    iput v11, v7, Lcom/b2bstudio/digger/bag;->dir:I

    .line 336
    iget-object v7, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v7, v7, p1

    iput v13, v7, Lcom/b2bstudio/digger/bag;->wt:I

    goto/16 :goto_0

    .line 339
    :cond_5
    invoke-virtual {p0, p1}, Lcom/b2bstudio/digger/bags;->baghitground(I)V

    goto/16 :goto_0

    .line 342
    :pswitch_3
    if-nez v6, :cond_6

    .line 343
    iget-object v7, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v7, v7, p1

    iget v8, v7, Lcom/b2bstudio/digger/bag;->fallh:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/b2bstudio/digger/bag;->fallh:I

    .line 344
    :cond_6
    if-lt v5, v9, :cond_8

    .line 345
    invoke-virtual {p0, p1}, Lcom/b2bstudio/digger/bags;->baghitground(I)V

    .line 350
    :cond_7
    :goto_2
    iget-object v7, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v7, v7, Lcom/b2bstudio/digger/main;->monster:Lcom/b2bstudio/digger/monster;

    iget-object v8, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v8, v8, p1

    iget v8, v8, Lcom/b2bstudio/digger/bag;->h:I

    invoke-virtual {v7, v8}, Lcom/b2bstudio/digger/monster;->checkmonscared(I)V

    goto/16 :goto_0

    .line 347
    :cond_8
    iget-object v7, p0, Lcom/b2bstudio/digger/bags;->dig:Lcom/b2bstudio/digger/main;

    iget-object v7, v7, Lcom/b2bstudio/digger/main;->monster:Lcom/b2bstudio/digger/monster;

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v0, v8}, Lcom/b2bstudio/digger/monster;->getfield(II)I

    move-result v7

    and-int/lit16 v7, v7, 0xfdf

    if-ne v7, v12, :cond_7

    .line 348
    if-nez v6, :cond_7

    .line 349
    invoke-virtual {p0, p1}, Lcom/b2bstudio/digger/bags;->baghitground(I)V

    goto :goto_2

    .line 356
    :cond_9
    iget-object v7, p0, Lcom/b2bstudio/digger/bags;->bagdat:[Lcom/b2bstudio/digger/bag;

    aget-object v7, v7, p1

    iget v7, v7, Lcom/b2bstudio/digger/bag;->dir:I

    invoke-virtual {p0, p1, v7}, Lcom/b2bstudio/digger/bags;->pushbag(II)Z

    goto/16 :goto_1

    .line 306
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
