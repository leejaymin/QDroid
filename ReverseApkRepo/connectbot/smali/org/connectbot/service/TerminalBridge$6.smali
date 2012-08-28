.class Lorg/connectbot/service/TerminalBridge$6;
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
    iput-object p1, p0, Lorg/connectbot/service/TerminalBridge$6;->this$0:Lorg/connectbot/service/TerminalBridge;

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 447
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge$6;->this$0:Lorg/connectbot/service/TerminalBridge;

    iget-object v1, v1, Lorg/connectbot/service/TerminalBridge;->promptHelper:Lorg/connectbot/service/PromptHelper;

    const/4 v2, 0x0

    .line 448
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge$6;->this$0:Lorg/connectbot/service/TerminalBridge;

    iget-object v3, v3, Lorg/connectbot/service/TerminalBridge;->manager:Lorg/connectbot/service/TerminalManager;

    iget-object v3, v3, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    const v4, 0x7f080038

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 447
    invoke-virtual {v1, v2, v3}, Lorg/connectbot/service/PromptHelper;->requestBooleanPrompt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 449
    .local v0, result:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 450
    :cond_0
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge$6;->this$0:Lorg/connectbot/service/TerminalBridge;

    const/4 v2, 0x1

    #setter for: Lorg/connectbot/service/TerminalBridge;->awaitingClose:Z
    invoke-static {v1, v2}, Lorg/connectbot/service/TerminalBridge;->access$1(Lorg/connectbot/service/TerminalBridge;Z)V

    .line 453
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge$6;->this$0:Lorg/connectbot/service/TerminalBridge;

    iget-object v1, v1, Lorg/connectbot/service/TerminalBridge;->disconnectListener:Lorg/connectbot/service/BridgeDisconnectedListener;

    if-eqz v1, :cond_1

    .line 454
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge$6;->this$0:Lorg/connectbot/service/TerminalBridge;

    iget-object v1, v1, Lorg/connectbot/service/TerminalBridge;->disconnectListener:Lorg/connectbot/service/BridgeDisconnectedListener;

    iget-object v2, p0, Lorg/connectbot/service/TerminalBridge$6;->this$0:Lorg/connectbot/service/TerminalBridge;

    invoke-interface {v1, v2}, Lorg/connectbot/service/BridgeDisconnectedListener;->onDisconnected(Lorg/connectbot/service/TerminalBridge;)V

    .line 456
    :cond_1
    return-void
.end method
