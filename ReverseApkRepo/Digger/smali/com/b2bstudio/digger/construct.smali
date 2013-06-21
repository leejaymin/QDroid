.class Lcom/b2bstudio/digger/construct;
.super Ljava/lang/Object;
.source "construct.java"


# instance fields
.field biosflag:Z

.field curplayer:I

.field delaytime:I

.field dig:Lcom/b2bstudio/digger/main;

.field digsprorder:[I

.field flashplayer:Z

.field gamedat:[Lcom/b2bstudio/digger/game;

.field leveldat:[[Ljava/lang/String;

.field levfflag:Z

.field levnotdrawn:Z

.field mode:I

.field nplayers:I

.field penalty:I

.field pldispbuf:Ljava/lang/String;

.field randv:I

.field speedmul:I


# direct methods
.method constructor <init>(Lcom/b2bstudio/digger/main;)V
    .locals 10
    .parameter "d"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/16 v0, 0x10

    new-array v0, v0, [I

    const/16 v1, 0xe

    aput v1, v0, v5

    const/16 v1, 0xd

    aput v1, v0, v6

    const/4 v1, 0x7

    aput v1, v0, v7

    const/4 v1, 0x6

    aput v1, v0, v8

    const/4 v1, 0x5

    aput v1, v0, v9

    const/4 v1, 0x5

    aput v9, v0, v1

    const/4 v1, 0x6

    aput v8, v0, v1

    const/4 v1, 0x7

    aput v7, v0, v1

    const/16 v1, 0x8

    aput v6, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xf

    aput v2, v0, v1

    iput-object v0, p0, Lcom/b2bstudio/digger/construct;->digsprorder:[I

    .line 11
    new-array v0, v7, [Lcom/b2bstudio/digger/game;

    new-instance v1, Lcom/b2bstudio/digger/game;

    invoke-direct {v1}, Lcom/b2bstudio/digger/game;-><init>()V

    aput-object v1, v0, v5

    new-instance v1, Lcom/b2bstudio/digger/game;

    invoke-direct {v1}, Lcom/b2bstudio/digger/game;-><init>()V

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/b2bstudio/digger/construct;->pldispbuf:Ljava/lang/String;

    .line 15
    iput v5, p0, Lcom/b2bstudio/digger/construct;->curplayer:I

    iput v5, p0, Lcom/b2bstudio/digger/construct;->nplayers:I

    iput v5, p0, Lcom/b2bstudio/digger/construct;->penalty:I

    .line 16
    iput-boolean v5, p0, Lcom/b2bstudio/digger/construct;->levnotdrawn:Z

    iput-boolean v5, p0, Lcom/b2bstudio/digger/construct;->flashplayer:Z

    .line 18
    iput-boolean v5, p0, Lcom/b2bstudio/digger/construct;->levfflag:Z

    .line 19
    iput-boolean v5, p0, Lcom/b2bstudio/digger/construct;->biosflag:Z

    .line 20
    const/16 v0, 0x96

    iput v0, p0, Lcom/b2bstudio/digger/construct;->speedmul:I

    .line 21
    iput v5, p0, Lcom/b2bstudio/digger/construct;->delaytime:I

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [[Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "S   B     HHHHS"

    aput-object v2, v1, v5

    .line 29
    const-string v2, "V  CC  C  V B  "

    aput-object v2, v1, v6

    .line 30
    const-string v2, "VB CC  C  V    "

    aput-object v2, v1, v7

    .line 31
    const-string v2, "V  CCB CB V CCC"

    aput-object v2, v1, v8

    .line 32
    const-string v2, "V  CC  C  V CCC"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    .line 33
    const-string v3, "HH CC  C  V CCC"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 34
    const-string v3, " V    B B V    "

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 35
    const-string v3, " HHHH     V    "

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 36
    const-string v3, "C   V     V   C"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 37
    const-string v3, "CC  HHHHHHH  CC"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    .line 38
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "SHHHHH  B B  HS"

    aput-object v2, v1, v5

    .line 39
    const-string v2, " CC  V       V "

    aput-object v2, v1, v6

    .line 40
    const-string v2, " CC  V CCCCC V "

    aput-object v2, v1, v7

    .line 41
    const-string v2, "BCCB V CCCCC V "

    aput-object v2, v1, v8

    .line 42
    const-string v2, "CCCC V       V "

    aput-object v2, v1, v9

    const/4 v2, 0x5

    .line 43
    const-string v3, "CCCC V B  HHHH "

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 44
    const-string v3, " CC  V CC V    "

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 45
    const-string v3, " BB  VCCCCV CC "

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 46
    const-string v3, "C    V CC V CC "

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 47
    const-string v3, "CC   HHHHHH    "

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    .line 48
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "SHHHHB B BHHHHS"

    aput-object v2, v1, v5

    .line 49
    const-string v2, "CC  V C C V BB "

    aput-object v2, v1, v6

    .line 50
    const-string v2, "C   V C C V CC "

    aput-object v2, v1, v7

    .line 51
    const-string v2, " BB V C C VCCCC"

    aput-object v2, v1, v8

    .line 52
    const-string v2, "CCCCV C C VCCCC"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    .line 53
    const-string v3, "CCCCHHHHHHH CC "

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 54
    const-string v3, " CC  C V C  CC "

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 55
    const-string v3, " CC  C V C     "

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 56
    const-string v3, "C    C V C    C"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 57
    const-string v3, "CC   C H C   CC"

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    .line 58
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "SHBCCCCBCCCCBHS"

    aput-object v2, v1, v5

    .line 59
    const-string v2, "CV  CCCCCCC  VC"

    aput-object v2, v1, v6

    .line 60
    const-string v2, "CHHH CCCCC HHHC"

    aput-object v2, v1, v7

    .line 61
    const-string v2, "C  V  CCC  V  C"

    aput-object v2, v1, v8

    .line 62
    const-string v2, "   HHH C HHH   "

    aput-object v2, v1, v9

    const/4 v2, 0x5

    .line 63
    const-string v3, "  B  V B V  B  "

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 64
    const-string v3, "  C  VCCCV  C  "

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 65
    const-string v3, " CCC HHHHH CCC "

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 66
    const-string v3, "CCCCC CVC CCCCC"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 67
    const-string v3, "CCCCC CHC CCCCC"

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    .line 68
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "SHHHHHHHHHHHHHS"

    aput-object v2, v1, v5

    .line 69
    const-string v2, "VBCCCCBVCCCCCCV"

    aput-object v2, v1, v6

    .line 70
    const-string v2, "VCCCCCCV CCBC V"

    aput-object v2, v1, v7

    .line 71
    const-string v2, "V CCCC VCCBCCCV"

    aput-object v2, v1, v8

    .line 72
    const-string v2, "VCCCCCCV CCCC V"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    .line 73
    const-string v3, "V CCCC VBCCCCCV"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 74
    const-string v3, "VCCBCCCV CCCC V"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 75
    const-string v3, "V CCBC VCCCCCCV"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 76
    const-string v3, "VCCCCCCVCCCCCCV"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 77
    const-string v3, "HHHHHHHHHHHHHHH"

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x5

    .line 78
    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "SHHHHHHHHHHHHHS"

    aput-object v3, v2, v5

    .line 79
    const-string v3, "VCBCCV V VCCBCV"

    aput-object v3, v2, v6

    .line 80
    const-string v3, "VCCC VBVBV CCCV"

    aput-object v3, v2, v7

    .line 81
    const-string v3, "VCCCHH V HHCCCV"

    aput-object v3, v2, v8

    .line 82
    const-string v3, "VCC V CVC V CCV"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 83
    const-string v4, "VCCHH CVC HHCCV"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 84
    const-string v4, "VC V CCVCC V CV"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 85
    const-string v4, "VCHHBCCVCCBHHCV"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 86
    const-string v4, "VCVCCCCVCCCCVCV"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    .line 87
    const-string v4, "HHHHHHHHHHHHHHH"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 88
    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "SHCCCCCVCCCCCHS"

    aput-object v3, v2, v5

    .line 89
    const-string v3, " VCBCBCVCBCBCV "

    aput-object v3, v2, v6

    .line 90
    const-string v3, "BVCCCCCVCCCCCVB"

    aput-object v3, v2, v7

    .line 91
    const-string v3, "CHHCCCCVCCCCHHC"

    aput-object v3, v2, v8

    .line 92
    const-string v3, "CCV CCCVCCC VCC"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 93
    const-string v4, "CCHHHCCVCCHHHCC"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 94
    const-string v4, "CCCCV CVC VCCCC"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 95
    const-string v4, "CCCCHH V HHCCCC"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 96
    const-string v4, "CCCCCV V VCCCCC"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    .line 97
    const-string v4, "CCCCCHHHHHCCCCC"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 98
    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "HHHHHHHHHHHHHHS"

    aput-object v3, v2, v5

    .line 99
    const-string v3, "V CCBCCCCCBCC V"

    aput-object v3, v2, v6

    .line 100
    const-string v3, "HHHCCCCBCCCCHHH"

    aput-object v3, v2, v7

    .line 101
    const-string v3, "VBV CCCCCCC VBV"

    aput-object v3, v2, v8

    .line 102
    const-string v3, "VCHHHCCCCCHHHCV"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    .line 103
    const-string v4, "VCCBV CCC VBCCV"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 104
    const-string v4, "VCCCHHHCHHHCCCV"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 105
    const-string v4, "VCCCC V V CCCCV"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 106
    const-string v4, "VCCCCCV VCCCCCV"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    .line 107
    const-string v4, "HHHHHHHHHHHHHHH"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/b2bstudio/digger/construct;->leveldat:[[Ljava/lang/String;

    .line 110
    iput-object p1, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    .line 111
    iput v5, p0, Lcom/b2bstudio/digger/construct;->mode:I

    .line 112
    return-void
.end method


# virtual methods
.method addlife(I)V
    .locals 2
    .parameter "pl"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    const/4 v1, 0x1

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    iget v1, v0, Lcom/b2bstudio/digger/game;->lives:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/b2bstudio/digger/game;->lives:I

    .line 116
    return-void
.end method

.method calibrate()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method checklevdone()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/main;->countem()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->monster:Lcom/b2bstudio/digger/monster;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/monster;->monleft()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-boolean v0, v0, Lcom/b2bstudio/digger/main;->digonscr:Z

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    iget v1, p0, Lcom/b2bstudio/digger/construct;->curplayer:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/b2bstudio/digger/game;->levdone:Z

    .line 123
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    invoke-virtual {v0, v2}, Lcom/b2bstudio/digger/main;->diggerhide(Z)V

    .line 127
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    iget v1, p0, Lcom/b2bstudio/digger/construct;->curplayer:I

    aget-object v0, v0, v1

    iput-boolean v2, v0, Lcom/b2bstudio/digger/game;->levdone:Z

    goto :goto_0
.end method

.method drawscreen()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/draw;->creatembspr()V

    .line 130
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/draw;->drawstatics()V

    .line 131
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->bags:Lcom/b2bstudio/digger/bags;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/bags;->drawbags()V

    .line 132
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/main;->drawemeralds()V

    .line 133
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/main;->initdigger()V

    .line 134
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->monster:Lcom/b2bstudio/digger/monster;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/monster;->initmonsters()V

    .line 135
    return-void
.end method

.method getcplayer()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/b2bstudio/digger/construct;->curplayer:I

    return v0
.end method

.method getdead()Z
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    iget v1, p0, Lcom/b2bstudio/digger/construct;->curplayer:I

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/b2bstudio/digger/game;->dead:Z

    return v0
.end method

.method getlevch(III)I
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "l"

    .prologue
    .line 140
    if-nez p3, :cond_0

    .line 141
    add-int/lit8 p3, p3, 0x1

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->leveldat:[[Ljava/lang/String;

    const/4 v1, 0x1

    sub-int v1, p3, v1

    aget-object v0, v0, v1

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method getlevdrawn()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/b2bstudio/digger/construct;->levnotdrawn:Z

    return v0
.end method

.method getlives(I)I
    .locals 2
    .parameter "pl"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    const/4 v1, 0x1

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/b2bstudio/digger/game;->lives:I

    return v0
.end method

.method incpenalty()V
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/b2bstudio/digger/construct;->penalty:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b2bstudio/digger/construct;->penalty:I

    .line 149
    return-void
.end method

.method initchars()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/draw;->initmbspr()V

    .line 152
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/main;->initdigger()V

    .line 153
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->monster:Lcom/b2bstudio/digger/monster;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/monster;->initmonsters()V

    .line 154
    return-void
.end method

.method initlevel()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 156
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    iget v1, p0, Lcom/b2bstudio/digger/construct;->curplayer:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/b2bstudio/digger/game;->levdone:Z

    .line 157
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/input;->setnodirec()V

    .line 158
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/draw;->makefield()V

    .line 159
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/main;->makeemfield()V

    .line 160
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->bags:Lcom/b2bstudio/digger/bags;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/bags;->initbags()V

    .line 161
    iput-boolean v2, p0, Lcom/b2bstudio/digger/construct;->levnotdrawn:Z

    .line 162
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/main;->drawScreen()V

    .line 163
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    invoke-virtual {v0, v2}, Lcom/b2bstudio/digger/main;->diggerhide(Z)V

    .line 164
    return-void
.end method

.method isgame()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 183
    iget v0, p0, Lcom/b2bstudio/digger/construct;->mode:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method levno()I
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    iget v1, p0, Lcom/b2bstudio/digger/construct;->curplayer:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/b2bstudio/digger/game;->level:I

    return v0
.end method

.method levof10()I
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 172
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    iget v1, p0, Lcom/b2bstudio/digger/construct;->curplayer:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/b2bstudio/digger/game;->level:I

    if-le v0, v2, :cond_0

    move v0, v2

    .line 174
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    iget v1, p0, Lcom/b2bstudio/digger/construct;->curplayer:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/b2bstudio/digger/game;->level:I

    goto :goto_0
.end method

.method levplan()I
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/b2bstudio/digger/construct;->levno()I

    move-result v0

    .line 178
    .local v0, l:I
    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 179
    and-int/lit8 v1, v0, 0x3

    add-int/lit8 v0, v1, 0x5

    .line 180
    :cond_0
    return v0
.end method

.method main()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 186
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/board;->gethrt()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/b2bstudio/digger/construct;->randv:I

    .line 187
    invoke-virtual {p0}, Lcom/b2bstudio/digger/construct;->calibrate()V

    .line 188
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget v1, p0, Lcom/b2bstudio/digger/construct;->speedmul:I

    int-to-long v1, v1

    const-wide/16 v3, 0x7d0

    mul-long/2addr v1, v3

    iput-wide v1, v0, Lcom/b2bstudio/digger/main;->ftime:J

    .line 189
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    invoke-virtual {v0, v6}, Lcom/b2bstudio/digger/sprite;->setretr(Z)V

    .line 190
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/board;->ginit()V

    .line 191
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    invoke-virtual {v0, v5}, Lcom/b2bstudio/digger/sprite;->setretr(Z)V

    .line 192
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    invoke-virtual {v0, v6}, Lcom/b2bstudio/digger/board;->gpal(I)V

    .line 193
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/input;->initkeyb()V

    .line 194
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/input;->detectjoy()V

    .line 196
    iput v5, p0, Lcom/b2bstudio/digger/construct;->nplayers:I

    .line 198
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->sprite:Lcom/b2bstudio/digger/sprite;

    iget-object v1, p0, Lcom/b2bstudio/digger/construct;->digsprorder:[I

    invoke-virtual {v0, v1}, Lcom/b2bstudio/digger/sprite;->setsprorder([I)V

    .line 199
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/draw;->creatembspr()V

    .line 200
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/input;->detectjoy()V

    .line 201
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/board;->gclear()V

    .line 203
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v1, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v1, v1, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    invoke-virtual {v1}, Lcom/b2bstudio/digger/board;->gethrt()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/b2bstudio/digger/main;->time:J

    .line 205
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    aget-object v0, v0, v6

    iput v5, v0, Lcom/b2bstudio/digger/game;->level:I

    .line 206
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    aget-object v0, v0, v6

    iput v8, v0, Lcom/b2bstudio/digger/game;->lives:I

    .line 207
    iget v0, p0, Lcom/b2bstudio/digger/construct;->nplayers:I

    if-ne v0, v7, :cond_4

    .line 208
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    aget-object v0, v0, v5

    iput v5, v0, Lcom/b2bstudio/digger/game;->level:I

    .line 209
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    aget-object v0, v0, v5

    iput v8, v0, Lcom/b2bstudio/digger/game;->lives:I

    .line 214
    :goto_0
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/board;->gclear()V

    .line 215
    iput v6, p0, Lcom/b2bstudio/digger/construct;->curplayer:I

    .line 216
    invoke-virtual {p0}, Lcom/b2bstudio/digger/construct;->initlevel()V

    .line 217
    iput v5, p0, Lcom/b2bstudio/digger/construct;->curplayer:I

    .line 218
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->score:Lcom/b2bstudio/digger/score;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/score;->zeroscore()V

    .line 219
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iput-boolean v5, v0, Lcom/b2bstudio/digger/main;->bonusvisible:Z

    .line 220
    iget v0, p0, Lcom/b2bstudio/digger/construct;->nplayers:I

    if-ne v0, v7, :cond_0

    .line 221
    iput-boolean v5, p0, Lcom/b2bstudio/digger/construct;->flashplayer:Z

    .line 222
    :cond_0
    iput v6, p0, Lcom/b2bstudio/digger/construct;->curplayer:I

    .line 224
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/b2bstudio/digger/game;->lives:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    aget-object v0, v0, v5

    iget v0, v0, Lcom/b2bstudio/digger/game;->lives:I

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    iget-boolean v0, v0, Lcom/b2bstudio/digger/input;->escape:Z

    if-eqz v0, :cond_5

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    iput-boolean v6, v0, Lcom/b2bstudio/digger/input;->escape:Z

    .line 241
    return-void

    .line 212
    :cond_4
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    aget-object v0, v0, v5

    iput v6, v0, Lcom/b2bstudio/digger/game;->lives:I

    goto :goto_0

    .line 225
    :cond_5
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    iget v1, p0, Lcom/b2bstudio/digger/construct;->curplayer:I

    aget-object v0, v0, v1

    iput-boolean v6, v0, Lcom/b2bstudio/digger/game;->dead:Z

    .line 226
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/main;->startpos()V

    .line 227
    :goto_2
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    iget v1, p0, Lcom/b2bstudio/digger/construct;->curplayer:I

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/b2bstudio/digger/game;->dead:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    iget v1, p0, Lcom/b2bstudio/digger/construct;->curplayer:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/b2bstudio/digger/game;->lives:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    iget-boolean v0, v0, Lcom/b2bstudio/digger/input;->escape:Z

    if-eqz v0, :cond_7

    .line 233
    :cond_6
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/main;->refresh()V

    .line 235
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    iget v1, p0, Lcom/b2bstudio/digger/construct;->curplayer:I

    sub-int v1, v5, v1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/b2bstudio/digger/game;->lives:I

    if-eqz v0, :cond_1

    .line 236
    iget v0, p0, Lcom/b2bstudio/digger/construct;->curplayer:I

    sub-int v0, v5, v0

    iput v0, p0, Lcom/b2bstudio/digger/construct;->curplayer:I

    .line 237
    iput-boolean v5, p0, Lcom/b2bstudio/digger/construct;->levnotdrawn:Z

    iput-boolean v5, p0, Lcom/b2bstudio/digger/construct;->flashplayer:Z

    goto :goto_1

    .line 228
    :cond_7
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->draw:Lcom/b2bstudio/digger/draw;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/draw;->initmbspr()V

    .line 229
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/main;->refresh()V

    .line 230
    invoke-virtual {p0}, Lcom/b2bstudio/digger/construct;->play()V

    goto :goto_2
.end method

.method play()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x8

    const/16 v6, 0x3e8

    const/4 v5, 0x0

    .line 245
    iget-boolean v2, p0, Lcom/b2bstudio/digger/construct;->levnotdrawn:Z

    if-eqz v2, :cond_c

    .line 246
    iput-boolean v5, p0, Lcom/b2bstudio/digger/construct;->levnotdrawn:Z

    .line 247
    invoke-virtual {p0}, Lcom/b2bstudio/digger/construct;->drawscreen()V

    .line 248
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v3, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v3, v3, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    invoke-virtual {v3}, Lcom/b2bstudio/digger/board;->gethrt()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/b2bstudio/digger/main;->time:J

    .line 249
    iget-boolean v2, p0, Lcom/b2bstudio/digger/construct;->flashplayer:Z

    if-eqz v2, :cond_0

    .line 250
    iput-boolean v5, p0, Lcom/b2bstudio/digger/construct;->flashplayer:Z

    .line 251
    const-string v2, "PLAYER "

    iput-object v2, p0, Lcom/b2bstudio/digger/construct;->pldispbuf:Ljava/lang/String;

    .line 252
    iget v2, p0, Lcom/b2bstudio/digger/construct;->curplayer:I

    if-nez v2, :cond_9

    .line 253
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->pldispbuf:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "1"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/b2bstudio/digger/construct;->pldispbuf:Ljava/lang/String;

    .line 256
    :goto_0
    const/4 v1, 0x0

    .local v1, t:I
    :goto_1
    const/16 v2, 0xf

    if-lt v1, v2, :cond_a

    .line 262
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v2, v2, Lcom/b2bstudio/digger/main;->score:Lcom/b2bstudio/digger/score;

    invoke-virtual {v2, v5}, Lcom/b2bstudio/digger/score;->addscore(I)V

    .line 268
    .end local v1           #t:I
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v2, v2, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    iput v5, v2, Lcom/b2bstudio/digger/input;->keypressed:I

    .line 269
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v2, v2, Lcom/b2bstudio/digger/main;->score:Lcom/b2bstudio/digger/score;

    invoke-virtual {v2}, Lcom/b2bstudio/digger/score;->initscore()V

    .line 270
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v2, v2, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    invoke-virtual {v2}, Lcom/b2bstudio/digger/input;->readdir()V

    .line 271
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v3, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v3, v3, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    invoke-virtual {v3}, Lcom/b2bstudio/digger/board;->gethrt()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/b2bstudio/digger/main;->time:J

    .line 273
    :goto_3
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    iget v3, p0, Lcom/b2bstudio/digger/construct;->curplayer:I

    aget-object v2, v2, v3

    iget-boolean v2, v2, Lcom/b2bstudio/digger/game;->dead:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    iget v3, p0, Lcom/b2bstudio/digger/construct;->curplayer:I

    aget-object v2, v2, v3

    iget-boolean v2, v2, Lcom/b2bstudio/digger/game;->levdone:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v2, v2, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    iget-boolean v2, v2, Lcom/b2bstudio/digger/input;->escape:Z

    if-eqz v2, :cond_d

    .line 285
    :cond_1
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    invoke-virtual {v2}, Lcom/b2bstudio/digger/main;->erasedigger()V

    .line 286
    const/16 v1, 0x14

    .line 287
    .restart local v1       #t:I
    :goto_4
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v2, v2, Lcom/b2bstudio/digger/main;->bags:Lcom/b2bstudio/digger/bags;

    invoke-virtual {v2}, Lcom/b2bstudio/digger/bags;->getnmovingbags()I

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v2, v2, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    iget-boolean v2, v2, Lcom/b2bstudio/digger/input;->escape:Z

    if-eqz v2, :cond_f

    .line 299
    :cond_3
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    invoke-virtual {v2}, Lcom/b2bstudio/digger/main;->killfire()V

    .line 300
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    invoke-virtual {v2}, Lcom/b2bstudio/digger/main;->erasebonus()V

    .line 301
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v2, v2, Lcom/b2bstudio/digger/main;->bags:Lcom/b2bstudio/digger/bags;

    invoke-virtual {v2}, Lcom/b2bstudio/digger/bags;->cleanupbags()V

    .line 302
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v2, v2, Lcom/b2bstudio/digger/main;->monster:Lcom/b2bstudio/digger/monster;

    invoke-virtual {v2}, Lcom/b2bstudio/digger/monster;->erasemonsters()V

    .line 303
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    invoke-virtual {v2}, Lcom/b2bstudio/digger/main;->newframe()V

    .line 304
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    invoke-virtual {v2}, Lcom/b2bstudio/digger/main;->countem()I

    move-result v2

    if-nez v2, :cond_5

    .line 305
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    iget v3, p0, Lcom/b2bstudio/digger/construct;->curplayer:I

    aget-object v2, v2, v3

    iget v3, v2, Lcom/b2bstudio/digger/game;->level:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/b2bstudio/digger/game;->level:I

    .line 306
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    iget v3, p0, Lcom/b2bstudio/digger/construct;->curplayer:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/b2bstudio/digger/game;->level:I

    if-le v2, v6, :cond_4

    .line 307
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    iget v3, p0, Lcom/b2bstudio/digger/construct;->curplayer:I

    aget-object v2, v2, v3

    iput v6, v2, Lcom/b2bstudio/digger/game;->level:I

    .line 308
    :cond_4
    invoke-virtual {p0}, Lcom/b2bstudio/digger/construct;->initlevel()V

    .line 310
    :cond_5
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    iget v3, p0, Lcom/b2bstudio/digger/construct;->curplayer:I

    aget-object v2, v2, v3

    iget-boolean v2, v2, Lcom/b2bstudio/digger/game;->dead:Z

    if-eqz v2, :cond_6

    .line 311
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    iget v3, p0, Lcom/b2bstudio/digger/construct;->curplayer:I

    aget-object v2, v2, v3

    iget v3, v2, Lcom/b2bstudio/digger/game;->lives:I

    sub-int/2addr v3, v8

    iput v3, v2, Lcom/b2bstudio/digger/game;->lives:I

    .line 312
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    iget v3, p0, Lcom/b2bstudio/digger/construct;->curplayer:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/b2bstudio/digger/game;->lives:I

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v2, v2, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    iget-boolean v2, v2, Lcom/b2bstudio/digger/input;->escape:Z

    if-nez v2, :cond_6

    .line 313
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v2, v2, Lcom/b2bstudio/digger/main;->score:Lcom/b2bstudio/digger/score;

    invoke-virtual {v2}, Lcom/b2bstudio/digger/score;->endofgame()V

    .line 315
    :cond_6
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    iget v3, p0, Lcom/b2bstudio/digger/construct;->curplayer:I

    aget-object v2, v2, v3

    iget-boolean v2, v2, Lcom/b2bstudio/digger/game;->levdone:Z

    if-eqz v2, :cond_8

    .line 316
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    iget v3, p0, Lcom/b2bstudio/digger/construct;->curplayer:I

    aget-object v2, v2, v3

    iget v3, v2, Lcom/b2bstudio/digger/game;->level:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/b2bstudio/digger/game;->level:I

    .line 317
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    iget v3, p0, Lcom/b2bstudio/digger/construct;->curplayer:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/b2bstudio/digger/game;->level:I

    if-le v2, v6, :cond_7

    .line 318
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    iget v3, p0, Lcom/b2bstudio/digger/construct;->curplayer:I

    aget-object v2, v2, v3

    iput v6, v2, Lcom/b2bstudio/digger/game;->level:I

    .line 319
    :cond_7
    invoke-virtual {p0}, Lcom/b2bstudio/digger/construct;->initlevel()V

    .line 321
    :cond_8
    return-void

    .line 255
    .end local v1           #t:I
    :cond_9
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->pldispbuf:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "2"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/b2bstudio/digger/construct;->pldispbuf:Ljava/lang/String;

    goto/16 :goto_0

    .line 257
    .restart local v1       #t:I
    :cond_a
    const/4 v0, 0x1

    .local v0, c:I
    :goto_5
    const/4 v2, 0x3

    if-le v0, v2, :cond_b

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 258
    :cond_b
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    invoke-virtual {v2}, Lcom/b2bstudio/digger/main;->newframe()V

    .line 259
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v2, v2, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    iget-boolean v2, v2, Lcom/b2bstudio/digger/input;->escape:Z

    if-nez v2, :cond_8

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 266
    .end local v0           #c:I
    .end local v1           #t:I
    :cond_c
    invoke-virtual {p0}, Lcom/b2bstudio/digger/construct;->initchars()V

    goto/16 :goto_2

    .line 274
    :cond_d
    iput v5, p0, Lcom/b2bstudio/digger/construct;->penalty:I

    iput v8, p0, Lcom/b2bstudio/digger/construct;->mode:I

    .line 275
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    invoke-virtual {v2}, Lcom/b2bstudio/digger/main;->dodigger()V

    .line 276
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v2, v2, Lcom/b2bstudio/digger/main;->monster:Lcom/b2bstudio/digger/monster;

    invoke-virtual {v2}, Lcom/b2bstudio/digger/monster;->domonsters()V

    .line 277
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v2, v2, Lcom/b2bstudio/digger/main;->bags:Lcom/b2bstudio/digger/bags;

    invoke-virtual {v2}, Lcom/b2bstudio/digger/bags;->dobags()V

    .line 278
    iget v2, p0, Lcom/b2bstudio/digger/construct;->penalty:I

    if-le v2, v7, :cond_e

    .line 279
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v2, v2, Lcom/b2bstudio/digger/main;->monster:Lcom/b2bstudio/digger/monster;

    iget v3, p0, Lcom/b2bstudio/digger/construct;->penalty:I

    sub-int/2addr v3, v7

    invoke-virtual {v2, v3}, Lcom/b2bstudio/digger/monster;->incmont(I)V

    .line 280
    :cond_e
    invoke-virtual {p0}, Lcom/b2bstudio/digger/construct;->testpause()V

    .line 281
    invoke-virtual {p0}, Lcom/b2bstudio/digger/construct;->checklevdone()V

    .line 282
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    invoke-virtual {v2}, Lcom/b2bstudio/digger/main;->updateimager()V

    goto/16 :goto_3

    .line 288
    .restart local v1       #t:I
    :cond_f
    if-eqz v1, :cond_10

    .line 289
    add-int/lit8 v1, v1, -0x1

    .line 290
    :cond_10
    iput v5, p0, Lcom/b2bstudio/digger/construct;->penalty:I

    .line 291
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v2, v2, Lcom/b2bstudio/digger/main;->bags:Lcom/b2bstudio/digger/bags;

    invoke-virtual {v2}, Lcom/b2bstudio/digger/bags;->dobags()V

    .line 292
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    invoke-virtual {v2}, Lcom/b2bstudio/digger/main;->dodigger()V

    .line 293
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v2, v2, Lcom/b2bstudio/digger/main;->monster:Lcom/b2bstudio/digger/monster;

    invoke-virtual {v2}, Lcom/b2bstudio/digger/monster;->domonsters()V

    .line 294
    iget v2, p0, Lcom/b2bstudio/digger/construct;->penalty:I

    if-ge v2, v7, :cond_11

    .line 295
    const/4 v1, 0x0

    .line 296
    :cond_11
    iget-object v2, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    invoke-virtual {v2}, Lcom/b2bstudio/digger/main;->updateimager()V

    goto/16 :goto_4
.end method

.method randno(I)I
    .locals 2
    .parameter "n"

    .prologue
    .line 323
    iget v0, p0, Lcom/b2bstudio/digger/construct;->randv:I

    const v1, 0x15a4e35

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b2bstudio/digger/construct;->randv:I

    .line 324
    iget v0, p0, Lcom/b2bstudio/digger/construct;->randv:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/2addr v0, p1

    return v0
.end method

.method setdead(Z)V
    .locals 2
    .parameter "bp6"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->gamedat:[Lcom/b2bstudio/digger/game;

    iget v1, p0, Lcom/b2bstudio/digger/construct;->curplayer:I

    aget-object v0, v0, v1

    iput-boolean p1, v0, Lcom/b2bstudio/digger/game;->dead:Z

    .line 328
    return-void
.end method

.method switchnplayers()V
    .locals 2

    .prologue
    .line 333
    const/4 v0, 0x3

    iget v1, p0, Lcom/b2bstudio/digger/construct;->nplayers:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/b2bstudio/digger/construct;->nplayers:I

    .line 334
    return-void
.end method

.method testpause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 336
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    iget v0, v0, Lcom/b2bstudio/digger/input;->akeypressed:I

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1

    .line 337
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    iput v5, v0, Lcom/b2bstudio/digger/input;->akeypressed:I

    .line 338
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/main;->newframe()V

    .line 339
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    iput v5, v0, Lcom/b2bstudio/digger/input;->keypressed:I

    .line 342
    :cond_0
    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_0
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    iget v0, v0, Lcom/b2bstudio/digger/input;->keypressed:I

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->score:Lcom/b2bstudio/digger/score;

    invoke-virtual {v0, v5}, Lcom/b2bstudio/digger/score;->addscore(I)V

    .line 350
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    invoke-virtual {v0}, Lcom/b2bstudio/digger/main;->newframe()V

    .line 351
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v1, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v1, v1, Lcom/b2bstudio/digger/main;->board:Lcom/b2bstudio/digger/board;

    invoke-virtual {v1}, Lcom/b2bstudio/digger/board;->gethrt()J

    move-result-wide v1

    iget-object v3, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget v3, v3, Lcom/b2bstudio/digger/main;->frametime:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/b2bstudio/digger/main;->time:J

    .line 352
    iget-object v0, p0, Lcom/b2bstudio/digger/construct;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->input:Lcom/b2bstudio/digger/input;

    iput v5, v0, Lcom/b2bstudio/digger/input;->keypressed:I

    .line 356
    :cond_1
    return-void

    .line 344
    :catch_0
    move-exception v0

    goto :goto_0
.end method
