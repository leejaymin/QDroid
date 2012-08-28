.class final Lorg/theb/ssh/JTATerminalView$1;
.super Lde/mud/terminal/vt320;
.source "JTATerminalView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/theb/ssh/JTATerminalView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/theb/ssh/JTATerminalView;


# direct methods
.method constructor <init>(Lorg/theb/ssh/JTATerminalView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/theb/ssh/JTATerminalView$1;->this$0:Lorg/theb/ssh/JTATerminalView;

    .line 77
    invoke-direct {p0}, Lde/mud/terminal/vt320;-><init>()V

    return-void
.end method


# virtual methods
.method public sendTelnetCommand(B)V
    .locals 0
    .parameter "cmd"

    .prologue
    .line 89
    return-void
.end method

.method public setWindowSize(II)V
    .locals 0
    .parameter "c"
    .parameter "r"

    .prologue
    .line 93
    return-void
.end method

.method public write([B)V
    .locals 4
    .parameter "b"

    .prologue
    .line 80
    :try_start_0
    iget-object v1, p0, Lorg/theb/ssh/JTATerminalView$1;->this$0:Lorg/theb/ssh/JTATerminalView;

    invoke-virtual {v1, p1}, Lorg/theb/ssh/JTATerminalView;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 82
    .local v0, e:Ljava/io/IOException;
    const-string v1, "SSH"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "couldn\'t write"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v1, p0, Lorg/theb/ssh/JTATerminalView$1;->this$0:Lorg/theb/ssh/JTATerminalView;

    const/4 v2, 0x0

    #setter for: Lorg/theb/ssh/JTATerminalView;->reader:Ljava/lang/Thread;
    invoke-static {v1, v2}, Lorg/theb/ssh/JTATerminalView;->access$0(Lorg/theb/ssh/JTATerminalView;Ljava/lang/Thread;)V

    goto :goto_0
.end method
