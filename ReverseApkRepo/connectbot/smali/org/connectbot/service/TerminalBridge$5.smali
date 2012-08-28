.class Lorg/connectbot/service/TerminalBridge$5;
.super Ljava/lang/Object;
.source "TerminalBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/service/TerminalBridge;->dispatchDisconnect(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/service/TerminalBridge;


# direct methods
.method constructor <init>(Lorg/connectbot/service/TerminalBridge;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/service/TerminalBridge$5;->this$0:Lorg/connectbot/service/TerminalBridge;

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge$5;->this$0:Lorg/connectbot/service/TerminalBridge;

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge$5;->this$0:Lorg/connectbot/service/TerminalBridge;

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    invoke-virtual {v0}, Lorg/connectbot/transport/AbsTransport;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge$5;->this$0:Lorg/connectbot/service/TerminalBridge;

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    invoke-virtual {v0}, Lorg/connectbot/transport/AbsTransport;->close()V

    .line 427
    :cond_0
    return-void
.end method
