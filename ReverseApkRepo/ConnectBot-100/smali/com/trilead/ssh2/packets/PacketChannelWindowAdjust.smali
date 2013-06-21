.class public Lcom/trilead/ssh2/packets/PacketChannelWindowAdjust;
.super Ljava/lang/Object;
.source "PacketChannelWindowAdjust.java"


# instance fields
.field payload:[B

.field public recipientChannelID:I

.field public windowChange:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "recipientChannelID"
    .parameter "windowChange"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/trilead/ssh2/packets/PacketChannelWindowAdjust;->recipientChannelID:I

    .line 21
    iput p2, p0, Lcom/trilead/ssh2/packets/PacketChannelWindowAdjust;->windowChange:I

    .line 22
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 5
    .parameter "payload"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-array v2, p3, [B

    iput-object v2, p0, Lcom/trilead/ssh2/packets/PacketChannelWindowAdjust;->payload:[B

    .line 27
    iget-object v2, p0, Lcom/trilead/ssh2/packets/PacketChannelWindowAdjust;->payload:[B

    const/4 v3, 0x0

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    new-instance v1, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v1, p1, p2, p3}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([BII)V

    .line 31
    .local v1, tr:Lcom/trilead/ssh2/packets/TypesReader;
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result v0

    .line 33
    .local v0, packet_type:I
    const/16 v2, 0x5d

    if-eq v0, v2, :cond_0

    .line 34
    new-instance v2, Ljava/io/IOException;

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "This is not a SSH_MSG_CHANNEL_WINDOW_ADJUST! ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 38
    :cond_0
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v2

    iput v2, p0, Lcom/trilead/ssh2/packets/PacketChannelWindowAdjust;->recipientChannelID:I

    .line 39
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v2

    iput v2, p0, Lcom/trilead/ssh2/packets/PacketChannelWindowAdjust;->windowChange:I

    .line 41
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Padding in SSH_MSG_CHANNEL_WINDOW_ADJUST packet!"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 43
    :cond_1
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .prologue
    .line 47
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketChannelWindowAdjust;->payload:[B

    if-nez v1, :cond_0

    .line 49
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 50
    .local v0, tw:Lcom/trilead/ssh2/packets/TypesWriter;
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 51
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketChannelWindowAdjust;->recipientChannelID:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 52
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketChannelWindowAdjust;->windowChange:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 53
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/trilead/ssh2/packets/PacketChannelWindowAdjust;->payload:[B

    .line 55
    .end local v0           #tw:Lcom/trilead/ssh2/packets/TypesWriter;
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketChannelWindowAdjust;->payload:[B

    return-object v1
.end method
