.class Lorg/connectbot/service/TerminalManager$IdleTask;
.super Ljava/util/TimerTask;
.source "TerminalManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/service/TerminalManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleTask"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/service/TerminalManager;


# direct methods
.method private constructor <init>(Lorg/connectbot/service/TerminalManager;)V
    .locals 0
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lorg/connectbot/service/TerminalManager$IdleTask;->this$0:Lorg/connectbot/service/TerminalManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/connectbot/service/TerminalManager;Lorg/connectbot/service/TerminalManager$IdleTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 523
    invoke-direct {p0, p1}, Lorg/connectbot/service/TerminalManager$IdleTask;-><init>(Lorg/connectbot/service/TerminalManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 529
    const-string v0, "ConnectBot.TerminalManager"

    const-string v1, "Stopping service after timeout of ~%d seconds"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide/16 v4, 0x12c

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v0, p0, Lorg/connectbot/service/TerminalManager$IdleTask;->this$0:Lorg/connectbot/service/TerminalManager;

    invoke-virtual {v0}, Lorg/connectbot/service/TerminalManager;->stopNow()V

    .line 531
    return-void
.end method
