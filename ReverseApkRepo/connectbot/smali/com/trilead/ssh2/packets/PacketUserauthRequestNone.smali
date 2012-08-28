.class public Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;
.super Ljava/lang/Object;
.source "PacketUserauthRequestNone.java"


# instance fields
.field payload:[B

.field serviceName:Ljava/lang/String;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "serviceName"
    .parameter "user"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;->serviceName:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;->userName:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .prologue
    .line 50
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;->payload:[B

    if-nez v1, :cond_0

    .line 52
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 53
    .local v0, tw:Lcom/trilead/ssh2/packets/TypesWriter;
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 54
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 56
    const-string v1, "none"

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;->payload:[B

    .line 59
    .end local v0           #tw:Lcom/trilead/ssh2/packets/TypesWriter;
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestNone;->payload:[B

    return-object v1
.end method
