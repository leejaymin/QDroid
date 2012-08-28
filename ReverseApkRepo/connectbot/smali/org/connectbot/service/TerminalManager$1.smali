.class Lorg/connectbot/service/TerminalManager$1;
.super Ljava/util/TimerTask;
.source "TerminalManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/service/TerminalManager;->addKey(Lorg/connectbot/bean/PubkeyBean;Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/service/TerminalManager;

.field private final synthetic val$nickname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/connectbot/service/TerminalManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/service/TerminalManager$1;->this$0:Lorg/connectbot/service/TerminalManager;

    iput-object p2, p0, Lorg/connectbot/service/TerminalManager$1;->val$nickname:Ljava/lang/String;

    .line 383
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 386
    const-string v0, "ConnectBot.TerminalManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unloading from memory key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/connectbot/service/TerminalManager$1;->val$nickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager$1;->this$0:Lorg/connectbot/service/TerminalManager;

    iget-object v1, p0, Lorg/connectbot/service/TerminalManager$1;->val$nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/connectbot/service/TerminalManager;->removeKey(Ljava/lang/String;)Z

    .line 388
    return-void
.end method
