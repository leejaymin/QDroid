.class public Lcom/trilead/ssh2/packets/PacketDisconnect;
.super Ljava/lang/Object;
.source "PacketDisconnect.java"


# instance fields
.field desc:Ljava/lang/String;

.field lang:Ljava/lang/String;

.field payload:[B

.field reason:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "reason"
    .parameter "desc"
    .parameter "lang"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/trilead/ssh2/packets/PacketDisconnect;->reason:I

    .line 40
    iput-object p2, p0, Lcom/trilead/ssh2/packets/PacketDisconnect;->desc:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/trilead/ssh2/packets/PacketDisconnect;->lang:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .prologue
    .line 46
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketDisconnect;->payload:[B

    if-nez v1, :cond_0

    .line 48
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 49
    .local v0, tw:Lcom/trilead/ssh2/packets/TypesWriter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 50
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketDisconnect;->reason:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 51
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketDisconnect;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketDisconnect;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/trilead/ssh2/packets/PacketDisconnect;->payload:[B

    .line 55
    .end local v0           #tw:Lcom/trilead/ssh2/packets/TypesWriter;
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketDisconnect;->payload:[B

    return-object v1
.end method
