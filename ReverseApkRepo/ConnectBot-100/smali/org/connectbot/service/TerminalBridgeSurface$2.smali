.class final Lorg/connectbot/service/TerminalBridgeSurface$2;
.super Ljava/lang/Object;
.source "TerminalBridgeSurface.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lorg/connectbot/service/TerminalBridgeSurface$2;->this$0:Lorg/connectbot/service/TerminalBridgeSurface;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 95
    const/16 v3, 0x100

    new-array v0, v3, [B

    .line 96
    .local v0, b:[B
    const/4 v2, 0x0

    .line 97
    .local v2, n:I
    :cond_0
    :goto_0
    if-gez v2, :cond_1

    .line 110
    :goto_1
    return-void

    .line 99
    :cond_1
    :try_start_0
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridgeSurface$2;->this$0:Lorg/connectbot/service/TerminalBridgeSurface;

    iget-object v3, v3, Lorg/connectbot/service/TerminalBridgeSurface;->stdout:Ljava/io/InputStream;

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 100
    if-lez v2, :cond_0

    .line 102
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridgeSurface$2;->this$0:Lorg/connectbot/service/TerminalBridgeSurface;

    iget-object v3, v3, Lorg/connectbot/service/TerminalBridgeSurface;->buffer:Lde/mud/terminal/VDUBuffer;

    check-cast v3, Lde/mud/terminal/vt320;

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ASCII"

    invoke-direct {v4, v0, v5, v2, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lde/mud/terminal/vt320;->putString(Ljava/lang/String;)V

    .line 103
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridgeSurface$2;->this$0:Lorg/connectbot/service/TerminalBridgeSurface;

    invoke-virtual {v3}, Lorg/connectbot/service/TerminalBridgeSurface;->redraw()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 106
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
