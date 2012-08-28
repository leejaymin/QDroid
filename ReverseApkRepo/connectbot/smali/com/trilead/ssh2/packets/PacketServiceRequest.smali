.class public Lcom/trilead/ssh2/packets/PacketServiceRequest;
.super Ljava/lang/Object;
.source "PacketServiceRequest.java"


# instance fields
.field payload:[B

.field serviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "serviceName"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/trilead/ssh2/packets/PacketServiceRequest;->serviceName:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .prologue
    .line 43
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketServiceRequest;->payload:[B

    if-nez v1, :cond_0

    .line 45
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 46
    .local v0, tw:Lcom/trilead/ssh2/packets/TypesWriter;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 47
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketServiceRequest;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/trilead/ssh2/packets/PacketServiceRequest;->payload:[B

    .line 50
    .end local v0           #tw:Lcom/trilead/ssh2/packets/TypesWriter;
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketServiceRequest;->payload:[B

    return-object v1
.end method
