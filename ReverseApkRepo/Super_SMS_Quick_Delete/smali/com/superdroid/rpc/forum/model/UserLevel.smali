.class public Lcom/superdroid/rpc/forum/model/UserLevel;
.super Ljava/lang/Object;
.source "UserLevel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final USER_LEVEL_0_SCORE:J = 0x0L

.field public static final USER_LEVEL_1_SCORE:J = 0x64L

.field public static final USER_LEVEL_2_SCORE:J = 0x3e8L

.field public static final USER_LEVEL_3_SCORE:J = 0x4e20L

.field public static final USER_LEVEL_4_SCORE:J = 0x186a0L

.field public static final USER_LEVEL_CONTRIBUTOR:I = 0x2

.field public static final USER_LEVEL_FRESH_MAN:I = 0x0

.field public static final USER_LEVEL_JUNIOR_CONTRIBUTOR:I = 0x1

.field public static final USER_LEVEL_SENIOR_CONTRIBUTOR:I = 0x3

.field public static final USER_LEVEL_TOP_CONTRIBUTOR:I = 0x4

.field private static final serialVersionUID:J = 0x1e31ce8c32992725L


# instance fields
.field private _id:J

.field private _level:I

.field private _levelScore:J


# direct methods
.method public constructor <init>(JIJ)V
    .locals 0
    .parameter "id"
    .parameter "level"
    .parameter "levelScore"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/UserLevel;->_id:J

    .line 57
    iput p3, p0, Lcom/superdroid/rpc/forum/model/UserLevel;->_level:I

    .line 58
    iput-wide p4, p0, Lcom/superdroid/rpc/forum/model/UserLevel;->_levelScore:J

    .line 59
    return-void
.end method

.method public static getLevelByScore(J)I
    .locals 2
    .parameter "score"

    .prologue
    .line 33
    const-wide/16 v0, 0x64

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    .line 35
    :cond_0
    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 36
    const/4 v0, 0x1

    goto :goto_0

    .line 37
    :cond_1
    const-wide/16 v0, 0x4e20

    cmp-long v0, p0, v0

    if-gez v0, :cond_2

    .line 38
    const/4 v0, 0x2

    goto :goto_0

    .line 39
    :cond_2
    const-wide/32 v0, 0x186a0

    cmp-long v0, p0, v0

    if-gez v0, :cond_3

    .line 40
    const/4 v0, 0x3

    goto :goto_0

    .line 42
    :cond_3
    const/4 v0, 0x4

    goto :goto_0
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/UserLevel;->_id:J

    return-wide v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/superdroid/rpc/forum/model/UserLevel;->_level:I

    return v0
.end method

.method public getLevelScore()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/UserLevel;->_levelScore:J

    return-wide v0
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/UserLevel;->_id:J

    .line 67
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 74
    iput p1, p0, Lcom/superdroid/rpc/forum/model/UserLevel;->_level:I

    .line 75
    return-void
.end method

.method public setLevelScore(J)V
    .locals 0
    .parameter "levelScore"

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/UserLevel;->_levelScore:J

    .line 83
    return-void
.end method
