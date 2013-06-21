.class public interface abstract Lorg/tf/midi/MidiReader$Callback;
.super Ljava/lang/Object;
.source "MidiReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tf/midi/MidiReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/midi/InvalidMidiDataException;
        }
    .end annotation
.end method

.method public abstract onEventDeltaTime(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/midi/InvalidMidiDataException;
        }
    .end annotation
.end method

.method public abstract onMetaEvent(I[BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/midi/InvalidMidiDataException;
        }
    .end annotation
.end method

.method public abstract onMidiEvent(IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/midi/InvalidMidiDataException;
        }
    .end annotation
.end method

.method public abstract onStart(Lorg/tf/midi/MidiHeader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/midi/InvalidMidiDataException;
        }
    .end annotation
.end method

.method public abstract onSysexEvent([BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/midi/InvalidMidiDataException;
        }
    .end annotation
.end method

.method public abstract onTrackEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/midi/InvalidMidiDataException;
        }
    .end annotation
.end method

.method public abstract onTrackStart(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/midi/InvalidMidiDataException;
        }
    .end annotation
.end method
