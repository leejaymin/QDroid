.class Lorg/connectbot/service/TerminalBridge$2;
.super Lde/mud/terminal/vt320;
.source "TerminalBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/service/TerminalBridge;-><init>(Lorg/connectbot/service/TerminalManager;Lorg/connectbot/bean/HostBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/service/TerminalBridge;

.field private final synthetic val$host:Lorg/connectbot/bean/HostBean;

.field private final synthetic val$manager:Lorg/connectbot/service/TerminalManager;


# direct methods
.method constructor <init>(Lorg/connectbot/service/TerminalBridge;Lorg/connectbot/service/TerminalManager;Lorg/connectbot/bean/HostBean;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/service/TerminalBridge$2;->this$0:Lorg/connectbot/service/TerminalBridge;

    iput-object p2, p0, Lorg/connectbot/service/TerminalBridge$2;->val$manager:Lorg/connectbot/service/TerminalManager;

    iput-object p3, p0, Lorg/connectbot/service/TerminalBridge$2;->val$host:Lorg/connectbot/bean/HostBean;

    .line 192
    invoke-direct {p0}, Lde/mud/terminal/vt320;-><init>()V

    return-void
.end method


# virtual methods
.method public beep()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge$2;->this$0:Lorg/connectbot/service/TerminalBridge;

    #getter for: Lorg/connectbot/service/TerminalBridge;->parent:Lorg/connectbot/TerminalView;
    invoke-static {v0}, Lorg/connectbot/service/TerminalBridge;->access$0(Lorg/connectbot/service/TerminalBridge;)Lorg/connectbot/TerminalView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/connectbot/TerminalView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge$2;->val$manager:Lorg/connectbot/service/TerminalManager;

    invoke-virtual {v0}, Lorg/connectbot/service/TerminalManager;->playBeep()V

    .line 234
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge$2;->val$manager:Lorg/connectbot/service/TerminalManager;

    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge$2;->val$host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v0, v1}, Lorg/connectbot/service/TerminalManager;->sendActivityNotification(Lorg/connectbot/bean/HostBean;)V

    goto :goto_0
.end method

.method public debug(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 195
    const-string v0, "ConnectBot.TerminalBridge"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method

.method public sendTelnetCommand(B)V
    .locals 0
    .parameter "cmd"

    .prologue
    .line 221
    return-void
.end method

.method public setWindowSize(II)V
    .locals 0
    .parameter "c"
    .parameter "r"

    .prologue
    .line 226
    return-void
.end method

.method public write(I)V
    .locals 3
    .parameter "b"

    .prologue
    .line 211
    :try_start_0
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge$2;->this$0:Lorg/connectbot/service/TerminalBridge;

    iget-object v1, v1, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge$2;->this$0:Lorg/connectbot/service/TerminalBridge;

    iget-object v1, v1, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    invoke-virtual {v1, p1}, Lorg/connectbot/transport/AbsTransport;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ConnectBot.TerminalBridge"

    const-string v2, "Problem writing outgoing data in vt320() thread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public write([B)V
    .locals 3
    .parameter "b"

    .prologue
    .line 201
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge$2;->this$0:Lorg/connectbot/service/TerminalBridge;

    iget-object v1, v1, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge$2;->this$0:Lorg/connectbot/service/TerminalBridge;

    iget-object v1, v1, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    invoke-virtual {v1, p1}, Lorg/connectbot/transport/AbsTransport;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ConnectBot.TerminalBridge"

    const-string v2, "Problem writing outgoing data in vt320() thread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
