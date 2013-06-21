.class public Lorg/tf/song/NoteEvent;
.super Lorg/tf/song/Event;
.source "NoteEvent.java"


# static fields
.field public static final STATE_INTACT:I = 0x0

.field public static final STATE_MISSED:I = 0x5

.field public static final STATE_PICKED:I = 0x1

.field public static final STATE_PICK_ENDED:I = 0x4

.field public static final STATE_REPICKED:I = 0x2

.field public static final STATE_UNPICKED:I = 0x3


# instance fields
.field private m_string:I

.field public state:I

.field public unpickPosition:I


# direct methods
.method public constructor <init>(IFF)V
    .locals 1
    .parameter "string"
    .parameter "time"
    .parameter "endTime"

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p2, p3}, Lorg/tf/song/Event;-><init>(FF)V

    .line 90
    iput v0, p0, Lorg/tf/song/NoteEvent;->state:I

    .line 91
    iput v0, p0, Lorg/tf/song/NoteEvent;->unpickPosition:I

    .line 26
    iput p1, p0, Lorg/tf/song/NoteEvent;->m_string:I

    .line 27
    return-void
.end method


# virtual methods
.method public endPick()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x4

    iput v0, p0, Lorg/tf/song/NoteEvent;->state:I

    .line 80
    return-void
.end method

.method public getString()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lorg/tf/song/NoteEvent;->m_string:I

    return v0
.end method

.method public getUnpickPosition()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lorg/tf/song/NoteEvent;->unpickPosition:I

    return v0
.end method

.method public isIntact()Z
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lorg/tf/song/NoteEvent;->state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMissed()Z
    .locals 2

    .prologue
    .line 83
    iget v0, p0, Lorg/tf/song/NoteEvent;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPickEnded()Z
    .locals 2

    .prologue
    .line 76
    iget v0, p0, Lorg/tf/song/NoteEvent;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPicked()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 52
    iget v0, p0, Lorg/tf/song/NoteEvent;->state:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lorg/tf/song/NoteEvent;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public isRepicked()Z
    .locals 2

    .prologue
    .line 62
    iget v0, p0, Lorg/tf/song/NoteEvent;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnpicked()Z
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lorg/tf/song/NoteEvent;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeIntact()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lorg/tf/song/NoteEvent;->state:I

    .line 44
    iput v0, p0, Lorg/tf/song/NoteEvent;->unpickPosition:I

    .line 45
    return-void
.end method

.method public pick()V
    .locals 2

    .prologue
    .line 55
    iget v0, p0, Lorg/tf/song/NoteEvent;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 56
    const/4 v0, 0x2

    iput v0, p0, Lorg/tf/song/NoteEvent;->state:I

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lorg/tf/song/NoteEvent;->state:I

    goto :goto_0
.end method

.method public setMissed()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "taps"

    const-string v1, "state set to missed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v0, 0x5

    iput v0, p0, Lorg/tf/song/NoteEvent;->state:I

    .line 88
    return-void
.end method

.method setString(I)V
    .locals 0
    .parameter "string"

    .prologue
    .line 104
    iput p1, p0, Lorg/tf/song/NoteEvent;->m_string:I

    .line 105
    return-void
.end method

.method public unpick(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 71
    const/4 v0, 0x3

    iput v0, p0, Lorg/tf/song/NoteEvent;->state:I

    .line 72
    iput p1, p0, Lorg/tf/song/NoteEvent;->unpickPosition:I

    .line 73
    return-void
.end method
