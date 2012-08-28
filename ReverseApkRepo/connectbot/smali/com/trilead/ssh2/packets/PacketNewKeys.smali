.class public Lcom/trilead/ssh2/packets/PacketNewKeys;
.super Ljava/lang/Object;
.source "PacketNewKeys.java"


# instance fields
.field payload:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .prologue
    .line 38
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketNewKeys;->payload:[B

    if-nez v1, :cond_0

    .line 40
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 41
    .local v0, tw:Lcom/trilead/ssh2/packets/TypesWriter;
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 42
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/trilead/ssh2/packets/PacketNewKeys;->payload:[B

    .line 44
    .end local v0           #tw:Lcom/trilead/ssh2/packets/TypesWriter;
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketNewKeys;->payload:[B

    return-object v1
.end method
