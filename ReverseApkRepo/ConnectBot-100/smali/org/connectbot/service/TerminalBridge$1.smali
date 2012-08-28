.class final Lorg/connectbot/service/TerminalBridge$1;
.super Lde/mud/terminal/vt320;
.source "TerminalBridge.java"


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


# direct methods
.method constructor <init>(Lorg/connectbot/service/TerminalBridge;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/service/TerminalBridge$1;->this$0:Lorg/connectbot/service/TerminalBridge;

    .line 124
    invoke-direct {p0}, Lde/mud/terminal/vt320;-><init>()V

    return-void
.end method


# virtual methods
.method public sendTelnetCommand(B)V
    .locals 0
    .parameter "cmd"

    .prologue
    .line 134
    return-void
.end method

.method public setWindowSize(II)V
    .locals 0
    .parameter "c"
    .parameter "r"

    .prologue
    .line 137
    return-void
.end method

.method public write([B)V
    .locals 2
    .parameter "b"

    .prologue
    .line 127
    :try_start_0
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge$1;->this$0:Lorg/connectbot/service/TerminalBridge;

    iget-object v1, v1, Lorg/connectbot/service/TerminalBridge;->stdin:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 129
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
