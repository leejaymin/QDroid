.class public Lorg/tf/midi/MidiDataInputStream;
.super Ljava/io/DataInputStream;
.source "MidiDataInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "is"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 28
    return-void
.end method


# virtual methods
.method public readVariableLengthInt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/tf/midi/MidiDataInputStream;->readByte()B

    move-result v1

    .line 32
    .local v1, result:I
    and-int/lit16 v3, v1, 0x80

    if-nez v3, :cond_0

    move v2, v1

    .line 43
    .end local v1           #result:I
    .local v2, result:I
    :goto_0
    return v2

    .line 35
    .end local v2           #result:I
    .restart local v1       #result:I
    :cond_0
    and-int/lit8 v1, v1, 0x7f

    .line 37
    :cond_1
    invoke-virtual {p0}, Lorg/tf/midi/MidiDataInputStream;->readByte()B

    move-result v0

    .line 38
    .local v0, b:I
    shl-int/lit8 v3, v1, 0x7

    and-int/lit8 v4, v0, 0x7f

    add-int v1, v3, v4

    .line 39
    and-int/lit16 v3, v0, 0x80

    if-nez v3, :cond_1

    move v2, v1

    .line 43
    .end local v1           #result:I
    .restart local v2       #result:I
    goto :goto_0
.end method
