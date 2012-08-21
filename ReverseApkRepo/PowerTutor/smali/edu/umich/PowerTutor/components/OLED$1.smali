.class Ledu/umich/PowerTutor/components/OLED$1;
.super Landroid/content/BroadcastReceiver;
.source "OLED.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/umich/PowerTutor/components/OLED;-><init>(Landroid/content/Context;Ledu/umich/PowerTutor/phone/PhoneConstants;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/components/OLED;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/components/OLED;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/components/OLED$1;->this$0:Ledu/umich/PowerTutor/components/OLED;

    .line 131
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 133
    monitor-enter p0

    .line 134
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Ledu/umich/PowerTutor/components/OLED$1;->this$0:Ledu/umich/PowerTutor/components/OLED;

    const/4 v1, 0x0

    #setter for: Ledu/umich/PowerTutor/components/OLED;->screenOn:Z
    invoke-static {v0, v1}, Ledu/umich/PowerTutor/components/OLED;->access$0(Ledu/umich/PowerTutor/components/OLED;Z)V

    .line 133
    :cond_0
    :goto_0
    monitor-exit p0

    .line 140
    return-void

    .line 136
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Ledu/umich/PowerTutor/components/OLED$1;->this$0:Ledu/umich/PowerTutor/components/OLED;

    const/4 v1, 0x1

    #setter for: Ledu/umich/PowerTutor/components/OLED;->screenOn:Z
    invoke-static {v0, v1}, Ledu/umich/PowerTutor/components/OLED;->access$0(Ledu/umich/PowerTutor/components/OLED;Z)V

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
