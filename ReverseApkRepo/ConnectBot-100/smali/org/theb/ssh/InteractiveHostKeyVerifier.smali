.class public Lorg/theb/ssh/InteractiveHostKeyVerifier;
.super Ljava/lang/Object;
.source "InteractiveHostKeyVerifier.java"

# interfaces
.implements Lcom/trilead/ssh2/ServerHostKeyVerifier;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verifyServerHostKey(Ljava/lang/String;ILjava/lang/String;[B)Z
    .locals 1
    .parameter "hostname"
    .parameter "port"
    .parameter "serverHostKeyAlgorithm"
    .parameter "serverHostKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method
