.class public Lorg/tf/midi/MidiCallbackHelper;
.super Ljava/lang/Object;
.source "MidiCallbackHelper.java"

# interfaces
.implements Lorg/tf/midi/MidiReader$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public noteOnOff(ZIII)V
    .locals 0
    .parameter "on"
    .parameter "channel"
    .parameter "note"
    .parameter "velocity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/midi/InvalidMidiDataException;
        }
    .end annotation

    .prologue
    .line 90
    return-void
.end method

.method public onEnd()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/midi/InvalidMidiDataException;
        }
    .end annotation

    .prologue
    .line 83
    return-void
.end method

.method public onEventDeltaTime(I)V
    .locals 0
    .parameter "deltaTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/midi/InvalidMidiDataException;
        }
    .end annotation

    .prologue
    .line 33
    return-void
.end method

.method public onMetaEvent(I[BI)V
    .locals 2
    .parameter "type"
    .parameter "dataBuffer"
    .parameter "dataLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/midi/InvalidMidiDataException;
        }
    .end annotation

    .prologue
    .line 61
    packed-switch p1, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 64
    :pswitch_0
    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    .line 65
    new-instance v0, Lorg/tf/midi/InvalidMidiDataException;

    const-string v1, "Invalid tempo event."

    invoke-direct {v0, v1}, Lorg/tf/midi/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    const/4 v0, 0x0

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 69
    const/4 v1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 68
    or-int/2addr v0, v1

    .line 70
    const/4 v1, 0x2

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    .line 68
    or-int/2addr v0, v1

    .line 67
    invoke-virtual {p0, v0}, Lorg/tf/midi/MidiCallbackHelper;->tempo(I)V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x51
        :pswitch_0
    .end packed-switch
.end method

.method public onMidiEvent(IIII)V
    .locals 1
    .parameter "command"
    .parameter "channel"
    .parameter "data1"
    .parameter "data2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/midi/InvalidMidiDataException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 37
    sparse-switch p1, :sswitch_data_0

    .line 53
    :goto_0
    return-void

    .line 40
    :sswitch_0
    if-nez p4, :cond_0

    .line 41
    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/tf/midi/MidiCallbackHelper;->noteOnOff(ZIII)V

    goto :goto_0

    .line 43
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/tf/midi/MidiCallbackHelper;->noteOnOff(ZIII)V

    goto :goto_0

    .line 49
    :sswitch_1
    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/tf/midi/MidiCallbackHelper;->noteOnOff(ZIII)V

    goto :goto_0

    .line 37
    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_1
        0x90 -> :sswitch_0
    .end sparse-switch
.end method

.method public onStart(Lorg/tf/midi/MidiHeader;)V
    .locals 0
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/midi/InvalidMidiDataException;
        }
    .end annotation

    .prologue
    .line 25
    return-void
.end method

.method public onSysexEvent([BI)V
    .locals 0
    .parameter "dataBuffer"
    .parameter "dataLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/midi/InvalidMidiDataException;
        }
    .end annotation

    .prologue
    .line 57
    return-void
.end method

.method public onTrackEnd()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/midi/InvalidMidiDataException;
        }
    .end annotation

    .prologue
    .line 79
    return-void
.end method

.method public onTrackStart(I)V
    .locals 0
    .parameter "track"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/midi/InvalidMidiDataException;
        }
    .end annotation

    .prologue
    .line 29
    return-void
.end method

.method public tempo(I)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/midi/InvalidMidiDataException;
        }
    .end annotation

    .prologue
    .line 94
    return-void
.end method
