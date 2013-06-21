.class public Lorg/tf/song/TempoEvent;
.super Lorg/tf/song/Event;
.source "TempoEvent.java"


# instance fields
.field private m_bpm:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .parameter "bpm"
    .parameter "time"

    .prologue
    .line 6
    invoke-direct {p0, p2, p2}, Lorg/tf/song/Event;-><init>(FF)V

    .line 7
    iput p1, p0, Lorg/tf/song/TempoEvent;->m_bpm:F

    .line 8
    return-void
.end method


# virtual methods
.method public getBPM()F
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lorg/tf/song/TempoEvent;->m_bpm:F

    return v0
.end method
