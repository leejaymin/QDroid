.class public Lcom/trilead/ssh2/packets/PacketSessionSubsystemRequest;
.super Ljava/lang/Object;
.source "PacketSessionSubsystemRequest.java"


# instance fields
.field payload:[B

.field public recipientChannelID:I

.field public subsystem:Ljava/lang/String;

.field public wantReply:Z


# direct methods
.method public constructor <init>(IZLjava/lang/String;)V
    .locals 0
    .parameter "recipientChannelID"
    .parameter "wantReply"
    .parameter "subsystem"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/trilead/ssh2/packets/PacketSessionSubsystemRequest;->recipientChannelID:I

    .line 21
    iput-boolean p2, p0, Lcom/trilead/ssh2/packets/PacketSessionSubsystemRequest;->wantReply:Z

    .line 22
    iput-object p3, p0, Lcom/trilead/ssh2/packets/PacketSessionSubsystemRequest;->subsystem:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .prologue
    .line 27
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketSessionSubsystemRequest;->payload:[B

    if-nez v1, :cond_0

    .line 29
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 30
    .local v0, tw:Lcom/trilead/ssh2/packets/TypesWriter;
    const/16 v1, 0x62

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 31
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketSessionSubsystemRequest;->recipientChannelID:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 32
    const-string v1, "subsystem"

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 33
    iget-boolean v1, p0, Lcom/trilead/ssh2/packets/PacketSessionSubsystemRequest;->wantReply:Z

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 34
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketSessionSubsystemRequest;->subsystem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/trilead/ssh2/packets/PacketSessionSubsystemRequest;->payload:[B

    .line 36
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketSessionSubsystemRequest;->payload:[B

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes([B)V

    .line 38
    .end local v0           #tw:Lcom/trilead/ssh2/packets/TypesWriter;
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketSessionSubsystemRequest;->payload:[B

    return-object v1
.end method