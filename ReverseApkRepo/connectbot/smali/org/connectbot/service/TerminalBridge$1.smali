.class Lorg/connectbot/service/TerminalBridge$1;
.super Lde/mud/terminal/vt320;
.source "TerminalBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/service/TerminalBridge;-><init>()V
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

    .line 130
    invoke-direct {p0}, Lde/mud/terminal/vt320;-><init>()V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 140
    return-void
.end method

.method public sendTelnetCommand(B)V
    .locals 0
    .parameter "cmd"

    .prologue
    .line 136
    return-void
.end method

.method public setWindowSize(II)V
    .locals 0
    .parameter "c"
    .parameter "r"

    .prologue
    .line 138
    return-void
.end method

.method public write(I)V
    .locals 0
    .parameter "b"

    .prologue
    .line 134
    return-void
.end method

.method public write([B)V
    .locals 0
    .parameter "b"

    .prologue
    .line 132
    return-void
.end method
