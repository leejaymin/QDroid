.class public Lorg/tf/song/Note;
.super Ljava/lang/Object;
.source "Note.java"


# instance fields
.field private m_endTime:J

.field private m_sTime:J

.field private m_string:I


# direct methods
.method public constructor <init>(IJJ)V
    .locals 0
    .parameter "string"
    .parameter "time"
    .parameter "endTime"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lorg/tf/song/Note;->m_string:I

    .line 9
    iput-wide p2, p0, Lorg/tf/song/Note;->m_sTime:J

    .line 10
    iput-wide p4, p0, Lorg/tf/song/Note;->m_endTime:J

    .line 11
    return-void
.end method


# virtual methods
.method public getEndTime()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lorg/tf/song/Note;->m_endTime:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lorg/tf/song/Note;->m_sTime:J

    return-wide v0
.end method

.method public getString()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lorg/tf/song/Note;->m_string:I

    return v0
.end method

.method public setEndTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 26
    iput-wide p1, p0, Lorg/tf/song/Note;->m_endTime:J

    .line 27
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 34
    iput-wide p1, p0, Lorg/tf/song/Note;->m_sTime:J

    .line 35
    return-void
.end method

.method public setString(I)V
    .locals 0
    .parameter "string"

    .prologue
    .line 18
    iput p1, p0, Lorg/tf/song/Note;->m_string:I

    .line 19
    return-void
.end method
