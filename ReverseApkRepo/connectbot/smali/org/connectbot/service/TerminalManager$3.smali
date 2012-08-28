.class Lorg/connectbot/service/TerminalManager$3;
.super Ljava/lang/Thread;
.source "TerminalManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/service/TerminalManager;->onConnectivityRestored()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/service/TerminalManager;


# direct methods
.method constructor <init>(Lorg/connectbot/service/TerminalManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/service/TerminalManager$3;->this$0:Lorg/connectbot/service/TerminalManager;

    .line 670
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager$3;->this$0:Lorg/connectbot/service/TerminalManager;

    #calls: Lorg/connectbot/service/TerminalManager;->reconnectPending()V
    invoke-static {v0}, Lorg/connectbot/service/TerminalManager;->access$1(Lorg/connectbot/service/TerminalManager;)V

    .line 674
    return-void
.end method
