.class public Lcom/trilead/ssh2/packets/PacketKexDHInit;
.super Ljava/lang/Object;
.source "PacketKexDHInit.java"


# instance fields
.field e:Ljava/math/BigInteger;

.field payload:[B


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketKexDHInit;->e:Ljava/math/BigInteger;

    .line 20
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .prologue
    .line 24
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexDHInit;->payload:[B

    if-nez v1, :cond_0

    .line 26
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 27
    .local v0, tw:Lcom/trilead/ssh2/packets/TypesWriter;
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 28
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexDHInit;->e:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 29
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexDHInit;->payload:[B

    .line 31
    .end local v0           #tw:Lcom/trilead/ssh2/packets/TypesWriter;
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketKexDHInit;->payload:[B

    return-object v1
.end method
