.class public Lcom/trilead/ssh2/packets/PacketGlobalForwardRequest;
.super Ljava/lang/Object;
.source "PacketGlobalForwardRequest.java"


# instance fields
.field public bindAddress:Ljava/lang/String;

.field public bindPort:I

.field payload:[B

.field public wantReply:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;I)V
    .locals 0
    .parameter "wantReply"
    .parameter "bindAddress"
    .parameter "bindPort"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean p1, p0, Lcom/trilead/ssh2/packets/PacketGlobalForwardRequest;->wantReply:Z

    .line 21
    iput-object p2, p0, Lcom/trilead/ssh2/packets/PacketGlobalForwardRequest;->bindAddress:Ljava/lang/String;

    .line 22
    iput p3, p0, Lcom/trilead/ssh2/packets/PacketGlobalForwardRequest;->bindPort:I

    .line 23
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .prologue
    .line 27
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketGlobalForwardRequest;->payload:[B

    if-nez v1, :cond_0

    .line 29
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 30
    .local v0, tw:Lcom/trilead/ssh2/packets/TypesWriter;
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 32
    const-string v1, "tcpip-forward"

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 33
    iget-boolean v1, p0, Lcom/trilead/ssh2/packets/PacketGlobalForwardRequest;->wantReply:Z

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 34
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketGlobalForwardRequest;->bindAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 35
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketGlobalForwardRequest;->bindPort:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 37
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/trilead/ssh2/packets/PacketGlobalForwardRequest;->payload:[B

    .line 39
    .end local v0           #tw:Lcom/trilead/ssh2/packets/TypesWriter;
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketGlobalForwardRequest;->payload:[B

    return-object v1
.end method
