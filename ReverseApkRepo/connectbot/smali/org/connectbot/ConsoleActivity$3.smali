.class Lorg/connectbot/ConsoleActivity$3;
.super Landroid/os/Handler;
.source "ConsoleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/ConsoleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/ConsoleActivity;


# direct methods
.method constructor <init>(Lorg/connectbot/ConsoleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/ConsoleActivity$3;->this$0:Lorg/connectbot/ConsoleActivity;

    .line 197
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 200
    const-string v1, "ConnectBot.ConsoleActivity"

    const-string v2, "Someone sending HANDLE_DISCONNECT to parentHandler"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/connectbot/service/TerminalBridge;

    .line 206
    .local v0, bridge:Lorg/connectbot/service/TerminalBridge;
    invoke-virtual {v0}, Lorg/connectbot/service/TerminalBridge;->isAwaitingClose()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lorg/connectbot/ConsoleActivity$3;->this$0:Lorg/connectbot/ConsoleActivity;

    #calls: Lorg/connectbot/ConsoleActivity;->closeBridge(Lorg/connectbot/service/TerminalBridge;)V
    invoke-static {v1, v0}, Lorg/connectbot/ConsoleActivity;->access$2(Lorg/connectbot/ConsoleActivity;Lorg/connectbot/service/TerminalBridge;)V

    .line 208
    :cond_0
    return-void
.end method
