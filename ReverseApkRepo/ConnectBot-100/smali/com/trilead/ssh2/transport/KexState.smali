.class public Lcom/trilead/ssh2/transport/KexState;
.super Ljava/lang/Object;
.source "KexState.java"


# instance fields
.field public H:[B

.field public K:Ljava/math/BigInteger;

.field public dhgexParameters:Lcom/trilead/ssh2/DHGexParameters;

.field public dhgx:Lcom/trilead/ssh2/crypto/dh/DhGroupExchange;

.field public dhx:Lcom/trilead/ssh2/crypto/dh/DhExchange;

.field public hostkey:[B

.field public localKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

.field public np:Lcom/trilead/ssh2/transport/NegotiatedParameters;

.field public remoteKEX:Lcom/trilead/ssh2/packets/PacketKexInit;

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/trilead/ssh2/transport/KexState;->state:I

    .line 17
    return-void
.end method
