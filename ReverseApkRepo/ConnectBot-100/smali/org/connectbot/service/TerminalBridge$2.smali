.class final Lorg/connectbot/service/TerminalBridge$2;
.super Ljava/lang/Object;
.source "TerminalBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/service/TerminalBridge;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/service/TerminalBridge;

.field private final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/connectbot/service/TerminalBridge;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/service/TerminalBridge$2;->this$0:Lorg/connectbot/service/TerminalBridge;

    iput-object p2, p0, Lorg/connectbot/service/TerminalBridge$2;->val$username:Ljava/lang/String;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 154
    :try_start_0
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge$2;->this$0:Lorg/connectbot/service/TerminalBridge;

    iget-object v1, v1, Lorg/connectbot/service/TerminalBridge;->connection:Lcom/trilead/ssh2/Connection;

    new-instance v2, Lorg/connectbot/service/TerminalBridge$HostKeyVerifier;

    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge$2;->this$0:Lorg/connectbot/service/TerminalBridge;

    invoke-direct {v2, v3}, Lorg/connectbot/service/TerminalBridge$HostKeyVerifier;-><init>(Lorg/connectbot/service/TerminalBridge;)V

    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/Connection;->connect(Lcom/trilead/ssh2/ServerHostKeyVerifier;)Lcom/trilead/ssh2/ConnectionInfo;

    .line 155
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge$2;->this$0:Lorg/connectbot/service/TerminalBridge;

    const-string v2, "Trying to authenticate"

    invoke-virtual {v1, v2}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge$2;->this$0:Lorg/connectbot/service/TerminalBridge;

    iget-object v1, v1, Lorg/connectbot/service/TerminalBridge;->connection:Lcom/trilead/ssh2/Connection;

    iget-object v2, p0, Lorg/connectbot/service/TerminalBridge$2;->val$username:Ljava/lang/String;

    const-string v3, "password"

    invoke-virtual {v1, v2, v3}, Lcom/trilead/ssh2/Connection;->isAuthMethodAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge$2;->this$0:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v1}, Lorg/connectbot/service/TerminalBridge;->promptPassword()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 161
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
