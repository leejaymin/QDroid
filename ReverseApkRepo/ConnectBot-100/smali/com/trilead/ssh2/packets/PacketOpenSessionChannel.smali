.class public Lcom/trilead/ssh2/packets/PacketOpenSessionChannel;
.super Ljava/lang/Object;
.source "PacketOpenSessionChannel.java"


# instance fields
.field channelID:I

.field initialWindowSize:I

.field maxPacketSize:I

.field payload:[B


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter "channelID"
    .parameter "initialWindowSize"
    .parameter "maxPacketSize"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/trilead/ssh2/packets/PacketOpenSessionChannel;->channelID:I

    .line 23
    iput p2, p0, Lcom/trilead/ssh2/packets/PacketOpenSessionChannel;->initialWindowSize:I

    .line 24
    iput p3, p0, Lcom/trilead/ssh2/packets/PacketOpenSessionChannel;->maxPacketSize:I

    .line 25
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
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-array v2, p3, [B

    iput-object v2, p0, Lcom/trilead/ssh2/packets/PacketOpenSessionChannel;->payload:[B

    .line 30
    iget-object v2, p0, Lcom/trilead/ssh2/packets/PacketOpenSessionChannel;->payload:[B

    const/4 v3, 0x0

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    new-instance v1, Lcom/trilead/ssh2/packets/TypesReader;

    invoke-direct {v1, p1}, Lcom/trilead/ssh2/packets/TypesReader;-><init>([B)V

    .line 34
    .local v1, tr:Lcom/trilead/ssh2/packets/TypesReader;
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readByte()I

    move-result v0

    .line 36
    .local v0, packet_type:I
    const/16 v2, 0x5a

    if-eq v0, v2, :cond_0

    .line 37
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "This is not a SSH_MSG_CHANNEL_OPEN! ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 37
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 40
    :cond_0
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v2

    iput v2, p0, Lcom/trilead/ssh2/packets/PacketOpenSessionChannel;->channelID:I

    .line 41
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v2

    iput v2, p0, Lcom/trilead/ssh2/packets/PacketOpenSessionChannel;->initialWindowSize:I

    .line 42
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->readUINT32()I

    move-result v2

    iput v2, p0, Lcom/trilead/ssh2/packets/PacketOpenSessionChannel;->maxPacketSize:I

    .line 44
    invoke-virtual {v1}, Lcom/trilead/ssh2/packets/TypesReader;->remain()I

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Padding in SSH_MSG_CHANNEL_OPEN packet!"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    :cond_1
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .prologue
    .line 50
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketOpenSessionChannel;->payload:[B

    if-nez v1, :cond_0

    .line 52
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 53
    .local v0, tw:Lcom/trilead/ssh2/packets/TypesWriter;
    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 54
    const-string v1, "session"

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 55
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketOpenSessionChannel;->channelID:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 56
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketOpenSessionChannel;->initialWindowSize:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 57
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketOpenSessionChannel;->maxPacketSize:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 58
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/trilead/ssh2/packets/PacketOpenSessionChannel;->payload:[B

    .line 60
    .end local v0           #tw:Lcom/trilead/ssh2/packets/TypesWriter;
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketOpenSessionChannel;->payload:[B

    return-object v1
.end method
