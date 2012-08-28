.class public Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;
.super Ljava/lang/Object;
.source "PacketUserauthRequestPublicKey.java"


# instance fields
.field payload:[B

.field pk:[B

.field pkAlgoName:Ljava/lang/String;

.field serviceName:Ljava/lang/String;

.field sig:[B

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 0
    .parameter "serviceName"
    .parameter "user"
    .parameter "pkAlgorithmName"
    .parameter "pk"
    .parameter "sig"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->serviceName:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->userName:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->pkAlgoName:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->pk:[B

    .line 29
    iput-object p5, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->sig:[B

    .line 30
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 50
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->payload:[B

    if-nez v1, :cond_0

    .line 52
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 53
    .local v0, tw:Lcom/trilead/ssh2/packets/TypesWriter;
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 54
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 56
    const-string v1, "publickey"

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 57
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 58
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->pkAlgoName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->pk:[B

    iget-object v2, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->pk:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 60
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->sig:[B

    iget-object v2, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->sig:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString([BII)V

    .line 61
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->payload:[B

    .line 63
    .end local v0           #tw:Lcom/trilead/ssh2/packets/TypesWriter;
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPublicKey;->payload:[B

    return-object v1
.end method
