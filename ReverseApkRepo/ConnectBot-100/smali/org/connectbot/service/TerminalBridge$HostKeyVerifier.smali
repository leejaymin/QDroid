.class public Lorg/connectbot/service/TerminalBridge$HostKeyVerifier;
.super Ljava/lang/Object;
.source "TerminalBridge.java"

# interfaces
.implements Lcom/trilead/ssh2/ServerHostKeyVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/service/TerminalBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HostKeyVerifier"
.end annotation


# instance fields
.field private final hex:[C

.field final synthetic this$0:Lorg/connectbot/service/TerminalBridge;


# direct methods
.method public constructor <init>(Lorg/connectbot/service/TerminalBridge;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lorg/connectbot/service/TerminalBridge$HostKeyVerifier;->this$0:Lorg/connectbot/service/TerminalBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/service/TerminalBridge$HostKeyVerifier;->hex:[C

    return-void
.end method


# virtual methods
.method public hexdump([B)Ljava/lang/String;
    .locals 6
    .parameter "buf"

    .prologue
    .line 72
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    .local v1, out:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_0

    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 74
    :cond_0
    aget-byte v3, p1, v0

    add-int/lit8 v2, v3, 0x7f

    .line 75
    .local v2, value:I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/connectbot/service/TerminalBridge$HostKeyVerifier;->hex:[C

    ushr-int/lit8 v5, v2, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/connectbot/service/TerminalBridge$HostKeyVerifier;->hex:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public verifyServerHostKey(Ljava/lang/String;ILjava/lang/String;[B)Z
    .locals 7
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
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 83
    new-instance v0, Lcom/trilead/ssh2/KnownHosts;

    invoke-direct {v0}, Lcom/trilead/ssh2/KnownHosts;-><init>()V

    .line 84
    .local v0, hosts:Lcom/trilead/ssh2/KnownHosts;
    invoke-virtual {v0, p1, p3, p4}, Lcom/trilead/ssh2/KnownHosts;->verifyHostkey(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v1, v5

    .line 101
    :goto_0
    return v1

    :pswitch_0
    move v1, v6

    .line 86
    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge$HostKeyVerifier;->this$0:Lorg/connectbot/service/TerminalBridge;

    const-string v2, "The authenticity of host \'%s\' can\'t be established."

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge$HostKeyVerifier;->this$0:Lorg/connectbot/service/TerminalBridge;

    const-string v2, "RSA key fingerprint is %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p3, p4}, Lcom/trilead/ssh2/KnownHosts;->createHexFingerprint(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge$HostKeyVerifier;->this$0:Lorg/connectbot/service/TerminalBridge;

    const-string v2, "[For now we\'ll assume you accept this key, but tap Menu and Disconnect if not.]"

    invoke-virtual {v1, v2}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V

    move v1, v6

    .line 94
    goto :goto_0

    :pswitch_2
    move v1, v5

    .line 97
    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
