.class Lorg/connectbot/transport/Telnet$1;
.super Lde/mud/telnet/TelnetProtocolHandler;
.source "Telnet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/transport/Telnet;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/transport/Telnet;


# direct methods
.method constructor <init>(Lorg/connectbot/transport/Telnet;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/transport/Telnet$1;->this$0:Lorg/connectbot/transport/Telnet;

    .line 71
    invoke-direct {p0}, Lde/mud/telnet/TelnetProtocolHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCharsetName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    iget-object v1, p0, Lorg/connectbot/transport/Telnet$1;->this$0:Lorg/connectbot/transport/Telnet;

    iget-object v1, v1, Lorg/connectbot/transport/Telnet;->bridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v1}, Lorg/connectbot/service/TerminalBridge;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 105
    .local v0, charset:Ljava/nio/charset/Charset;
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    .line 108
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getTerminalType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/connectbot/transport/Telnet$1;->this$0:Lorg/connectbot/transport/Telnet;

    invoke-virtual {v0}, Lorg/connectbot/transport/Telnet;->getEmulation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWindowSize()[I
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/connectbot/transport/Telnet$1;->this$0:Lorg/connectbot/transport/Telnet;

    #getter for: Lorg/connectbot/transport/Telnet;->width:I
    invoke-static {v2}, Lorg/connectbot/transport/Telnet;->access$0(Lorg/connectbot/transport/Telnet;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/connectbot/transport/Telnet$1;->this$0:Lorg/connectbot/transport/Telnet;

    #getter for: Lorg/connectbot/transport/Telnet;->height:I
    invoke-static {v2}, Lorg/connectbot/transport/Telnet;->access$1(Lorg/connectbot/transport/Telnet;)I

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method

.method public notifyEndOfRecord()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public setLocalEcho(Z)V
    .locals 0
    .parameter "echo"

    .prologue
    .line 88
    return-void
.end method

.method public write([B)V
    .locals 1
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lorg/connectbot/transport/Telnet$1;->this$0:Lorg/connectbot/transport/Telnet;

    #getter for: Lorg/connectbot/transport/Telnet;->os:Ljava/io/OutputStream;
    invoke-static {v0}, Lorg/connectbot/transport/Telnet;->access$2(Lorg/connectbot/transport/Telnet;)Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lorg/connectbot/transport/Telnet$1;->this$0:Lorg/connectbot/transport/Telnet;

    #getter for: Lorg/connectbot/transport/Telnet;->os:Ljava/io/OutputStream;
    invoke-static {v0}, Lorg/connectbot/transport/Telnet;->access$2(Lorg/connectbot/transport/Telnet;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 95
    :cond_0
    return-void
.end method
