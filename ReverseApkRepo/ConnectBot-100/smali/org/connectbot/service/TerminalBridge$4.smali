.class final Lorg/connectbot/service/TerminalBridge$4;
.super Ljava/lang/Object;
.source "TerminalBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/service/TerminalBridge;->dispose()V
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
    iput-object p1, p0, Lorg/connectbot/service/TerminalBridge$4;->this$0:Lorg/connectbot/service/TerminalBridge;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge$4;->this$0:Lorg/connectbot/service/TerminalBridge;

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->session:Lcom/trilead/ssh2/Session;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge$4;->this$0:Lorg/connectbot/service/TerminalBridge;

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->session:Lcom/trilead/ssh2/Session;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->close()V

    .line 245
    :cond_0
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge$4;->this$0:Lorg/connectbot/service/TerminalBridge;

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->connection:Lcom/trilead/ssh2/Connection;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Connection;->close()V

    .line 246
    return-void
.end method
