.class public Lcom/trilead/ssh2/packets/PacketSessionPtyResize;
.super Ljava/lang/Object;
.source "PacketSessionPtyResize.java"


# instance fields
.field public height:I

.field payload:[B

.field public recipientChannelID:I

.field public term:Ljava/lang/String;

.field public wantReply:Z

.field public width:I


# direct methods
.method public constructor <init>(IZII)V
    .locals 1
    .parameter "recipientChannelID"
    .parameter "wantReply"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyResize;->recipientChannelID:I

    .line 14
    iput-boolean p2, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyResize;->wantReply:Z

    .line 15
    iget-object v0, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyResize;->term:Ljava/lang/String;

    iput-object v0, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyResize;->term:Ljava/lang/String;

    .line 16
    iput p3, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyResize;->width:I

    .line 17
    iput p4, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyResize;->height:I

    .line 18
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyResize;->payload:[B

    if-nez v1, :cond_0

    .line 24
    new-instance v0, Lcom/trilead/ssh2/packets/TypesWriter;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/TypesWriter;-><init>()V

    .line 25
    .local v0, tw:Lcom/trilead/ssh2/packets/TypesWriter;
    const/16 v1, 0x62

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeByte(I)V

    .line 26
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyResize;->recipientChannelID:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 27
    const-string v1, "window-change"

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 28
    iget-boolean v1, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyResize;->wantReply:Z

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeBoolean(Z)V

    .line 29
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyResize;->width:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 30
    iget v1, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyResize;->height:I

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 31
    invoke-virtual {v0, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 32
    invoke-virtual {v0, v2}, Lcom/trilead/ssh2/packets/TypesWriter;->writeUINT32(I)V

    .line 34
    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyResize;->payload:[B

    .line 36
    .end local v0           #tw:Lcom/trilead/ssh2/packets/TypesWriter;
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/packets/PacketSessionPtyResize;->payload:[B

    return-object v1
.end method
