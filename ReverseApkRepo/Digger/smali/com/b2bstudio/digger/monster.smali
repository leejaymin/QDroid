.class Lcom/b2bstudio/digger/monster;
.super Ljava/lang/Object;
.source "monster.java"


# instance fields
.field dig:Lcom/b2bstudio/digger/main;

.field maxmononscr:I

.field mondat:[Lcom/b2bstudio/digger/killer;

.field mongaptime:I

.field mongotgold:Z

.field nextmonster:I

.field nextmontime:I

.field totalmonsters:I

.field unbonusflag:Z


# direct methods
.method constructor <init>(Lcom/b2bstudio/digger/main;)V
    .locals 4
    .parameter "d"

    .prologue
    const/4 v3, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/b2bstudio/digger/killer;

    new-instance v1, Lcom/b2bstudio/digger/killer;

    invoke-direct {v1}, Lcom/b2bstudio/digger/killer;-><init>()V

    aput-object v1, v0, v3

    const/4 v1, 0x1

    new-instance v2, Lcom/b2bstudio/digger/killer;

    invoke-direct {v2}, Lcom/b2bstudio/digger/killer;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/b2bstudio/digger/killer;

    invoke-direct {v2}, Lcom/b2bstudio/digger/killer;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/b2bstudio/digger/killer;

    invoke-direct {v2}, Lcom/b2bstudio/digger/killer;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/b2bstudio/digger/killer;

    invoke-direct {v2}, Lcom/b2bstudio/digger/killer;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/b2bstudio/digger/killer;

    invoke-direct {v2}, Lcom/b2bstudio/digger/killer;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    .line 10
    iput v3, p0, Lcom/b2bstudio/digger/monster;->nextmonster:I

    iput v3, p0, Lcom/b2bstudio/digger/monster;->totalmonsters:I

    iput v3, p0, Lcom/b2bstudio/digger/monster;->maxmononscr:I

    iput v3, p0, Lcom/b2bstudio/digger/monster;->nextmontime:I

    iput v3, p0, Lcom/b2bstudio/digger/monster;->mongaptime:I

    .line 12
    iput-boolean v3, p0, Lcom/b2bstudio/digger/monster;->unbonusflag:Z

    iput-boolean v3, p0, Lcom/b2bstudio/digger/monster;->mongotgold:Z

    .line 15
    iput-object p1, p0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    .line 16
    return-void
.end method


# virtual methods
.method checkcoincide(II)V
    .locals 5
    .parameter "mon"
    .parameter "bits"

    .prologue
    .line 19
    const/4 v1, 0x0

    .local v1, m:I
    const/16 v0, 0x100

    .local v0, b:I
    :goto_0
    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    .line 22
    return-void

    .line 20
    :cond_0
    and-int v2, p2, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/b2bstudio/digger/killer;->dir:I

    iget-object v3, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/b2bstudio/digger/killer;->dir:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/b2bstudio/digger/killer;->stime:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/b2bstudio/digger/killer;->stime:I

    if-nez v2, :cond_1

    .line 21
    iget-object v2, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    iget-object v4, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/b2bstudio/digger/killer;->dir:I

    invoke-virtual {v3, v4}, Lcom/b2bstudio/digger/main;->reversedir(I)I

    move-result v3

    iput v3, v2, Lcom/b2bstudio/digger/killer;->dir:I

    .line 19
    :cond_1
    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method checkmonscared(I)V
    .locals 4
    .parameter "h"

    .prologue
    const/4 v3, 0x6

    .line 25
    const/4 v0, 0x0

    .local v0, m:I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 28
    return-void

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/b2bstudio/digger/killer;->h:I

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/b2bstudio/digger/killer;->dir:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 27
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, v0

    iput v3, v1, Lcom/b2bstudio/digger/killer;->dir:I

    .line 25
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method createmonster()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 31
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 52
    :goto_1
    return-void

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/b2bstudio/digger/killer;->flag:Z

    if-nez v1, :cond_1

    .line 33
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, v0

    iput-boolean v2, v1, Lcom/b2bstudio/digger/killer;->flag:Z

    .line 34
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, v0

    iput-boolean v2, v1, Lcom/b2bstudio/digger/killer;->alive:Z

    .line 35
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, v0

    iput v3, v1, Lcom/b2bstudio/digger/killer;->t:I

    .line 36
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, v0

    iput-boolean v2, v1, Lcom/b2bstudio/digger/killer;->nob:Z

    .line 37
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, v0

    iput v3, v1, Lcom/b2bstudio/digger/killer;->hnt:I

    .line 38
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, v0

    const/16 v2, 0xe

    iput v2, v1, Lcom/b2bstudio/digger/killer;->h:I

    .line 39
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, v0

    iput v3, v1, Lcom/b2bstudio/digger/killer;->v:I

    .line 40
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, v0

    const/16 v2, 0x124

    iput v2, v1, Lcom/b2bstudio/digger/killer;->x:I

    .line 41
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, v0

    const/16 v2, 0x12

    iput v2, v1, Lcom/b2bstudio/digger/killer;->y:I

    .line 42
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, v0

    iput v3, v1, Lcom/b2bstudio/digger/killer;->xr:I

    .line 43
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, v0

    iput v3, v1, Lcom/b2bstudio/digger/killer;->yr:I

    .line 44
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, v0

    iput v4, v1, Lcom/b2bstudio/digger/killer;->dir:I

    .line 45
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, v0

    iput v4, v1, Lcom/b2bstudio/digger/killer;->hdir:I

    .line 46
    iget v1, p0, Lcom/b2bstudio/digger/monster;->nextmonster:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b2bstudio/digger/monster;->nextmonster:I

    .line 47
    iget v1, p0, Lcom/b2bstudio/digger/monster;->mongaptime:I

    iput v1, p0, Lcom/b2bstudio/digger/monster;->nextmontime:I

    .line 48
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, v0

    const/4 v2, 0x5

    iput v2, v1, Lcom/b2bstudio/digger/killer;->stime:I

    .line 49
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    iget-object v1, v1, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    add-int/lit8 v2, v0, 0x8

    iget-object v3, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/b2bstudio/digger/killer;->x:I

    iget-object v4, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/b2bstudio/digger/killer;->y:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/b2bstudio/digger/sprite;->movedrawspr(III)I

    goto/16 :goto_1

    .line 31
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method domonsters()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 55
    iget v1, p0, Lcom/b2bstudio/digger/monster;->nextmontime:I

    if-lez v1, :cond_1

    .line 56
    iget v1, p0, Lcom/b2bstudio/digger/monster;->nextmontime:I

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/b2bstudio/digger/monster;->nextmontime:I

    .line 67
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v1, 0x6

    if-lt v0, v1, :cond_3

    .line 87
    return-void

    .line 58
    .end local v0           #i:I
    :cond_1
    iget v1, p0, Lcom/b2bstudio/digger/monster;->nextmonster:I

    iget v2, p0, Lcom/b2bstudio/digger/monster;->totalmonsters:I

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/b2bstudio/digger/monster;->nmononscr()I

    move-result v1

    iget v2, p0, Lcom/b2bstudio/digger/monster;->maxmononscr:I

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    iget-boolean v1, v1, Lcom/b2bstudio/digger/main;->digonscr:Z

    if-eqz v1, :cond_2

    .line 59
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    iget-boolean v1, v1, Lcom/b2bstudio/digger/main;->bonusmode:Z

    if-nez v1, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/b2bstudio/digger/monster;->createmonster()V

    .line 61
    :cond_2
    iget-boolean v1, p0, Lcom/b2bstudio/digger/monster;->unbonusflag:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/b2bstudio/digger/monster;->nextmonster:I

    iget v2, p0, Lcom/b2bstudio/digger/monster;->totalmonsters:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/b2bstudio/digger/monster;->nextmontime:I

    if-nez v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    iget-boolean v1, v1, Lcom/b2bstudio/digger/main;->digonscr:Z

    if-eqz v1, :cond_0

    .line 63
    iput-boolean v4, p0, Lcom/b2bstudio/digger/monster;->unbonusflag:Z

    .line 64
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    invoke-virtual {v1}, Lcom/b2bstudio/digger/main;->createbonus()V

    goto :goto_0

    .line 68
    .restart local v0       #i:I
    :cond_3
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/b2bstudio/digger/killer;->flag:Z

    if-eqz v1, :cond_5

    .line 69
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/b2bstudio/digger/killer;->hnt:I

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    iget-object v3, v3, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v3}, Lcom/b2bstudio/digger/construct;->levof10()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_4

    .line 70
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/b2bstudio/digger/killer;->nob:Z

    if-eqz v1, :cond_4

    .line 71
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, v0

    iput-boolean v4, v1, Lcom/b2bstudio/digger/killer;->nob:Z

    .line 72
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, v0

    iput v4, v1, Lcom/b2bstudio/digger/killer;->hnt:I

    .line 75
    :cond_4
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/b2bstudio/digger/killer;->alive:Z

    if-eqz v1, :cond_7

    .line 76
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/b2bstudio/digger/killer;->t:I

    if-nez v1, :cond_6

    .line 77
    invoke-virtual {p0, v0}, Lcom/b2bstudio/digger/monster;->monai(I)V

    .line 78
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    iget-object v1, v1, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    const/16 v2, 0xf

    iget-object v3, p0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    iget-object v3, v3, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v3}, Lcom/b2bstudio/digger/construct;->levof10()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/b2bstudio/digger/construct;->randno(I)I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/b2bstudio/digger/killer;->nob:Z

    if-eqz v1, :cond_5

    .line 79
    invoke-virtual {p0, v0}, Lcom/b2bstudio/digger/monster;->monai(I)V

    .line 67
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 82
    :cond_6
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, v0

    iget v2, v1, Lcom/b2bstudio/digger/killer;->t:I

    sub-int/2addr v2, v5

    iput v2, v1, Lcom/b2bstudio/digger/killer;->t:I

    goto :goto_2

    .line 84
    :cond_7
    invoke-virtual {p0, v0}, Lcom/b2bstudio/digger/monster;->mondie(I)V

    goto :goto_2
.end method

.method erasemonsters()V
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 93
    return-void

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/b2bstudio/digger/killer;->flag:Z

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    iget-object v1, v1, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    add-int/lit8 v2, v0, 0x8

    invoke-virtual {v1, v2}, Lcom/b2bstudio/digger/sprite;->erasespr(I)V

    .line 90
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method fieldclear(III)Z
    .locals 2
    .parameter "dir"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x1

    .line 95
    packed-switch p1, :pswitch_data_0

    .line 120
    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 97
    :pswitch_1
    const/16 v0, 0xe

    if-ge p2, v0, :cond_0

    .line 98
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v0, p3}, Lcom/b2bstudio/digger/monster;->getfield(II)I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_0

    .line 99
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v0, p3}, Lcom/b2bstudio/digger/monster;->getfield(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2, p3}, Lcom/b2bstudio/digger/monster;->getfield(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    :cond_1
    move v0, v1

    .line 100
    goto :goto_0

    .line 103
    :pswitch_2
    if-lez p2, :cond_0

    .line 104
    sub-int v0, p2, v1

    invoke-virtual {p0, v0, p3}, Lcom/b2bstudio/digger/monster;->getfield(II)I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_0

    .line 105
    sub-int v0, p2, v1

    invoke-virtual {p0, v0, p3}, Lcom/b2bstudio/digger/monster;->getfield(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2, p3}, Lcom/b2bstudio/digger/monster;->getfield(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    :cond_2
    move v0, v1

    .line 106
    goto :goto_0

    .line 109
    :pswitch_3
    if-lez p3, :cond_0

    .line 110
    sub-int v0, p3, v1

    invoke-virtual {p0, p2, v0}, Lcom/b2bstudio/digger/monster;->getfield(II)I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_0

    .line 111
    sub-int v0, p3, v1

    invoke-virtual {p0, p2, v0}, Lcom/b2bstudio/digger/monster;->getfield(II)I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2, p3}, Lcom/b2bstudio/digger/monster;->getfield(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    :cond_3
    move v0, v1

    .line 112
    goto :goto_0

    .line 115
    :pswitch_4
    const/16 v0, 0x9

    if-ge p3, v0, :cond_0

    .line 116
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/b2bstudio/digger/monster;->getfield(II)I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_0

    .line 117
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/b2bstudio/digger/monster;->getfield(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_4

    invoke-virtual {p0, p2, p3}, Lcom/b2bstudio/digger/monster;->getfield(II)I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_0

    :cond_4
    move v0, v1

    .line 118
    goto/16 :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method getfield(II)I
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    iget-object v0, v0, Lcom/b2bstudio/digger/draw;->field:[I

    mul-int/lit8 v1, p2, 0xf

    add-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method incmont(I)V
    .locals 3
    .parameter "n"

    .prologue
    .line 127
    const/4 v1, 0x6

    if-le p1, v1, :cond_0

    .line 128
    const/4 p1, 0x6

    .line 129
    :cond_0
    const/4 v0, 0x1

    .local v0, m:I
    :goto_0
    if-lt v0, p1, :cond_1

    .line 131
    return-void

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, v0

    iget v2, v1, Lcom/b2bstudio/digger/killer;->t:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/b2bstudio/digger/killer;->t:I

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method incpenalties(I)V
    .locals 3
    .parameter "bits"

    .prologue
    .line 134
    const/4 v1, 0x0

    .local v1, m:I
    const/16 v0, 0x100

    .local v0, b:I
    :goto_0
    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    .line 139
    return-void

    .line 135
    :cond_0
    and-int v2, p1, v0

    if-eqz v2, :cond_1

    .line 136
    iget-object v2, p0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    iget-object v2, v2, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v2}, Lcom/b2bstudio/digger/construct;->incpenalty()V

    .line 137
    :cond_1
    shl-int/lit8 v0, v0, 0x1

    .line 134
    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method initmonsters()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 142
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 144
    iput v2, p0, Lcom/b2bstudio/digger/monster;->nextmonster:I

    .line 145
    const/16 v1, 0x2d

    iget-object v2, p0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    iget-object v2, v2, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v2}, Lcom/b2bstudio/digger/construct;->levof10()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/b2bstudio/digger/monster;->mongaptime:I

    .line 146
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    iget-object v1, v1, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v1}, Lcom/b2bstudio/digger/construct;->levof10()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Lcom/b2bstudio/digger/monster;->totalmonsters:I

    .line 147
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    iget-object v1, v1, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v1}, Lcom/b2bstudio/digger/construct;->levof10()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 164
    :goto_1
    const/16 v1, 0xa

    iput v1, p0, Lcom/b2bstudio/digger/monster;->nextmontime:I

    .line 165
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/b2bstudio/digger/monster;->unbonusflag:Z

    .line 166
    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, v0

    iput-boolean v2, v1, Lcom/b2bstudio/digger/killer;->flag:Z

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :pswitch_0
    const/4 v1, 0x3

    iput v1, p0, Lcom/b2bstudio/digger/monster;->maxmononscr:I

    goto :goto_1

    .line 157
    :pswitch_1
    const/4 v1, 0x4

    iput v1, p0, Lcom/b2bstudio/digger/monster;->maxmononscr:I

    goto :goto_1

    .line 162
    :pswitch_2
    const/4 v1, 0x5

    iput v1, p0, Lcom/b2bstudio/digger/monster;->maxmononscr:I

    goto :goto_1

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method killmon(I)V
    .locals 3
    .parameter "mon"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/b2bstudio/digger/killer;->flag:Z

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/b2bstudio/digger/killer;->alive:Z

    iput-boolean v2, v0, Lcom/b2bstudio/digger/killer;->flag:Z

    .line 170
    iget-object v0, p0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    invoke-virtual {v0, p1}, Lcom/b2bstudio/digger/main;->killmon(I)V

    .line 171
    iget-object v0, p0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    add-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Lcom/b2bstudio/digger/sprite;->erasespr(I)V

    .line 172
    iget-object v0, p0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    iget-boolean v0, v0, Lcom/b2bstudio/digger/main;->bonusmode:Z

    if-eqz v0, :cond_0

    .line 173
    iget v0, p0, Lcom/b2bstudio/digger/monster;->totalmonsters:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b2bstudio/digger/monster;->totalmonsters:I

    .line 175
    :cond_0
    return-void
.end method

.method killmonsters(I)I
    .locals 4
    .parameter "bits"

    .prologue
    .line 177
    const/4 v2, 0x0

    .line 178
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, m:I
    const/16 v0, 0x100

    .local v0, b:I
    :goto_0
    const/4 v3, 0x6

    if-lt v1, v3, :cond_0

    .line 183
    return v2

    .line 179
    :cond_0
    and-int v3, p1, v0

    if-eqz v3, :cond_1

    .line 180
    invoke-virtual {p0, v1}, Lcom/b2bstudio/digger/monster;->killmon(I)V

    .line 181
    add-int/lit8 v2, v2, 0x1

    .line 178
    :cond_1
    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method monai(I)V
    .locals 20
    .parameter "mon"

    .prologue
    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    move-object v0, v4

    iget v0, v0, Lcom/b2bstudio/digger/killer;->x:I

    move/from16 v16, v0

    .line 189
    .local v16, monox:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    move-object v0, v4

    iget v0, v0, Lcom/b2bstudio/digger/killer;->y:I

    move/from16 v17, v0

    .line 190
    .local v17, monoy:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v4, v4, Lcom/b2bstudio/digger/killer;->xr:I

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v4, v4, Lcom/b2bstudio/digger/killer;->yr:I

    if-nez v4, :cond_9

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v4, v4, Lcom/b2bstudio/digger/killer;->hnt:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v5, v0

    iget-object v5, v5, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v5}, Lcom/b2bstudio/digger/construct;->levof10()I

    move-result v5

    shl-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1e

    if-le v4, v5, :cond_0

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget-boolean v4, v4, Lcom/b2bstudio/digger/killer;->nob:Z

    if-nez v4, :cond_0

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    const/4 v5, 0x0

    iput v5, v4, Lcom/b2bstudio/digger/killer;->hnt:I

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/b2bstudio/digger/killer;->nob:Z

    .line 197
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    iget v4, v4, Lcom/b2bstudio/digger/main;->diggery:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget v5, v5, Lcom/b2bstudio/digger/killer;->y:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v5, v0

    iget v5, v5, Lcom/b2bstudio/digger/main;->diggerx:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v6, v0

    aget-object v6, v6, p1

    iget v6, v6, Lcom/b2bstudio/digger/killer;->x:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v4, v5, :cond_22

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    iget v4, v4, Lcom/b2bstudio/digger/main;->diggery:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget v5, v5, Lcom/b2bstudio/digger/killer;->y:I

    if-ge v4, v5, :cond_20

    const/4 v12, 0x2

    .local v12, mdirp1:I
    const/4 v15, 0x6

    .line 200
    .local v15, mdirp4:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    iget v4, v4, Lcom/b2bstudio/digger/main;->diggerx:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget v5, v5, Lcom/b2bstudio/digger/killer;->x:I

    if-ge v4, v5, :cond_21

    const/4 v13, 0x4

    .local v13, mdirp2:I
    const/4 v14, 0x0

    .line 211
    .local v14, mdirp3:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/b2bstudio/digger/main;->bonusmode:Z

    if-eqz v4, :cond_1

    .line 212
    move/from16 v19, v12

    .local v19, t:I
    move v12, v15

    move/from16 v15, v19

    .line 213
    move/from16 v19, v13

    move v13, v14

    move/from16 v14, v19

    .line 216
    .end local v19           #t:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget v5, v5, Lcom/b2bstudio/digger/killer;->dir:I

    invoke-virtual {v4, v5}, Lcom/b2bstudio/digger/main;->reversedir(I)I

    move-result v11

    .line 217
    .local v11, dir:I
    if-ne v11, v12, :cond_2

    .line 218
    move v12, v13

    .line 219
    move v13, v14

    .line 220
    move v14, v15

    .line 221
    move v15, v11

    .line 223
    :cond_2
    if-ne v11, v13, :cond_3

    .line 224
    move v13, v14

    .line 225
    move v14, v15

    .line 226
    move v15, v11

    .line 228
    :cond_3
    if-ne v11, v14, :cond_4

    .line 229
    move v14, v15

    .line 230
    move v15, v11

    .line 233
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    iget-object v4, v4, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v5, v0

    iget-object v5, v5, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v5}, Lcom/b2bstudio/digger/construct;->levof10()I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    invoke-virtual {v4, v5}, Lcom/b2bstudio/digger/construct;->randno(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    iget-object v4, v4, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v4}, Lcom/b2bstudio/digger/construct;->levof10()I

    move-result v4

    const/4 v5, 0x6

    if-ge v4, v5, :cond_5

    .line 234
    move/from16 v19, v12

    .line 235
    .restart local v19       #t:I
    move v12, v14

    .line 236
    move/from16 v14, v19

    .line 239
    .end local v19           #t:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v4, v4, Lcom/b2bstudio/digger/killer;->h:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget v5, v5, Lcom/b2bstudio/digger/killer;->v:I

    move-object/from16 v0, p0

    move v1, v12

    move v2, v4

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/b2bstudio/digger/monster;->fieldclear(III)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 240
    move v11, v12

    .line 251
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget-boolean v4, v4, Lcom/b2bstudio/digger/killer;->nob:Z

    if-nez v4, :cond_7

    .line 252
    move v11, v12

    .line 254
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v4, v4, Lcom/b2bstudio/digger/killer;->dir:I

    if-eq v4, v11, :cond_8

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v5, v4, Lcom/b2bstudio/digger/killer;->t:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/b2bstudio/digger/killer;->t:I

    .line 257
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iput v11, v4, Lcom/b2bstudio/digger/killer;->dir:I

    .line 260
    .end local v11           #dir:I
    .end local v12           #mdirp1:I
    .end local v13           #mdirp2:I
    .end local v14           #mdirp3:I
    .end local v15           #mdirp4:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v4, v4, Lcom/b2bstudio/digger/killer;->x:I

    const/16 v5, 0x124

    if-ne v4, v5, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v4, v4, Lcom/b2bstudio/digger/killer;->dir:I

    if-eqz v4, :cond_d

    .line 261
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v4, v4, Lcom/b2bstudio/digger/killer;->x:I

    const/16 v5, 0xc

    if-ne v4, v5, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v4, v4, Lcom/b2bstudio/digger/killer;->dir:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_d

    .line 262
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v4, v4, Lcom/b2bstudio/digger/killer;->y:I

    const/16 v5, 0xb4

    if-ne v4, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v4, v4, Lcom/b2bstudio/digger/killer;->dir:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_d

    .line 263
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v4, v4, Lcom/b2bstudio/digger/killer;->y:I

    const/16 v5, 0x12

    if-ne v4, v5, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v4, v4, Lcom/b2bstudio/digger/killer;->dir:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_e

    .line 264
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    const/4 v5, -0x1

    iput v5, v4, Lcom/b2bstudio/digger/killer;->dir:I

    .line 266
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v4, v4, Lcom/b2bstudio/digger/killer;->dir:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v4, v4, Lcom/b2bstudio/digger/killer;->dir:I

    if-nez v4, :cond_10

    .line 267
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget v5, v5, Lcom/b2bstudio/digger/killer;->dir:I

    iput v5, v4, Lcom/b2bstudio/digger/killer;->hdir:I

    .line 269
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget-boolean v4, v4, Lcom/b2bstudio/digger/killer;->nob:Z

    if-nez v4, :cond_11

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    iget-object v4, v4, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget v5, v5, Lcom/b2bstudio/digger/killer;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v6, v0

    aget-object v6, v6, p1

    iget v6, v6, Lcom/b2bstudio/digger/killer;->y:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v7, v0

    aget-object v7, v7, p1

    iget v7, v7, Lcom/b2bstudio/digger/killer;->dir:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/b2bstudio/digger/draw;->eatfield(III)V

    .line 272
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v4, v4, Lcom/b2bstudio/digger/killer;->dir:I

    packed-switch v4, :pswitch_data_0

    .line 303
    :goto_3
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget-boolean v4, v4, Lcom/b2bstudio/digger/killer;->nob:Z

    if-nez v4, :cond_12

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget v5, v5, Lcom/b2bstudio/digger/killer;->x:I

    const/16 v6, 0xc

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v6, v0

    aget-object v6, v6, p1

    iget v6, v6, Lcom/b2bstudio/digger/killer;->y:I

    const/16 v7, 0x12

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v7, v0

    aget-object v7, v7, p1

    iget v7, v7, Lcom/b2bstudio/digger/killer;->x:I

    const/16 v8, 0xc

    sub-int/2addr v7, v8

    rem-int/lit8 v7, v7, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v8, v0

    aget-object v8, v8, p1

    iget v8, v8, Lcom/b2bstudio/digger/killer;->y:I

    const/16 v9, 0x12

    sub-int/2addr v8, v9

    rem-int/lit8 v8, v8, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v9, v0

    aget-object v9, v9, p1

    iget v9, v9, Lcom/b2bstudio/digger/killer;->dir:I

    invoke-virtual/range {v4 .. v9}, Lcom/b2bstudio/digger/main;->hitemerald(IIIII)Z

    .line 306
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/b2bstudio/digger/main;->digonscr:Z

    if-nez v4, :cond_13

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    move/from16 v0, v16

    move-object v1, v4

    iput v0, v1, Lcom/b2bstudio/digger/killer;->x:I

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    move/from16 v0, v17

    move-object v1, v4

    iput v0, v1, Lcom/b2bstudio/digger/killer;->y:I

    .line 311
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v4, v4, Lcom/b2bstudio/digger/killer;->stime:I

    if-eqz v4, :cond_14

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v5, v4, Lcom/b2bstudio/digger/killer;->stime:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/b2bstudio/digger/killer;->stime:I

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    move/from16 v0, v16

    move-object v1, v4

    iput v0, v1, Lcom/b2bstudio/digger/killer;->x:I

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    move/from16 v0, v17

    move-object v1, v4

    iput v0, v1, Lcom/b2bstudio/digger/killer;->y:I

    .line 317
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget-boolean v4, v4, Lcom/b2bstudio/digger/killer;->nob:Z

    if-nez v4, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v4, v4, Lcom/b2bstudio/digger/killer;->hnt:I

    const/16 v5, 0x64

    if-ge v4, v5, :cond_15

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v5, v4, Lcom/b2bstudio/digger/killer;->hnt:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/b2bstudio/digger/killer;->hnt:I

    .line 320
    :cond_15
    const/16 v18, 0x1

    .line 321
    .local v18, push:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    iget-object v4, v4, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget-boolean v6, v5, Lcom/b2bstudio/digger/killer;->nob:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget v7, v5, Lcom/b2bstudio/digger/killer;->hdir:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget v8, v5, Lcom/b2bstudio/digger/killer;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget v9, v5, Lcom/b2bstudio/digger/killer;->y:I

    move/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/b2bstudio/digger/draw;->drawmon(IZIII)I

    move-result v10

    .line 323
    .local v10, clbits:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    iget-object v4, v4, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v4}, Lcom/b2bstudio/digger/construct;->incpenalty()V

    .line 326
    and-int/lit16 v4, v10, 0x3f00

    if-eqz v4, :cond_16

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v5, v4, Lcom/b2bstudio/digger/killer;->t:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/b2bstudio/digger/killer;->t:I

    .line 328
    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/b2bstudio/digger/monster;->checkcoincide(II)V

    .line 329
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/b2bstudio/digger/monster;->incpenalties(I)V

    .line 332
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    iget-object v4, v4, Lcom/b2bstudio/digger/main;->bags:Lcom/b2bstudio/digger/bags;

    invoke-virtual {v4}, Lcom/b2bstudio/digger/bags;->bagbits()I

    move-result v4

    and-int/2addr v4, v10

    if-eqz v4, :cond_1a

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v5, v4, Lcom/b2bstudio/digger/killer;->t:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/b2bstudio/digger/killer;->t:I

    .line 334
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/b2bstudio/digger/monster;->mongotgold:Z

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v4, v4, Lcom/b2bstudio/digger/killer;->dir:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v4, v4, Lcom/b2bstudio/digger/killer;->dir:I

    if-nez v4, :cond_2c

    .line 336
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    iget-object v4, v4, Lcom/b2bstudio/digger/main;->bags:Lcom/b2bstudio/digger/bags;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget v5, v5, Lcom/b2bstudio/digger/killer;->dir:I

    invoke-virtual {v4, v5, v10}, Lcom/b2bstudio/digger/bags;->pushbags(II)Z

    move-result v18

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v5, v4, Lcom/b2bstudio/digger/killer;->t:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/b2bstudio/digger/killer;->t:I

    .line 342
    :cond_18
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/b2bstudio/digger/monster;->mongotgold:Z

    move v4, v0

    if-eqz v4, :cond_19

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    const/4 v5, 0x0

    iput v5, v4, Lcom/b2bstudio/digger/killer;->t:I

    .line 344
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget-boolean v4, v4, Lcom/b2bstudio/digger/killer;->nob:Z

    if-nez v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v4, v4, Lcom/b2bstudio/digger/killer;->hnt:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_1a

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    iget-object v4, v4, Lcom/b2bstudio/digger/main;->bags:Lcom/b2bstudio/digger/bags;

    invoke-virtual {v4, v10}, Lcom/b2bstudio/digger/bags;->removebags(I)V

    .line 348
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget-boolean v4, v4, Lcom/b2bstudio/digger/killer;->nob:Z

    if-eqz v4, :cond_1b

    and-int/lit16 v4, v10, 0x3f00

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/b2bstudio/digger/main;->digonscr:Z

    if-eqz v4, :cond_1b

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v5, v4, Lcom/b2bstudio/digger/killer;->hnt:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/b2bstudio/digger/killer;->hnt:I

    .line 352
    :cond_1b
    if-nez v18, :cond_1e

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    move/from16 v0, v16

    move-object v1, v4

    iput v0, v1, Lcom/b2bstudio/digger/killer;->x:I

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    move/from16 v0, v17

    move-object v1, v4

    iput v0, v1, Lcom/b2bstudio/digger/killer;->y:I

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    iget-object v4, v4, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget-boolean v6, v5, Lcom/b2bstudio/digger/killer;->nob:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget v7, v5, Lcom/b2bstudio/digger/killer;->hdir:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget v8, v5, Lcom/b2bstudio/digger/killer;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget v9, v5, Lcom/b2bstudio/digger/killer;->y:I

    move/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/b2bstudio/digger/draw;->drawmon(IZIII)I

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    iget-object v4, v4, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v4}, Lcom/b2bstudio/digger/construct;->incpenalty()V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget-boolean v4, v4, Lcom/b2bstudio/digger/killer;->nob:Z

    if-eqz v4, :cond_1c

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v5, v4, Lcom/b2bstudio/digger/killer;->hnt:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/b2bstudio/digger/killer;->hnt:I

    .line 359
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v4, v4, Lcom/b2bstudio/digger/killer;->dir:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v4, v4, Lcom/b2bstudio/digger/killer;->dir:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1e

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget-boolean v4, v4, Lcom/b2bstudio/digger/killer;->nob:Z

    if-eqz v4, :cond_1e

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v6, v0

    aget-object v6, v6, p1

    iget v6, v6, Lcom/b2bstudio/digger/killer;->dir:I

    invoke-virtual {v5, v6}, Lcom/b2bstudio/digger/main;->reversedir(I)I

    move-result v5

    iput v5, v4, Lcom/b2bstudio/digger/killer;->dir:I

    .line 363
    :cond_1e
    and-int/lit8 v4, v10, 0x1

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/b2bstudio/digger/main;->digonscr:Z

    if-eqz v4, :cond_1f

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/b2bstudio/digger/main;->bonusmode:Z

    if-eqz v4, :cond_2d

    .line 365
    invoke-virtual/range {p0 .. p1}, Lcom/b2bstudio/digger/monster;->killmon(I)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    iget-object v4, v4, Lcom/b2bstudio/digger/main;->score:Lcom/b2bstudio/digger/score;

    invoke-virtual {v4}, Lcom/b2bstudio/digger/score;->scoreeatm()V

    .line 371
    :cond_1f
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget v5, v5, Lcom/b2bstudio/digger/killer;->x:I

    const/16 v6, 0xc

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x14

    iput v5, v4, Lcom/b2bstudio/digger/killer;->h:I

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget v5, v5, Lcom/b2bstudio/digger/killer;->y:I

    const/16 v6, 0x12

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x12

    iput v5, v4, Lcom/b2bstudio/digger/killer;->v:I

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget v5, v5, Lcom/b2bstudio/digger/killer;->x:I

    const/16 v6, 0xc

    sub-int/2addr v5, v6

    rem-int/lit8 v5, v5, 0x14

    iput v5, v4, Lcom/b2bstudio/digger/killer;->xr:I

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget v5, v5, Lcom/b2bstudio/digger/killer;->y:I

    const/16 v6, 0x12

    sub-int/2addr v5, v6

    rem-int/lit8 v5, v5, 0x12

    iput v5, v4, Lcom/b2bstudio/digger/killer;->yr:I

    .line 375
    return-void

    .line 199
    .end local v10           #clbits:I
    .end local v18           #push:Z
    :cond_20
    const/4 v12, 0x6

    .restart local v12       #mdirp1:I
    const/4 v15, 0x2

    .restart local v15       #mdirp4:I
    goto/16 :goto_0

    .line 201
    :cond_21
    const/4 v13, 0x0

    .restart local v13       #mdirp2:I
    const/4 v14, 0x4

    .restart local v14       #mdirp3:I
    goto/16 :goto_1

    .line 204
    .end local v12           #mdirp1:I
    .end local v13           #mdirp2:I
    .end local v14           #mdirp3:I
    .end local v15           #mdirp4:I
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    iget v4, v4, Lcom/b2bstudio/digger/main;->diggerx:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget v5, v5, Lcom/b2bstudio/digger/killer;->x:I

    if-ge v4, v5, :cond_23

    const/4 v12, 0x4

    .restart local v12       #mdirp1:I
    const/4 v15, 0x0

    .line 206
    .restart local v15       #mdirp4:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    iget v4, v4, Lcom/b2bstudio/digger/main;->diggery:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget v5, v5, Lcom/b2bstudio/digger/killer;->y:I

    if-ge v4, v5, :cond_24

    const/4 v13, 0x2

    .restart local v13       #mdirp2:I
    const/4 v14, 0x6

    .restart local v14       #mdirp3:I
    goto/16 :goto_1

    .line 205
    .end local v12           #mdirp1:I
    .end local v13           #mdirp2:I
    .end local v14           #mdirp3:I
    .end local v15           #mdirp4:I
    :cond_23
    const/4 v12, 0x0

    .restart local v12       #mdirp1:I
    const/4 v15, 0x4

    .restart local v15       #mdirp4:I
    goto :goto_6

    .line 207
    :cond_24
    const/4 v13, 0x6

    .restart local v13       #mdirp2:I
    const/4 v14, 0x2

    .restart local v14       #mdirp3:I
    goto/16 :goto_1

    .line 242
    .restart local v11       #dir:I
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v4, v4, Lcom/b2bstudio/digger/killer;->h:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget v5, v5, Lcom/b2bstudio/digger/killer;->v:I

    move-object/from16 v0, p0

    move v1, v13

    move v2, v4

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/b2bstudio/digger/monster;->fieldclear(III)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 243
    move v11, v13

    goto/16 :goto_2

    .line 245
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v4, v4, Lcom/b2bstudio/digger/killer;->h:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget v5, v5, Lcom/b2bstudio/digger/killer;->v:I

    move-object/from16 v0, p0

    move v1, v14

    move v2, v4

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/b2bstudio/digger/monster;->fieldclear(III)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 246
    move v11, v14

    goto/16 :goto_2

    .line 248
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v4, v4, Lcom/b2bstudio/digger/killer;->h:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget v5, v5, Lcom/b2bstudio/digger/killer;->v:I

    move-object/from16 v0, p0

    move v1, v15

    move v2, v4

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/b2bstudio/digger/monster;->fieldclear(III)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 249
    move v11, v15

    goto/16 :goto_2

    .line 274
    .end local v11           #dir:I
    .end local v12           #mdirp1:I
    .end local v13           #mdirp2:I
    .end local v14           #mdirp3:I
    .end local v15           #mdirp4:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget-boolean v4, v4, Lcom/b2bstudio/digger/killer;->nob:Z

    if-nez v4, :cond_28

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    iget-object v4, v4, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget v5, v5, Lcom/b2bstudio/digger/killer;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v6, v0

    aget-object v6, v6, p1

    iget v6, v6, Lcom/b2bstudio/digger/killer;->y:I

    invoke-virtual {v4, v5, v6}, Lcom/b2bstudio/digger/draw;->drawrightblob(II)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget v5, v5, Lcom/b2bstudio/digger/killer;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v6, v0

    aget-object v6, v6, p1

    iget v6, v6, Lcom/b2bstudio/digger/killer;->y:I

    invoke-virtual {v4, v5, v6}, Lcom/b2bstudio/digger/main;->drawrightblob(II)V

    .line 278
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v5, v4, Lcom/b2bstudio/digger/killer;->x:I

    add-int/lit8 v5, v5, 0x4

    iput v5, v4, Lcom/b2bstudio/digger/killer;->x:I

    goto/16 :goto_3

    .line 281
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget-boolean v4, v4, Lcom/b2bstudio/digger/killer;->nob:Z

    if-nez v4, :cond_29

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    iget-object v4, v4, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget v5, v5, Lcom/b2bstudio/digger/killer;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v6, v0

    aget-object v6, v6, p1

    iget v6, v6, Lcom/b2bstudio/digger/killer;->y:I

    invoke-virtual {v4, v5, v6}, Lcom/b2bstudio/digger/draw;->drawleftblob(II)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget v5, v5, Lcom/b2bstudio/digger/killer;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v6, v0

    aget-object v6, v6, p1

    iget v6, v6, Lcom/b2bstudio/digger/killer;->y:I

    invoke-virtual {v4, v5, v6}, Lcom/b2bstudio/digger/main;->drawleftblob(II)V

    .line 285
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v5, v4, Lcom/b2bstudio/digger/killer;->x:I

    const/4 v6, 0x4

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/b2bstudio/digger/killer;->x:I

    goto/16 :goto_3

    .line 288
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget-boolean v4, v4, Lcom/b2bstudio/digger/killer;->nob:Z

    if-nez v4, :cond_2a

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    iget-object v4, v4, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget v5, v5, Lcom/b2bstudio/digger/killer;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v6, v0

    aget-object v6, v6, p1

    iget v6, v6, Lcom/b2bstudio/digger/killer;->y:I

    invoke-virtual {v4, v5, v6}, Lcom/b2bstudio/digger/draw;->drawtopblob(II)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget v5, v5, Lcom/b2bstudio/digger/killer;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v6, v0

    aget-object v6, v6, p1

    iget v6, v6, Lcom/b2bstudio/digger/killer;->y:I

    invoke-virtual {v4, v5, v6}, Lcom/b2bstudio/digger/main;->drawtopblob(II)V

    .line 292
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v5, v4, Lcom/b2bstudio/digger/killer;->y:I

    const/4 v6, 0x3

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/b2bstudio/digger/killer;->y:I

    goto/16 :goto_3

    .line 295
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget-boolean v4, v4, Lcom/b2bstudio/digger/killer;->nob:Z

    if-nez v4, :cond_2b

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    iget-object v4, v4, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget v5, v5, Lcom/b2bstudio/digger/killer;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v6, v0

    aget-object v6, v6, p1

    iget v6, v6, Lcom/b2bstudio/digger/killer;->y:I

    invoke-virtual {v4, v5, v6}, Lcom/b2bstudio/digger/draw;->drawbottomblob(II)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v5, v0

    aget-object v5, v5, p1

    iget v5, v5, Lcom/b2bstudio/digger/killer;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v6, v0

    aget-object v6, v6, p1

    iget v6, v6, Lcom/b2bstudio/digger/killer;->y:I

    invoke-virtual {v4, v5, v6}, Lcom/b2bstudio/digger/main;->drawbottomblob(II)V

    .line 299
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    move-object v4, v0

    aget-object v4, v4, p1

    iget v5, v4, Lcom/b2bstudio/digger/killer;->y:I

    add-int/lit8 v5, v5, 0x3

    iput v5, v4, Lcom/b2bstudio/digger/killer;->y:I

    goto/16 :goto_3

    .line 340
    .restart local v10       #clbits:I
    .restart local v18       #push:Z
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    iget-object v4, v4, Lcom/b2bstudio/digger/main;->bags:Lcom/b2bstudio/digger/bags;

    invoke-virtual {v4, v10}, Lcom/b2bstudio/digger/bags;->pushudbags(I)Z

    move-result v4

    if-nez v4, :cond_18

    .line 341
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 369
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    move-object v4, v0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/b2bstudio/digger/main;->killdigger(II)V

    goto/16 :goto_5

    .line 272
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method mondie(I)V
    .locals 7
    .parameter "mon"

    .prologue
    const/4 v6, 0x1

    .line 377
    iget-object v0, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/b2bstudio/digger/killer;->death:I

    packed-switch v0, :pswitch_data_0

    .line 396
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 379
    :pswitch_1
    iget-object v0, p0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->bags:Lcom/b2bstudio/digger/bags;

    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/b2bstudio/digger/killer;->bag:I

    invoke-virtual {v0, v1}, Lcom/b2bstudio/digger/bags;->bagy(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/b2bstudio/digger/killer;->y:I

    if-le v0, v1, :cond_1

    .line 380
    iget-object v0, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    iget-object v1, v1, Lcom/b2bstudio/digger/main;->bags:Lcom/b2bstudio/digger/bags;

    iget-object v2, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/b2bstudio/digger/killer;->bag:I

    invoke-virtual {v1, v2}, Lcom/b2bstudio/digger/bags;->bagy(I)I

    move-result v1

    iput v1, v0, Lcom/b2bstudio/digger/killer;->y:I

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, p1

    iget-boolean v2, v1, Lcom/b2bstudio/digger/killer;->nob:Z

    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, p1

    iget v3, v1, Lcom/b2bstudio/digger/killer;->hdir:I

    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, p1

    iget v4, v1, Lcom/b2bstudio/digger/killer;->x:I

    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, p1

    iget v5, v1, Lcom/b2bstudio/digger/killer;->y:I

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/b2bstudio/digger/draw;->drawmondie(IZIII)I

    .line 382
    iget-object v0, p0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/construct;->incpenalty()V

    .line 383
    iget-object v0, p0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->bags:Lcom/b2bstudio/digger/bags;

    iget-object v1, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/b2bstudio/digger/killer;->bag:I

    invoke-virtual {v0, v1}, Lcom/b2bstudio/digger/bags;->getbagdir(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 384
    iget-object v0, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v0, v0, p1

    iput v6, v0, Lcom/b2bstudio/digger/killer;->dtime:I

    .line 385
    iget-object v0, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v0, v0, p1

    const/4 v1, 0x4

    iput v1, v0, Lcom/b2bstudio/digger/killer;->death:I

    goto :goto_0

    .line 389
    :pswitch_2
    iget-object v0, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/b2bstudio/digger/killer;->dtime:I

    if-eqz v0, :cond_2

    .line 390
    iget-object v0, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v0, v0, p1

    iget v1, v0, Lcom/b2bstudio/digger/killer;->dtime:I

    sub-int/2addr v1, v6

    iput v1, v0, Lcom/b2bstudio/digger/killer;->dtime:I

    goto/16 :goto_0

    .line 392
    :cond_2
    invoke-virtual {p0, p1}, Lcom/b2bstudio/digger/monster;->killmon(I)V

    .line 393
    iget-object v0, p0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->score:Lcom/b2bstudio/digger/score;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/score;->scorekill()V

    goto/16 :goto_0

    .line 377
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method mongold()V
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b2bstudio/digger/monster;->mongotgold:Z

    .line 399
    return-void
.end method

.method monleft()I
    .locals 2

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/b2bstudio/digger/monster;->nmononscr()I

    move-result v0

    iget v1, p0, Lcom/b2bstudio/digger/monster;->totalmonsters:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/b2bstudio/digger/monster;->nextmonster:I

    sub-int/2addr v0, v1

    return v0
.end method

.method nmononscr()I
    .locals 3

    .prologue
    .line 404
    const/4 v1, 0x0

    .line 405
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x6

    if-lt v0, v2, :cond_0

    .line 408
    return v1

    .line 406
    :cond_0
    iget-object v2, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/b2bstudio/digger/killer;->flag:Z

    if-eqz v2, :cond_1

    .line 407
    add-int/lit8 v1, v1, 0x1

    .line 405
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method squashmonster(III)V
    .locals 2
    .parameter "mon"
    .parameter "death"
    .parameter "bag"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/b2bstudio/digger/killer;->alive:Z

    .line 412
    iget-object v0, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v0, v0, p1

    iput p2, v0, Lcom/b2bstudio/digger/killer;->death:I

    .line 413
    iget-object v0, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v0, v0, p1

    iput p3, v0, Lcom/b2bstudio/digger/killer;->bag:I

    .line 414
    return-void
.end method

.method squashmonsters(II)V
    .locals 7
    .parameter "bag"
    .parameter "bits"

    .prologue
    .line 417
    const/4 v1, 0x0

    .local v1, m:I
    const/16 v6, 0x100

    .local v6, b:I
    :goto_0
    const/4 v0, 0x6

    if-lt v1, v0, :cond_0

    .line 423
    return-void

    .line 418
    :cond_0
    and-int v0, p2, v6

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    iget-object v2, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/b2bstudio/digger/killer;->x:I

    iget-object v3, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/b2bstudio/digger/killer;->y:I

    iget-object v4, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v4, v4, v1

    iget-boolean v4, v4, Lcom/b2bstudio/digger/killer;->nob:Z

    iget-object v5, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/b2bstudio/digger/killer;->dir:I

    invoke-virtual/range {v0 .. v5}, Lcom/b2bstudio/digger/main;->drawmondie(IIIZI)V

    .line 420
    iget-object v0, p0, Lcom/b2bstudio/digger/monster;->mondat:[Lcom/b2bstudio/digger/killer;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/b2bstudio/digger/killer;->y:I

    iget-object v2, p0, Lcom/b2bstudio/digger/monster;->dig:Lcom/b2bstudio/digger/main;

    iget-object v2, v2, Lcom/b2bstudio/digger/main;->bags:Lcom/b2bstudio/digger/bags;

    invoke-virtual {v2, p1}, Lcom/b2bstudio/digger/bags;->bagy(I)I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 421
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0, p1}, Lcom/b2bstudio/digger/monster;->squashmonster(III)V

    .line 417
    :cond_1
    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method
