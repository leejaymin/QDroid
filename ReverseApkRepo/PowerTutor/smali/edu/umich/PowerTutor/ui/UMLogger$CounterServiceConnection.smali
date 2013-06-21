.class Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;
.super Ljava/lang/Object;
.source "UMLogger.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/ui/UMLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CounterServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/ui/UMLogger;


# direct methods
.method private constructor <init>(Ledu/umich/PowerTutor/ui/UMLogger;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ledu/umich/PowerTutor/ui/UMLogger;Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 325
    invoke-direct {p0, p1}, Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;-><init>(Ledu/umich/PowerTutor/ui/UMLogger;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "boundService"

    .prologue
    const/4 v2, 0x1

    .line 328
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    invoke-static {p2}, Ledu/umich/PowerTutor/service/ICounterService$Stub;->asInterface(Landroid/os/IBinder;)Ledu/umich/PowerTutor/service/ICounterService;

    move-result-object v1

    #setter for: Ledu/umich/PowerTutor/ui/UMLogger;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v0, v1}, Ledu/umich/PowerTutor/ui/UMLogger;->access$4(Ledu/umich/PowerTutor/ui/UMLogger;Ledu/umich/PowerTutor/service/ICounterService;)V

    .line 329
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    #getter for: Ledu/umich/PowerTutor/ui/UMLogger;->serviceStartButton:Landroid/widget/Button;
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/UMLogger;->access$0(Ledu/umich/PowerTutor/ui/UMLogger;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "Stop Profiler"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    #getter for: Ledu/umich/PowerTutor/ui/UMLogger;->serviceStartButton:Landroid/widget/Button;
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/UMLogger;->access$0(Ledu/umich/PowerTutor/ui/UMLogger;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 331
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    #getter for: Ledu/umich/PowerTutor/ui/UMLogger;->appViewerButton:Landroid/widget/Button;
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/UMLogger;->access$5(Ledu/umich/PowerTutor/ui/UMLogger;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 332
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    #getter for: Ledu/umich/PowerTutor/ui/UMLogger;->sysViewerButton:Landroid/widget/Button;
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/UMLogger;->access$6(Ledu/umich/PowerTutor/ui/UMLogger;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 333
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "className"

    .prologue
    const/4 v3, 0x0

    .line 336
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    const/4 v1, 0x0

    #setter for: Ledu/umich/PowerTutor/ui/UMLogger;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v0, v1}, Ledu/umich/PowerTutor/ui/UMLogger;->access$4(Ledu/umich/PowerTutor/ui/UMLogger;Ledu/umich/PowerTutor/service/ICounterService;)V

    .line 337
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    invoke-virtual {v0}, Ledu/umich/PowerTutor/ui/UMLogger;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    #getter for: Ledu/umich/PowerTutor/ui/UMLogger;->conn:Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/UMLogger;->access$3(Ledu/umich/PowerTutor/ui/UMLogger;)Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 338
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    invoke-virtual {v0}, Ledu/umich/PowerTutor/ui/UMLogger;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    #getter for: Ledu/umich/PowerTutor/ui/UMLogger;->serviceIntent:Landroid/content/Intent;
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/UMLogger;->access$2(Ledu/umich/PowerTutor/ui/UMLogger;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    #getter for: Ledu/umich/PowerTutor/ui/UMLogger;->conn:Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;
    invoke-static {v2}, Ledu/umich/PowerTutor/ui/UMLogger;->access$3(Ledu/umich/PowerTutor/ui/UMLogger;)Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 340
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    const-string v1, "Profiler stopped"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 342
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    #getter for: Ledu/umich/PowerTutor/ui/UMLogger;->serviceStartButton:Landroid/widget/Button;
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/UMLogger;->access$0(Ledu/umich/PowerTutor/ui/UMLogger;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "Start Profiler"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    #getter for: Ledu/umich/PowerTutor/ui/UMLogger;->serviceStartButton:Landroid/widget/Button;
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/UMLogger;->access$0(Ledu/umich/PowerTutor/ui/UMLogger;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 344
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    #getter for: Ledu/umich/PowerTutor/ui/UMLogger;->appViewerButton:Landroid/widget/Button;
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/UMLogger;->access$5(Ledu/umich/PowerTutor/ui/UMLogger;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 345
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/UMLogger;

    #getter for: Ledu/umich/PowerTutor/ui/UMLogger;->sysViewerButton:Landroid/widget/Button;
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/UMLogger;->access$6(Ledu/umich/PowerTutor/ui/UMLogger;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 346
    return-void
.end method
