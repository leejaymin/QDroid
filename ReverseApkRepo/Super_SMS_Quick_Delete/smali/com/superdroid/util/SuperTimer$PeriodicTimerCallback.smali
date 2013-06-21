.class Lcom/superdroid/util/SuperTimer$PeriodicTimerCallback;
.super Ljava/lang/Object;
.source "SuperTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superdroid/util/SuperTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeriodicTimerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/superdroid/util/SuperTimer;


# direct methods
.method constructor <init>(Lcom/superdroid/util/SuperTimer;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/superdroid/util/SuperTimer$PeriodicTimerCallback;->this$0:Lcom/superdroid/util/SuperTimer;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/superdroid/util/SuperTimer$PeriodicTimerCallback;->this$0:Lcom/superdroid/util/SuperTimer;

    invoke-virtual {v0}, Lcom/superdroid/util/SuperTimer;->periodicUpdateTimer()V

    .line 24
    return-void
.end method
