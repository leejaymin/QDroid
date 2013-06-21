.class public Lorg/tf/song/Event;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field private m_endTime:F

.field private m_time:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .parameter "time"
    .parameter "endTime"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lorg/tf/song/Event;->m_time:F

    .line 23
    iput p2, p0, Lorg/tf/song/Event;->m_endTime:F

    .line 24
    return-void
.end method


# virtual methods
.method public final getEndTime()F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lorg/tf/song/Event;->m_endTime:F

    return v0
.end method

.method public final getLength()F
    .locals 2

    .prologue
    .line 31
    iget v0, p0, Lorg/tf/song/Event;->m_endTime:F

    iget v1, p0, Lorg/tf/song/Event;->m_time:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getTime()F
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lorg/tf/song/Event;->m_time:F

    return v0
.end method
