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
