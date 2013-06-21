.class public Lorg/tf/midi/MidiReader;
.super Ljava/lang/Object;
.source "MidiReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tf/midi/MidiReader$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureBufferLength([BI)[B
    .locals 1
    .parameter "buffer"
    .parameter "length"

    .prologue
    .line 237
    if-eqz p0, :cond_0

    array-length v0, p0

    if-ge v0, p1, :cond_1

    .line 238
    :cond_0
    new-array v0, p1, [B

    .line 240
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public static read(Lorg/tf/midi/MidiReader$Callback;Ljava/io/File;)V
    .locals 4
    .parameter "callback"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v1, v2

    .line 63
    .local v1, length:I
    new-array v0, v1, [B

    .line 64
    .local v0, data:[B
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 65
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p0, v2}, Lorg/tf/midi/MidiReader;->read(Lorg/tf/midi/MidiReader$Callback;Ljava/io/InputStream;)V

    .line 66
    return-void
.end method

.method public static read(Lorg/tf/midi/MidiReader$Callback;Ljava/io/InputStream;)V
    .locals 9
    .parameter "callback"
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v2, Lorg/tf/midi/MidiDataInputStream;

    invoke-direct {v2, p1}, Lorg/tf/midi/MidiDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 72
    .local v2, din:Lorg/tf/midi/MidiDataInputStream;
    invoke-static {v2}, Lorg/tf/midi/MidiReader;->readHeader(Ljava/io/InputStream;)Lorg/tf/midi/MidiHeader;

    move-result-object v4

    .line 73
    .local v4, header:Lorg/tf/midi/MidiHeader;
    invoke-interface {p0, v4}, Lorg/tf/midi/MidiReader$Callback;->onStart(Lorg/tf/midi/MidiHeader;)V

    .line 75
    const/4 p1, 0x0

    check-cast p1, [B

    .line 76
    .local p1, dataBuffer:[B
    const/4 v0, 0x0

    .local v0, track:I
    move v8, v0

    .end local v0           #track:I
    .local v8, track:I
    :goto_0
    iget v0, v4, Lorg/tf/midi/MidiHeader;->tracks:I

    if-ne v8, v0, :cond_0

    .line 167
    invoke-interface {p0}, Lorg/tf/midi/MidiReader$Callback;->onEnd()V

    .line 168
    return-void

    .line 77
    :cond_0
    invoke-virtual {v2}, Lorg/tf/midi/MidiDataInputStream;->readInt()I

    move-result v0

    const v1, 0x4d54726b

    if-eq v0, v1, :cond_1

    .line 78
    new-instance p0, Lorg/tf/midi/InvalidMidiDataException;

    .end local p0
    const-string p1, "Invalid MIDI track header."

    .end local p1           #dataBuffer:[B
    invoke-direct {p0, p1}, Lorg/tf/midi/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 80
    .restart local p0
    .restart local p1       #dataBuffer:[B
    :cond_1
    invoke-interface {p0, v8}, Lorg/tf/midi/MidiReader$Callback;->onTrackStart(I)V

    .line 81
    invoke-virtual {v2}, Lorg/tf/midi/MidiDataInputStream;->readInt()I

    .line 82
    const/4 v1, -0x1

    .line 83
    .local v1, runningStatus:I
    const/4 v0, 0x0

    .local v0, done:Z
    move v3, v0

    .end local v0           #done:Z
    .local v3, done:Z
    move v6, v1

    .end local v1           #runningStatus:I
    .local v6, runningStatus:I
    move-object v1, p1

    .end local p1           #dataBuffer:[B
    .local v1, dataBuffer:[B
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 165
    invoke-interface {p0}, Lorg/tf/midi/MidiReader$Callback;->onTrackEnd()V

    .line 76
    add-int/lit8 p1, v8, 0x1

    .end local v8           #track:I
    .local p1, track:I
    move v8, p1

    .end local p1           #track:I
    .restart local v8       #track:I
    move-object p1, v1

    .end local v1           #dataBuffer:[B
    .local p1, dataBuffer:[B
    goto :goto_0

    .line 84
    .end local p1           #dataBuffer:[B
    .restart local v1       #dataBuffer:[B
    :cond_3
    invoke-virtual {v2}, Lorg/tf/midi/MidiDataInputStream;->readVariableLengthInt()I

    move-result p1

    .line 85
    .local p1, deltaTime:I
    invoke-interface {p0, p1}, Lorg/tf/midi/MidiReader$Callback;->onEventDeltaTime(I)V

    .line 87
    invoke-virtual {v2}, Lorg/tf/midi/MidiDataInputStream;->readByte()B

    move-result p1

    .end local p1           #deltaTime:I
    and-int/lit16 v5, p1, 0xff

    .line 88
    .local v5, sbyte:I
    const/16 p1, 0xf0

    if-ge v5, p1, :cond_5

    .line 90
    move v7, v5

    .line 91
    .local v7, status:I
    const/4 p1, 0x0

    .local p1, data1:I
    const/4 v0, 0x0

    .line 93
    .local v0, data2:I
    and-int/lit16 p1, v5, 0xf0

    sparse-switch p1, :sswitch_data_0

    .line 111
    .end local p1           #data1:I
    and-int/lit16 p1, v5, 0x80

    if-nez p1, :cond_2

    .line 114
    const/4 p1, -0x1

    if-eq v6, p1, :cond_4

    .line 115
    and-int/lit16 p1, v6, 0xf0

    sparse-switch p1, :sswitch_data_1

    .line 133
    new-instance p0, Lorg/tf/midi/InvalidMidiDataException;

    .line 134
    .end local p0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid Short MIDI Event: "

    .end local v0           #data2:I
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-direct {p0, p1}, Lorg/tf/midi/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    .restart local v0       #data2:I
    .restart local p0
    :sswitch_0
    invoke-virtual {v2}, Lorg/tf/midi/MidiDataInputStream;->readByte()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    .line 100
    .restart local p1       #data1:I
    invoke-virtual {v2}, Lorg/tf/midi/MidiDataInputStream;->readByte()B

    move-result v0

    .end local v0           #data2:I
    and-int/lit16 v0, v0, 0xff

    .line 101
    .restart local v0       #data2:I
    move v5, v5

    .end local v6           #runningStatus:I
    .local v5, runningStatus:I
    move v6, v7

    .line 144
    .end local v7           #status:I
    .local v6, status:I
    :goto_2
    and-int/lit16 v7, v6, 0xf0

    and-int/lit8 v6, v6, 0xf

    invoke-interface {p0, v7, v6, p1, v0}, Lorg/tf/midi/MidiReader$Callback;->onMidiEvent(IIII)V

    .end local v6           #status:I
    move v6, v5

    .end local v5           #runningStatus:I
    .local v6, runningStatus:I
    goto :goto_1

    .line 106
    .end local p1           #data1:I
    .local v5, sbyte:I
    .restart local v7       #status:I
    :sswitch_1
    invoke-virtual {v2}, Lorg/tf/midi/MidiDataInputStream;->readByte()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    .line 107
    .restart local p1       #data1:I
    move v5, v5

    .end local v6           #runningStatus:I
    .local v5, runningStatus:I
    move v6, v7

    .line 108
    .end local v7           #status:I
    .local v6, status:I
    goto :goto_2

    .line 121
    .end local p1           #data1:I
    .local v5, sbyte:I
    .local v6, runningStatus:I
    .restart local v7       #status:I
    :sswitch_2
    move v7, v6

    .line 122
    move p1, v5

    .line 123
    .restart local p1       #data1:I
    invoke-virtual {v2}, Lorg/tf/midi/MidiDataInputStream;->readByte()B

    move-result v0

    .end local v0           #data2:I
    and-int/lit16 v0, v0, 0xff

    .restart local v0       #data2:I
    move v5, v6

    .end local v6           #runningStatus:I
    .local v5, runningStatus:I
    move v6, v7

    .line 124
    .end local v7           #status:I
    .local v6, status:I
    goto :goto_2

    .line 128
    .end local p1           #data1:I
    .local v5, sbyte:I
    .local v6, runningStatus:I
    .restart local v7       #status:I
    :sswitch_3
    move v7, v6

    .line 129
    move p1, v5

    .restart local p1       #data1:I
    move v5, v6

    .end local v6           #runningStatus:I
    .local v5, runningStatus:I
    move v6, v7

    .line 130
    .end local v7           #status:I
    .local v6, status:I
    goto :goto_2

    .line 139
    .end local p1           #data1:I
    .local v5, sbyte:I
    .local v6, runningStatus:I
    .restart local v7       #status:I
    :cond_4
    new-instance p0, Lorg/tf/midi/InvalidMidiDataException;

    .line 140
    .end local p0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid Short MIDI Event: "

    .end local v0           #data2:I
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-direct {p0, p1}, Lorg/tf/midi/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 145
    .end local v7           #status:I
    .restart local p0
    :cond_5
    const/16 p1, 0xf0

    if-eq v5, p1, :cond_6

    const/16 p1, 0xf7

    if-ne v5, p1, :cond_7

    .line 147
    :cond_6
    invoke-virtual {v2}, Lorg/tf/midi/MidiDataInputStream;->readVariableLengthInt()I

    move-result v0

    .line 148
    .local v0, dataLength:I
    invoke-static {v1, v0}, Lorg/tf/midi/MidiReader;->ensureBufferLength([BI)[B

    move-result-object p1

    .line 149
    .end local v1           #dataBuffer:[B
    .local p1, dataBuffer:[B
    const/4 v1, 0x0

    invoke-virtual {v2, p1, v1, v0}, Lorg/tf/midi/MidiDataInputStream;->readFully([BII)V

    .line 150
    invoke-interface {p0, p1, v0}, Lorg/tf/midi/MidiReader$Callback;->onSysexEvent([BI)V

    move-object v1, p1

    .end local p1           #dataBuffer:[B
    .restart local v1       #dataBuffer:[B
    goto/16 :goto_1

    .line 151
    .end local v0           #dataLength:I
    :cond_7
    const/16 p1, 0xff

    if-ne v5, p1, :cond_8

    .line 153
    invoke-virtual {v2}, Lorg/tf/midi/MidiDataInputStream;->readByte()B

    move-result v5

    .line 154
    .local v5, mtype:B
    invoke-virtual {v2}, Lorg/tf/midi/MidiDataInputStream;->readVariableLengthInt()I

    move-result v0

    .line 155
    .restart local v0       #dataLength:I
    invoke-static {v1, v0}, Lorg/tf/midi/MidiReader;->ensureBufferLength([BI)[B

    move-result-object p1

    .line 156
    .end local v1           #dataBuffer:[B
    .restart local p1       #dataBuffer:[B
    const/4 v1, 0x0

    invoke-virtual {v2, p1, v1, v0}, Lorg/tf/midi/MidiDataInputStream;->readFully([BII)V

    .line 157
    and-int/lit16 v1, v5, 0xff

    invoke-interface {p0, v1, p1, v0}, Lorg/tf/midi/MidiReader$Callback;->onMetaEvent(I[BI)V

    .line 158
    const/16 v0, 0x2f

    if-ne v5, v0, :cond_9

    .line 159
    .end local v0           #dataLength:I
    const/4 v0, 0x1

    .end local v3           #done:Z
    .local v0, done:Z
    move v3, v0

    .end local v0           #done:Z
    .restart local v3       #done:Z
    move-object v1, p1

    .end local p1           #dataBuffer:[B
    .restart local v1       #dataBuffer:[B
    goto/16 :goto_1

    .line 162
    .local v5, sbyte:I
    :cond_8
    new-instance p0, Lorg/tf/midi/InvalidMidiDataException;

    .end local p0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid status byte: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/tf/midi/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw p0

    .end local v1           #dataBuffer:[B
    .local v5, mtype:B
    .restart local p0
    .restart local p1       #dataBuffer:[B
    :cond_9
    move-object v1, p1

    .end local p1           #dataBuffer:[B
    .restart local v1       #dataBuffer:[B
    goto/16 :goto_1

    .line 93
    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_0
        0x90 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xb0 -> :sswitch_0
        0xc0 -> :sswitch_1
        0xd0 -> :sswitch_1
        0xe0 -> :sswitch_0
    .end sparse-switch

    .line 115
    :sswitch_data_1
    .sparse-switch
        0x80 -> :sswitch_2
        0x90 -> :sswitch_2
        0xa0 -> :sswitch_2
        0xb0 -> :sswitch_2
        0xc0 -> :sswitch_3
        0xd0 -> :sswitch_3
        0xe0 -> :sswitch_2
    .end sparse-switch
.end method

.method private static readHeader(Ljava/io/InputStream;)Lorg/tf/midi/MidiHeader;
    .locals 11
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tf/midi/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x6

    .line 176
    instance-of v8, p0, Ljava/io/DataInputStream;

    if-eqz v8, :cond_0

    .line 177
    move-object v0, p0

    check-cast v0, Ljava/io/DataInputStream;

    move-object v2, v0

    .line 183
    .local v2, din:Ljava/io/DataInputStream;
    :goto_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    const v9, 0x4d546864

    if-eq v8, v9, :cond_1

    .line 184
    new-instance v8, Lorg/tf/midi/InvalidMidiDataException;

    .line 185
    const-string v9, "Invalid MIDI chunk header."

    .line 184
    invoke-direct {v8, v9}, Lorg/tf/midi/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 179
    .end local v2           #din:Ljava/io/DataInputStream;
    :cond_0
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .restart local v2       #din:Ljava/io/DataInputStream;
    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 189
    .local v1, bytes:I
    if-ge v1, v10, :cond_2

    .line 190
    new-instance v8, Lorg/tf/midi/InvalidMidiDataException;

    .line 191
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Invalid MIDI chunk header length: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 190
    invoke-direct {v8, v9}, Lorg/tf/midi/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 194
    :cond_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    .line 195
    .local v7, type:I
    if-ltz v7, :cond_3

    const/4 v8, 0x2

    if-le v7, v8, :cond_4

    .line 196
    :cond_3
    new-instance v8, Lorg/tf/midi/InvalidMidiDataException;

    .line 197
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Invalid MIDI file type value: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 196
    invoke-direct {v8, v9}, Lorg/tf/midi/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 200
    :cond_4
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    .line 201
    .local v6, tracks:I
    if-gtz v6, :cond_5

    .line 202
    new-instance v8, Lorg/tf/midi/InvalidMidiDataException;

    .line 203
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Invalid number of MIDI tracks: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 202
    invoke-direct {v8, v9}, Lorg/tf/midi/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 206
    :cond_5
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    .line 207
    .local v3, division:I
    const v8, 0x8000

    and-int/2addr v8, v3

    if-eqz v8, :cond_6

    .line 208
    ushr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    neg-int v3, v8

    .line 209
    packed-switch v3, :pswitch_data_0

    .line 223
    :pswitch_0
    new-instance v8, Lorg/tf/midi/InvalidMidiDataException;

    .line 224
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Invalid MIDI frame division type: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 223
    invoke-direct {v8, v9}, Lorg/tf/midi/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 211
    :pswitch_1
    const/high16 v4, 0x41c0

    .line 227
    .local v4, divisionType:F
    :goto_1
    and-int/lit16 v5, v3, 0xff

    .line 232
    .local v5, resolution:I
    :goto_2
    sub-int v8, v1, v10

    int-to-long v8, v8

    invoke-virtual {v2, v8, v9}, Ljava/io/DataInputStream;->skip(J)J

    .line 233
    new-instance v8, Lorg/tf/midi/MidiHeader;

    invoke-direct {v8, v7, v4, v5, v6}, Lorg/tf/midi/MidiHeader;-><init>(IFII)V

    return-object v8

    .line 214
    .end local v4           #divisionType:F
    .end local v5           #resolution:I
    :pswitch_2
    const/high16 v4, 0x41c8

    .line 215
    .restart local v4       #divisionType:F
    goto :goto_1

    .line 217
    .end local v4           #divisionType:F
    :pswitch_3
    const v4, 0x41efc28f

    .line 218
    .restart local v4       #divisionType:F
    goto :goto_1

    .line 220
    .end local v4           #divisionType:F
    :pswitch_4
    const/high16 v4, 0x41f0

    .line 221
    .restart local v4       #divisionType:F
    goto :goto_1

    .line 229
    .end local v4           #divisionType:F
    :cond_6
    const/4 v4, 0x0

    .line 230
    .restart local v4       #divisionType:F
    and-int/lit16 v5, v3, 0x7fff

    .restart local v5       #resolution:I
    goto :goto_2

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
