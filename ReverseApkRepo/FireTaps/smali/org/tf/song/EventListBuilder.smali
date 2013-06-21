.class public Lorg/tf/song/EventListBuilder;
.super Lorg/tf/song/EventList;
.source "EventListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tf/song/EventListBuilder$Iterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lorg/tf/song/Event;",
        ">",
        "Lorg/tf/song/EventList",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final GROW_LENGTH:I = 0x20


# instance fields
.field private m_eventCount:I

.field private m_events:[Lorg/tf/song/Event;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    .local p0, this:Lorg/tf/song/EventListBuilder;,"Lorg/tf/song/EventListBuilder<TE;>;"
    invoke-direct {p0}, Lorg/tf/song/EventList;-><init>()V

    .line 24
    const/16 v0, 0x20

    new-array v0, v0, [Lorg/tf/song/Event;

    iput-object v0, p0, Lorg/tf/song/EventListBuilder;->m_events:[Lorg/tf/song/Event;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lorg/tf/song/EventListBuilder;->m_eventCount:I

    .line 26
    return-void
.end method

.method private static isInvalid(F)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 137
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static lowerUpperBound(Z[Lorg/tf/song/Event;IF)I
    .locals 5
    .parameter "lower"
    .parameter "events"
    .parameter "eventCount"
    .parameter "time"

    .prologue
    .line 123
    move v1, p2

    .line 124
    .local v1, high:I
    const/4 v2, -0x1

    .line 125
    .local v2, low:I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    .line 133
    if-eqz p0, :cond_2

    move v3, v2

    :goto_1
    return v3

    .line 126
    :cond_0
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 127
    .local v0, guess:I
    aget-object v3, p1, v0

    invoke-virtual {v3}, Lorg/tf/song/Event;->getTime()F

    move-result v3

    cmpg-float v3, v3, p3

    if-gez v3, :cond_1

    .line 128
    move v2, v0

    goto :goto_0

    .line 130
    :cond_1
    move v1, v0

    goto :goto_0

    .end local v0           #guess:I
    :cond_2
    move v3, v1

    .line 133
    goto :goto_1
.end method


# virtual methods
.method public add(Lorg/tf/song/Event;)I
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/tf/song/EventListBuilder;,"Lorg/tf/song/EventListBuilder<TE;>;"
    .local p1, event:Lorg/tf/song/Event;,"TE;"
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 46
    invoke-virtual {p1}, Lorg/tf/song/Event;->getTime()F

    move-result v6

    .line 47
    .local v6, time:F
    invoke-virtual {p1}, Lorg/tf/song/Event;->getEndTime()F

    move-result v0

    .line 48
    .local v0, endTime:F
    invoke-static {v6}, Lorg/tf/song/EventListBuilder;->isInvalid(F)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v0}, Lorg/tf/song/EventListBuilder;->isInvalid(F)Z

    move-result v7

    if-nez v7, :cond_0

    cmpl-float v7, v6, v0

    if-lez v7, :cond_1

    .line 49
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 51
    :cond_1
    iget-object v7, p0, Lorg/tf/song/EventListBuilder;->m_events:[Lorg/tf/song/Event;

    iget v8, p0, Lorg/tf/song/EventListBuilder;->m_eventCount:I

    invoke-static {v9, v7, v8, v6}, Lorg/tf/song/EventListBuilder;->lowerUpperBound(Z[Lorg/tf/song/Event;IF)I

    move-result v4

    .line 52
    .local v4, low:I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_2

    .line 53
    iget-object v7, p0, Lorg/tf/song/EventListBuilder;->m_events:[Lorg/tf/song/Event;

    aget-object v5, v7, v4

    .line 54
    .local v5, lowEvent:Lorg/tf/song/Event;
    invoke-virtual {v5}, Lorg/tf/song/Event;->getEndTime()F

    move-result v7

    cmpl-float v7, v7, v6

    if-lez v7, :cond_2

    .line 55
    neg-int v7, v4

    sub-int/2addr v7, v9

    .line 75
    .end local v5           #lowEvent:Lorg/tf/song/Event;
    :goto_0
    return v7

    .line 58
    :cond_2
    add-int/lit8 v2, v4, 0x1

    .line 59
    .local v2, high:I
    iget v7, p0, Lorg/tf/song/EventListBuilder;->m_eventCount:I

    if-eq v2, v7, :cond_4

    .line 60
    iget-object v7, p0, Lorg/tf/song/EventListBuilder;->m_events:[Lorg/tf/song/Event;

    aget-object v3, v7, v2

    .line 61
    .local v3, highEvent:Lorg/tf/song/Event;
    invoke-virtual {v3}, Lorg/tf/song/Event;->getTime()F

    move-result v7

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_3

    .line 62
    invoke-virtual {v3}, Lorg/tf/song/Event;->getTime()F

    move-result v7

    cmpl-float v7, v0, v7

    if-lez v7, :cond_4

    .line 64
    :cond_3
    neg-int v7, v2

    sub-int/2addr v7, v9

    goto :goto_0

    .line 67
    .end local v3           #highEvent:Lorg/tf/song/Event;
    :cond_4
    iget v7, p0, Lorg/tf/song/EventListBuilder;->m_eventCount:I

    iget-object v8, p0, Lorg/tf/song/EventListBuilder;->m_events:[Lorg/tf/song/Event;

    array-length v8, v8

    if-ne v7, v8, :cond_5

    .line 68
    iget v7, p0, Lorg/tf/song/EventListBuilder;->m_eventCount:I

    add-int/lit8 v7, v7, 0x20

    new-array v1, v7, [Lorg/tf/song/Event;

    .line 69
    .local v1, events:[Lorg/tf/song/Event;
    iget-object v7, p0, Lorg/tf/song/EventListBuilder;->m_events:[Lorg/tf/song/Event;

    iget v8, p0, Lorg/tf/song/EventListBuilder;->m_eventCount:I

    invoke-static {v7, v10, v1, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    iput-object v1, p0, Lorg/tf/song/EventListBuilder;->m_events:[Lorg/tf/song/Event;

    .line 72
    .end local v1           #events:[Lorg/tf/song/Event;
    :cond_5
    iget-object v7, p0, Lorg/tf/song/EventListBuilder;->m_events:[Lorg/tf/song/Event;

    iget-object v8, p0, Lorg/tf/song/EventListBuilder;->m_events:[Lorg/tf/song/Event;

    add-int/lit8 v9, v2, 0x1

    iget v10, p0, Lorg/tf/song/EventListBuilder;->m_eventCount:I

    sub-int/2addr v10, v2

    invoke-static {v7, v2, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iget-object v7, p0, Lorg/tf/song/EventListBuilder;->m_events:[Lorg/tf/song/Event;

    aput-object p1, v7, v2

    .line 74
    iget v7, p0, Lorg/tf/song/EventListBuilder;->m_eventCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/tf/song/EventListBuilder;->m_eventCount:I

    move v7, v2

    .line 75
    goto :goto_0
.end method

.method public count()I
    .locals 1

    .prologue
    .line 29
    .local p0, this:Lorg/tf/song/EventListBuilder;,"Lorg/tf/song/EventListBuilder<TE;>;"
    iget v0, p0, Lorg/tf/song/EventListBuilder;->m_eventCount:I

    return v0
.end method

.method public get(I)Lorg/tf/song/Event;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, this:Lorg/tf/song/EventListBuilder;,"Lorg/tf/song/EventListBuilder<TE;>;"
    iget-object v0, p0, Lorg/tf/song/EventListBuilder;->m_events:[Lorg/tf/song/Event;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public lowerBound(F)I
    .locals 3
    .parameter "time"

    .prologue
    .line 79
    .local p0, this:Lorg/tf/song/EventListBuilder;,"Lorg/tf/song/EventListBuilder<TE;>;"
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/tf/song/EventListBuilder;->m_events:[Lorg/tf/song/Event;

    iget v2, p0, Lorg/tf/song/EventListBuilder;->m_eventCount:I

    invoke-static {v0, v1, v2, p1}, Lorg/tf/song/EventListBuilder;->lowerUpperBound(Z[Lorg/tf/song/Event;IF)I

    move-result v0

    return v0
.end method

.method public range(FF)J
    .locals 5
    .parameter "time"
    .parameter "endTime"

    .prologue
    .line 87
    .local p0, this:Lorg/tf/song/EventListBuilder;,"Lorg/tf/song/EventListBuilder<TE;>;"
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 90
    :cond_1
    cmpl-float v2, p1, p2

    if-lez v2, :cond_2

    .line 91
    const-wide/16 v2, 0x0

    .line 109
    :goto_0
    return-wide v2

    .line 93
    :cond_2
    const/4 v2, 0x1

    iget-object v3, p0, Lorg/tf/song/EventListBuilder;->m_events:[Lorg/tf/song/Event;

    iget v4, p0, Lorg/tf/song/EventListBuilder;->m_eventCount:I

    invoke-static {v2, v3, v4, p1}, Lorg/tf/song/EventListBuilder;->lowerUpperBound(Z[Lorg/tf/song/Event;IF)I

    move-result v0

    .line 94
    .local v0, i:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_6

    .line 95
    const/4 v0, 0x0

    .line 103
    :cond_3
    :goto_1
    move v1, v0

    .line 104
    .local v1, j:I
    :goto_2
    iget v2, p0, Lorg/tf/song/EventListBuilder;->m_eventCount:I

    if-ne v1, v2, :cond_7

    .line 109
    :cond_4
    invoke-static {v0, v1}, Lorg/tf/song/EventListBuilder;->rangeMake(II)J

    move-result-wide v2

    goto :goto_0

    .line 98
    .end local v1           #j:I
    :cond_5
    iget-object v2, p0, Lorg/tf/song/EventListBuilder;->m_events:[Lorg/tf/song/Event;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/tf/song/Event;->getEndTime()F

    move-result v2

    cmpl-float v2, v2, p1

    if-gtz v2, :cond_3

    .line 97
    add-int/lit8 v0, v0, 0x1

    :cond_6
    iget v2, p0, Lorg/tf/song/EventListBuilder;->m_eventCount:I

    if-ne v0, v2, :cond_5

    goto :goto_1

    .line 105
    .restart local v1       #j:I
    :cond_7
    iget-object v2, p0, Lorg/tf/song/EventListBuilder;->m_events:[Lorg/tf/song/Event;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/tf/song/Event;->getTime()F

    move-result v2

    cmpl-float v2, v2, p2

    if-gez v2, :cond_4

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public remove(II)V
    .locals 4
    .parameter "index"
    .parameter "count"

    .prologue
    .line 37
    .local p0, this:Lorg/tf/song/EventListBuilder;,"Lorg/tf/song/EventListBuilder<TE;>;"
    if-ltz p1, :cond_0

    iget v1, p0, Lorg/tf/song/EventListBuilder;->m_eventCount:I

    if-ge p1, v1, :cond_0

    if-gtz p2, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    add-int v1, p1, p2

    iget v2, p0, Lorg/tf/song/EventListBuilder;->m_eventCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 41
    .local v0, lastIndex:I
    iget-object v1, p0, Lorg/tf/song/EventListBuilder;->m_events:[Lorg/tf/song/Event;

    iget-object v2, p0, Lorg/tf/song/EventListBuilder;->m_events:[Lorg/tf/song/Event;

    iget v3, p0, Lorg/tf/song/EventListBuilder;->m_eventCount:I

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    iget v1, p0, Lorg/tf/song/EventListBuilder;->m_eventCount:I

    sub-int v2, v0, p1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/tf/song/EventListBuilder;->m_eventCount:I

    goto :goto_0
.end method

.method public upperBound(F)I
    .locals 3
    .parameter "time"

    .prologue
    .line 83
    .local p0, this:Lorg/tf/song/EventListBuilder;,"Lorg/tf/song/EventListBuilder<TE;>;"
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/tf/song/EventListBuilder;->m_events:[Lorg/tf/song/Event;

    iget v2, p0, Lorg/tf/song/EventListBuilder;->m_eventCount:I

    invoke-static {v0, v1, v2, p1}, Lorg/tf/song/EventListBuilder;->lowerUpperBound(Z[Lorg/tf/song/Event;IF)I

    move-result v0

    return v0
.end method
