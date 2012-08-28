.class final Lorg/connectbot/service/TerminalBridgeSurface$1;
.super Lde/mud/terminal/vt320;
.source "TerminalBridgeSurface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/service/TerminalBridgeSurface;-><init>(Lcom/trilead/ssh2/Connection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/service/TerminalBridgeSurface;


# direct methods
.method constructor <init>(Lorg/connectbot/service/TerminalBridgeSurface;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/service/TerminalBridgeSurface$1;->this$0:Lorg/connectbot/service/TerminalBridgeSurface;

    .line 74
    invoke-direct {p0}, Lde/mud/terminal/vt320;-><init>()V

    return-void
.end method


# virtual methods
.method public sendTelnetCommand(B)V
    .locals 0
    .parameter "cmd"

    .prologue
    .line 85
    return-void
.end method

.method public setWindowSize(II)V
    .locals 0
    .parameter "c"
    .parameter "r"

    .prologue
    .line 88
    return-void
.end method

.method public write([B)V
    .locals 3
    .parameter "b"

    .prologue
    .line 77
    :try_start_0
    const-string v1, "STDIN"

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridgeSurface$1;->this$0:Lorg/connectbot/service/TerminalBridgeSurface;

    iget-object v1, v1, Lorg/connectbot/service/TerminalBridgeSurface;->stdin:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 80
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
