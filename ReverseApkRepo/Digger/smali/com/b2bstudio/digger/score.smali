.class Lcom/b2bstudio/digger/score;
.super Ljava/lang/Object;
.source "score.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field bonusscore:I

.field dig:Lcom/b2bstudio/digger/main;

.field gotinitflag:Z

.field high:J

.field highbuf:[C

.field hsbuf:Ljava/lang/String;

.field nextbs1:J

.field nextbs2:J

.field score1:J

.field score2:J

.field scorebuf:[C

.field scorehigh:[J

.field scoreinit:[Ljava/lang/String;

.field scoret:J


# direct methods
.method public constructor <init>(Lcom/b2bstudio/digger/main;)V
    .locals 3
    .parameter "d"

    .prologue
    const-wide/16 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/16 v0, 0xa

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/b2bstudio/digger/score;->highbuf:[C

    .line 9
    const/16 v0, 0xc

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/b2bstudio/digger/score;->scorehigh:[J

    .line 10
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/b2bstudio/digger/score;->scoreinit:[Ljava/lang/String;

    .line 11
    iput-wide v1, p0, Lcom/b2bstudio/digger/score;->scoret:J

    iput-wide v1, p0, Lcom/b2bstudio/digger/score;->score1:J

    iput-wide v1, p0, Lcom/b2bstudio/digger/score;->score2:J

    iput-wide v1, p0, Lcom/b2bstudio/digger/score;->nextbs1:J

    iput-wide v1, p0, Lcom/b2bstudio/digger/score;->nextbs2:J

    .line 13
    const/16 v0, 0x200

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/b2bstudio/digger/score;->scorebuf:[C

    .line 14
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/b2bstudio/digger/score;->bonusscore:I

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b2bstudio/digger/score;->gotinitflag:Z

    .line 20
    iput-object p1, p0, Lcom/b2bstudio/digger/score;->dig:Lcom/b2bstudio/digger/main;

    .line 21
    invoke-virtual {p0}, Lcom/b2bstudio/digger/score;->loadscore()V

    .line 22
    return-void
.end method


# virtual methods
.method addscore(I)V
    .locals 5
    .parameter "score"

    .prologue
    const/4 v4, 0x1

    .line 35
    iget-wide v0, p0, Lcom/b2bstudio/digger/score;->score1:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/b2bstudio/digger/score;->score1:J

    .line 36
    iget-wide v0, p0, Lcom/b2bstudio/digger/score;->score1:J

    const-wide/32 v2, 0xf423f

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/b2bstudio/digger/score;->score1:J

    .line 38
    :cond_0
    iget-wide v0, p0, Lcom/b2bstudio/digger/score;->score1:J

    iget-wide v2, p0, Lcom/b2bstudio/digger/score;->nextbs1:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 39
    iget-object v0, p0, Lcom/b2bstudio/digger/score;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v0, v4}, Lcom/b2bstudio/digger/construct;->getlives(I)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 40
    iget-object v0, p0, Lcom/b2bstudio/digger/score;->dig:Lcom/b2bstudio/digger/main;

    iget-object v0, v0, Lcom/b2bstudio/digger/main;->construct:Lcom/b2bstudio/digger/construct;

    invoke-virtual {v0, v4}, Lcom/b2bstudio/digger/construct;->addlife(I)V

    .line 42
    :cond_1
    iget-wide v0, p0, Lcom/b2bstudio/digger/score;->nextbs1:J

    iget v2, p0, Lcom/b2bstudio/digger/score;->bonusscore:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/b2bstudio/digger/score;->nextbs1:J

    .line 44
    :cond_2
    return-void
.end method

.method endofgame()V
    .locals 4

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/b2bstudio/digger/score;->score1:J

    iput-wide v0, p0, Lcom/b2bstudio/digger/score;->scoret:J

    .line 50
    iget-wide v0, p0, Lcom/b2bstudio/digger/score;->high:J

    iget-wide v2, p0, Lcom/b2bstudio/digger/score;->scoret:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 51
    iget-wide v0, p0, Lcom/b2bstudio/digger/score;->scoret:J

    iput-wide v0, p0, Lcom/b2bstudio/digger/score;->high:J

    .line 52
    iget-wide v0, p0, Lcom/b2bstudio/digger/score;->high:J

    invoke-static {v0, v1}, Lcom/b2bstudio/digger/top;->saveHigh(J)V

    .line 55
    :cond_0
    return-void
.end method

.method flashywait(I)V
    .locals 2
    .parameter "n"

    .prologue
    .line 58
    mul-int/lit8 v0, p1, 0x2

    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method gethighscore()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/b2bstudio/digger/score;->high:J

    return-wide v0
.end method

.method getinitial(II)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method getinitials()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method getscore()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/b2bstudio/digger/score;->score1:J

    return-wide v0
.end method

.method initscore()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method loadscore()V
    .locals 2

    .prologue
    .line 24
    sget-wide v0, Lcom/b2bstudio/digger/top;->high:J

    iput-wide v0, p0, Lcom/b2bstudio/digger/score;->high:J

    .line 25
    return-void
.end method

.method numtostring(J)Ljava/lang/String;
    .locals 8
    .parameter "n"

    .prologue
    const-wide/16 v6, 0xa

    const/4 v5, 0x6

    .line 75
    const-string v0, ""

    .line 76
    .local v0, p:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, x:I
    :goto_0
    if-lt v1, v5, :cond_0

    .line 84
    :goto_1
    if-lt v1, v5, :cond_2

    .line 86
    return-object v0

    .line 77
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    rem-long v3, p1, v6

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    div-long/2addr p1, v6

    .line 79
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 80
    add-int/lit8 v1, v1, 0x1

    .line 81
    goto :goto_1

    .line 76
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public run()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method savescore()V
    .locals 4

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/b2bstudio/digger/score;->score1:J

    iput-wide v0, p0, Lcom/b2bstudio/digger/score;->scoret:J

    .line 29
    iget-wide v0, p0, Lcom/b2bstudio/digger/score;->high:J

    iget-wide v2, p0, Lcom/b2bstudio/digger/score;->scoret:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 30
    iget-wide v0, p0, Lcom/b2bstudio/digger/score;->scoret:J

    iput-wide v0, p0, Lcom/b2bstudio/digger/score;->high:J

    .line 31
    iget-wide v0, p0, Lcom/b2bstudio/digger/score;->high:J

    invoke-static {v0, v1}, Lcom/b2bstudio/digger/top;->saveHigh(J)V

    .line 33
    :cond_0
    return-void
.end method

.method scorebonus()V
    .locals 1

    .prologue
    .line 94
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/b2bstudio/digger/score;->addscore(I)V

    .line 95
    return-void
.end method

.method scoreeatm()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/b2bstudio/digger/score;->dig:Lcom/b2bstudio/digger/main;

    iget v0, v0, Lcom/b2bstudio/digger/main;->eatmsc:I

    mul-int/lit16 v0, v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/b2bstudio/digger/score;->addscore(I)V

    .line 98
    iget-object v0, p0, Lcom/b2bstudio/digger/score;->dig:Lcom/b2bstudio/digger/main;

    iget v1, v0, Lcom/b2bstudio/digger/main;->eatmsc:I

    shl-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/b2bstudio/digger/main;->eatmsc:I

    .line 99
    return-void
.end method

.method scoreemerald()V
    .locals 1

    .prologue
    .line 101
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/b2bstudio/digger/score;->addscore(I)V

    .line 102
    return-void
.end method

.method scoregold()V
    .locals 1

    .prologue
    .line 104
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/b2bstudio/digger/score;->addscore(I)V

    .line 105
    return-void
.end method

.method scorekill()V
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0xfa

    invoke-virtual {p0, v0}, Lcom/b2bstudio/digger/score;->addscore(I)V

    .line 108
    return-void
.end method

.method scoreoctave()V
    .locals 1

    .prologue
    .line 110
    const/16 v0, 0xfa

    invoke-virtual {p0, v0}, Lcom/b2bstudio/digger/score;->addscore(I)V

    .line 111
    return-void
.end method

.method zeroscore()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 113
    iput-wide v0, p0, Lcom/b2bstudio/digger/score;->score2:J

    .line 114
    iput-wide v0, p0, Lcom/b2bstudio/digger/score;->score1:J

    .line 115
    iput-wide v0, p0, Lcom/b2bstudio/digger/score;->scoret:J

    .line 116
    iget v0, p0, Lcom/b2bstudio/digger/score;->bonusscore:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/b2bstudio/digger/score;->nextbs1:J

    .line 117
    iget v0, p0, Lcom/b2bstudio/digger/score;->bonusscore:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/b2bstudio/digger/score;->nextbs2:J

    .line 118
    return-void
.end method
