.class Ledu/umich/PowerTutor/ui/UMLogger$3;
.super Ljava/lang/Object;
.source "UMLogger.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/ui/UMLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/ui/UMLogger;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/ui/UMLogger;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/UMLogger$3;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 311
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger$3;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    #getter for: Ledu/umich/PowerTutor/ui/UMLogger;->serviceStartButton:Landroid/widget/Button;
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/UMLogger;->access$0(Ledu/umich/PowerTutor/ui/UMLogger;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 312
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger$3;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    #getter for: Ledu/umich/PowerTutor/ui/UMLogger;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/UMLogger;->access$1(Ledu/umich/PowerTutor/ui/UMLogger;)Ledu/umich/PowerTutor/service/ICounterService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger$3;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/UMLogger$3;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    #getter for: Ledu/umich/PowerTutor/ui/UMLogger;->serviceIntent:Landroid/content/Intent;
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/UMLogger;->access$2(Ledu/umich/PowerTutor/ui/UMLogger;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ledu/umich/PowerTutor/ui/UMLogger;->stopService(Landroid/content/Intent;)Z

    .line 322
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger$3;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    #getter for: Ledu/umich/PowerTutor/ui/UMLogger;->conn:Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/UMLogger;->access$3(Ledu/umich/PowerTutor/ui/UMLogger;)Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;

    move-result-object v0

    if-nez v0, :cond_1

    .line 316
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger$3;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    const-string v1, "Profiler failed to start"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 319
    :cond_1
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger$3;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/UMLogger$3;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    #getter for: Ledu/umich/PowerTutor/ui/UMLogger;->serviceIntent:Landroid/content/Intent;
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/UMLogger;->access$2(Ledu/umich/PowerTutor/ui/UMLogger;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ledu/umich/PowerTutor/ui/UMLogger;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
