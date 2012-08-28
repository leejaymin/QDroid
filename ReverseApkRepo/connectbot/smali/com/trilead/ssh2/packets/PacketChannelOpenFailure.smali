.class public Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;
.super Ljava/lang/Object;
.source "PacketChannelOpenFailure.java"


# instance fields
.field public description:Ljava/lang/String;

.field public languageTag:Ljava/lang/String;

.field payload:[B

.field public reasonCode:I

.field public recipientChannelID:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "recipientChannelID"
    .parameter "reasonCode"
    .parameter "description"
    .parameter "languageTag"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->recipientChannelID:I

    .line 24
    iput p2, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->reasonCode:I

    .line 25
    iput-object p3, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->description:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->languageTag:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 2

    .prologue
    .line 54
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->payload:[B

    if-nez v1, :cond_0

    .line 56
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 57
    .local v0, tw:Lcom/trilead/ssh2/packets/TypesWriter;
    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 58
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->recipientChannelID:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 59
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->reasonCode:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 60
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->languageTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->payload:[B

    .line 64
    .end local v0           #tw:Lcom/trilead/ssh2/packets/TypesWriter;
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketChannelOpenFailure;->payload:[B

    return-object v1
.end method
