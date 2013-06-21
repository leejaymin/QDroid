.class public Lorg/tf/midi/MidiHeader;
.super Ljava/lang/Object;
.source "MidiHeader.java"


# instance fields
.field public final divisionType:F

.field public final resolution:I

.field public final tracks:I

.field public final type:I


# direct methods
.method public constructor <init>(IFII)V
    .locals 0
    .parameter "type"
    .parameter "divisionType"
    .parameter "resolution"
    .parameter "tracks"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lorg/tf/midi/MidiHeader;->type:I

    .line 24
    iput p2, p0, Lorg/tf/midi/MidiHeader;->divisionType:F

    .line 25
    iput p3, p0, Lorg/tf/midi/MidiHeader;->resolution:I

    .line 26
    iput p4, p0, Lorg/tf/midi/MidiHeader;->tracks:I

    .line 27
    return-void
.end method
