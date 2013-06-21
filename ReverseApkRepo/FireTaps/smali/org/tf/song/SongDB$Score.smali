.class public Lorg/tf/song/SongDB$Score;
.super Ljava/lang/Object;
.source "SongDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tf/song/SongDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Score"
.end annotation


# instance fields
.field public rating:F

.field public score:I


# direct methods
.method public constructor <init>(IF)V
    .locals 0
    .parameter "score"
    .parameter "rating"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lorg/tf/song/SongDB$Score;->score:I

    .line 55
    iput p2, p0, Lorg/tf/song/SongDB$Score;->rating:F

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/tf/song/SongDB$Score;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iget v0, p1, Lorg/tf/song/SongDB$Score;->score:I

    iput v0, p0, Lorg/tf/song/SongDB$Score;->score:I

    .line 51
    iget v0, p1, Lorg/tf/song/SongDB$Score;->rating:F

    iput v0, p0, Lorg/tf/song/SongDB$Score;->rating:F

    .line 52
    return-void
.end method


# virtual methods
.method public isBetter(Lorg/tf/song/SongDB$Score;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 58
    if-eqz p1, :cond_1

    .line 59
    iget v0, p0, Lorg/tf/song/SongDB$Score;->score:I

    iget v1, p1, Lorg/tf/song/SongDB$Score;->score:I

    if-gt v0, v1, :cond_1

    .line 60
    iget v0, p0, Lorg/tf/song/SongDB$Score;->score:I

    iget v1, p1, Lorg/tf/song/SongDB$Score;->score:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/tf/song/SongDB$Score;->rating:F

    iget v1, p1, Lorg/tf/song/SongDB$Score;->rating:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    .line 58
    goto :goto_0
.end method
