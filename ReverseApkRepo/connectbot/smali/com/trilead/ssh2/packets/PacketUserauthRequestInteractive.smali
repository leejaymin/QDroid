.class public Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;
.super Ljava/lang/Object;
.source "PacketUserauthRequestInteractive.java"


# instance fields
.field payload:[B

.field serviceName:Ljava/lang/String;

.field submethods:[Ljava/lang/String;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "serviceName"
    .parameter "user"
    .parameter "submethods"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;->serviceName:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;->userName:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;->submethods:[Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .prologue
    .line 27
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;->payload:[B

    if-nez v1, :cond_0

    .line 29
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 30
    .local v0, tw:Lcom/trilead/ssh2/packets/TypesWriter;
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 31
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 33
    const-string v1, "keyboard-interactive"

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 34
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;->submethods:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeNameList([Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;->payload:[B

    .line 40
    .end local v0           #tw:Lcom/trilead/ssh2/packets/TypesWriter;
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketUserauthRequestInteractive;->payload:[B

    return-object v1
.end method
