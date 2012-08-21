.class Ledu/umich/PowerTutor/components/LCD$1;
.super Landroid/content/BroadcastReceiver;
.source "LCD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/umich/PowerTutor/components/LCD;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/components/LCD;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/components/LCD;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/components/LCD$1;->this$0:Ledu/umich/PowerTutor/components/LCD;

    .line 101
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Ledu/umich/PowerTutor/components/LCD$1;->this$0:Ledu/umich/PowerTutor/components/LCD;

    const/4 v1, 0x0

    #setter for: Ledu/umich/PowerTutor/components/LCD;->screenOn:Z
    invoke-static {v0, v1}, Ledu/umich/PowerTutor/components/LCD;->access$0(Ledu/umich/PowerTutor/components/LCD;Z)V

    .line 103
    :cond_0
    :goto_0
    monitor-exit p0

    .line 110
    return-void

    .line 106
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Ledu/umich/PowerTutor/components/LCD$1;->this$0:Ledu/umich/PowerTutor/components/LCD;

    const/4 v1, 0x1

    #setter for: Ledu/umich/PowerTutor/components/LCD;->screenOn:Z
    invoke-static {v0, v1}, Ledu/umich/PowerTutor/components/LCD;->access$0(Ledu/umich/PowerTutor/components/LCD;Z)V

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
