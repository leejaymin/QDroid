.class final Lorg/connectbot/service/TerminalBridge$3;
.super Ljava/lang/Object;
.source "TerminalBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/service/TerminalBridge;->finishConnection()V
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
    iput-object p1, p0, Lorg/connectbot/service/TerminalBridge$3;->this$0:Lorg/connectbot/service/TerminalBridge;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 210
    const/16 v3, 0x100

    new-array v0, v3, [B

    .line 211
    .local v0, b:[B
    const/4 v2, 0x0

    .line 212
    .local v2, n:I
    :cond_0
    :goto_0
    if-gez v2, :cond_1

    .line 225
    :goto_1
    return-void

    .line 214
    :cond_1
    :try_start_0
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge$3;->this$0:Lorg/connectbot/service/TerminalBridge;

    iget-object v3, v3, Lorg/connectbot/service/TerminalBridge;->stdout:Ljava/io/InputStream;

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 215
    if-lez v2, :cond_0

    .line 217
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge$3;->this$0:Lorg/connectbot/service/TerminalBridge;

    iget-object v3, v3, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    check-cast v3, Lde/mud/terminal/vt320;

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ASCII"

    invoke-direct {v4, v0, v5, v2, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lde/mud/terminal/vt320;->putString(Ljava/lang/String;)V

    .line 218
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge$3;->this$0:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v3}, Lorg/connectbot/service/TerminalBridge;->redraw()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 221
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
