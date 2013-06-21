.class public Lcom/chillingo/crystal/PrivateSession$EveryMinuteHandler;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/PrivateSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EveryMinuteHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/crystal/PrivateSession;


# direct methods
.method public constructor <init>(Lcom/chillingo/crystal/PrivateSession;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/PrivateSession$EveryMinuteHandler;->this$0:Lcom/chillingo/crystal/PrivateSession;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/PrivateSession$EveryMinuteHandler;->this$0:Lcom/chillingo/crystal/PrivateSession;

    new-instance v1, Lcom/chillingo/crystal/PrivateSession$EveryMinuteHandler$1;

    invoke-direct {v1, p0}, Lcom/chillingo/crystal/PrivateSession$EveryMinuteHandler$1;-><init>(Lcom/chillingo/crystal/PrivateSession$EveryMinuteHandler;)V

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/PrivateSession;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
