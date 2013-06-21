.class public abstract Lorg/tf/song/EventList;
.super Ljava/lang/Object;
.source "EventList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lorg/tf/song/Event;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    .local p0, this:Lorg/tf/song/EventList;,"Lorg/tf/song/EventList<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rangeBegin(J)I
    .locals 2
    .parameter "range"

    .prologue
    .line 30
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static rangeEmpty(J)Z
    .locals 2
    .parameter "range"

    .prologue
    .line 36
    invoke-static {p0, p1}, Lorg/tf/song/EventList;->rangeBegin(J)I

    move-result v0

    invoke-static {p0, p1}, Lorg/tf/song/EventList;->rangeEnd(J)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static rangeEnd(J)I
    .locals 1
    .parameter "range"

    .prologue
    .line 33
    long-to-int v0, p0

    return v0
.end method

.method public static rangeMake(II)J
    .locals 4
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 39
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public abstract count()I
.end method

.method public abstract get(I)Lorg/tf/song/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public abstract lowerBound(F)I
.end method

.method public abstract range(FF)J
.end method

.method public abstract upperBound(F)I
.end method
