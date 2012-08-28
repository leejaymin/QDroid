.class Lorg/connectbot/service/TerminalBridge$4;
.super Ljava/lang/Object;
.source "TerminalBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/service/TerminalBridge;->injectString(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/service/TerminalBridge;

.field private final synthetic val$string:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/connectbot/service/TerminalBridge;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/service/TerminalBridge$4;->this$0:Lorg/connectbot/service/TerminalBridge;

    iput-object p2, p0, Lorg/connectbot/service/TerminalBridge$4;->val$string:Ljava/lang/String;

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 348
    :try_start_0
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge$4;->this$0:Lorg/connectbot/service/TerminalBridge;

    iget-object v1, v1, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    iget-object v2, p0, Lorg/connectbot/service/TerminalBridge$4;->val$string:Ljava/lang/String;

    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge$4;->this$0:Lorg/connectbot/service/TerminalBridge;

    iget-object v3, v3, Lorg/connectbot/service/TerminalBridge;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v3}, Lorg/connectbot/bean/HostBean;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/connectbot/transport/AbsTransport;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ConnectBot.TerminalBridge"

    const-string v2, "Couldn\'t inject string to remote host: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
