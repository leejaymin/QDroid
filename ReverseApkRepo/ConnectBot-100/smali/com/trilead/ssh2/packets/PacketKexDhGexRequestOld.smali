.class public Lcom/trilead/ssh2/packets/PacketKexDhGexRequestOld;
.super Ljava/lang/Object;
.source "PacketKexDhGexRequestOld.java"


# instance fields
.field n:I

.field payload:[B


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/DHGexParameters;)V
    .locals 1
    .parameter "para"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Lcom/trilead/ssh2/DHGexParameters;->getPref_group_len()I

    move-result v0

    iput v0, p0, Lcom/trilead/ssh2/packets/PacketKexDhGexRequestOld;->n:I

    .line 21
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .prologue
    .line 25
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexDhGexRequestOld;->payload:[B

    if-nez v1, :cond_0

    .line 27
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 28
    .local v0, tw:Lcom/trilead/ssh2/packets/TypesWriter;
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 29
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketKexDhGexRequestOld;->n:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 30
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexDhGexRequestOld;->payload:[B

    .line 32
    .end local v0           #tw:Lcom/trilead/ssh2/packets/TypesWriter;
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexDhGexRequestOld;->payload:[B

    return-object v1
.end method
