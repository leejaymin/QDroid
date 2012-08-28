.class public Lcom/trilead/ssh2/packets/PacketUserauthRequestPassword;
.super Ljava/lang/Object;
.source "PacketUserauthRequestPassword.java"


# instance fields
.field password:Ljava/lang/String;

.field payload:[B

.field serviceName:Ljava/lang/String;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "serviceName"
    .parameter "user"
    .parameter "pass"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPassword;->serviceName:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPassword;->userName:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPassword;->password:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .prologue
    .line 54
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPassword;->payload:[B

    if-nez v1, :cond_0

    .line 56
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 57
    .local v0, tw:Lcom/trilead/ssh2/packets/TypesWriter;
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 58
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPassword;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPassword;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 60
    const-string v1, "password"

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 61
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 62
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPassword;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPassword;->payload:[B

    .line 65
    .end local v0           #tw:Lcom/trilead/ssh2/packets/TypesWriter;
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestPassword;->payload:[B

    return-object v1
.end method
