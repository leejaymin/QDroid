.class Lorg/connectbot/service/TerminalManager$2;
.super Ljava/lang/Thread;
.source "TerminalManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/service/TerminalManager;->onConnectivityLost()V
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
    iput-object p1, p0, Lorg/connectbot/service/TerminalManager$2;->this$0:Lorg/connectbot/service/TerminalManager;

    .line 656
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager$2;->this$0:Lorg/connectbot/service/TerminalManager;

    const/4 v1, 0x0

    #calls: Lorg/connectbot/service/TerminalManager;->disconnectAll(Z)V
    invoke-static {v0, v1}, Lorg/connectbot/service/TerminalManager;->access$0(Lorg/connectbot/service/TerminalManager;Z)V

    .line 660
    return-void
.end method
