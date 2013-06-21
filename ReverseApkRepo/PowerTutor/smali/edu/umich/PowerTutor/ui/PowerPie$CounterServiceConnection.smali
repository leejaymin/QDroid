.class Ledu/umich/PowerTutor/ui/PowerPie$CounterServiceConnection;
.super Ljava/lang/Object;
.source "PowerPie.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/ui/PowerPie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CounterServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/ui/PowerPie;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/ui/PowerPie;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/PowerPie$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerPie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "boundService"

    .prologue
    .line 187
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerPie$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerPie;

    invoke-static {p2}, Ledu/umich/PowerTutor/service/ICounterService$Stub;->asInterface(Landroid/os/IBinder;)Ledu/umich/PowerTutor/service/ICounterService;

    move-result-object v2

    #setter for: Ledu/umich/PowerTutor/ui/PowerPie;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v1, v2}, Ledu/umich/PowerTutor/ui/PowerPie;->access$0(Ledu/umich/PowerTutor/ui/PowerPie;Ledu/umich/PowerTutor/service/ICounterService;)V

    .line 189
    :try_start_0
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerPie$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerPie;

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/PowerPie$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerPie;

    #getter for: Ledu/umich/PowerTutor/ui/PowerPie;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v2}, Ledu/umich/PowerTutor/ui/PowerPie;->access$1(Ledu/umich/PowerTutor/ui/PowerPie;)Ledu/umich/PowerTutor/service/ICounterService;

    move-result-object v2

    invoke-interface {v2}, Ledu/umich/PowerTutor/service/ICounterService;->getComponents()[Ljava/lang/String;

    move-result-object v2

    #setter for: Ledu/umich/PowerTutor/ui/PowerPie;->componentNames:[Ljava/lang/String;
    invoke-static {v1, v2}, Ledu/umich/PowerTutor/ui/PowerPie;->access$2(Ledu/umich/PowerTutor/ui/PowerPie;[Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerPie$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerPie;

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/PowerPie$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerPie;

    #getter for: Ledu/umich/PowerTutor/ui/PowerPie;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v2}, Ledu/umich/PowerTutor/ui/PowerPie;->access$1(Ledu/umich/PowerTutor/ui/PowerPie;)Ledu/umich/PowerTutor/service/ICounterService;

    move-result-object v2

    invoke-interface {v2}, Ledu/umich/PowerTutor/service/ICounterService;->getNoUidMask()I

    move-result v2

    #setter for: Ledu/umich/PowerTutor/ui/PowerPie;->noUidMask:I
    invoke-static {v1, v2}, Ledu/umich/PowerTutor/ui/PowerPie;->access$3(Ledu/umich/PowerTutor/ui/PowerPie;I)V

    .line 191
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerPie$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerPie;

    invoke-virtual {v1}, Ledu/umich/PowerTutor/ui/PowerPie;->refreshView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerPie$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerPie;

    const/4 v2, 0x0

    #setter for: Ledu/umich/PowerTutor/ui/PowerPie;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v1, v2}, Ledu/umich/PowerTutor/ui/PowerPie;->access$0(Ledu/umich/PowerTutor/ui/PowerPie;Ledu/umich/PowerTutor/service/ICounterService;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "className"

    .prologue
    .line 198
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerPie$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerPie;

    const/4 v1, 0x0

    #setter for: Ledu/umich/PowerTutor/ui/PowerPie;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v0, v1}, Ledu/umich/PowerTutor/ui/PowerPie;->access$0(Ledu/umich/PowerTutor/ui/PowerPie;Ledu/umich/PowerTutor/service/ICounterService;)V

    .line 199
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerPie$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerPie;

    invoke-virtual {v0}, Ledu/umich/PowerTutor/ui/PowerPie;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerPie$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerPie;

    #getter for: Ledu/umich/PowerTutor/ui/PowerPie;->conn:Ledu/umich/PowerTutor/ui/PowerPie$CounterServiceConnection;
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/PowerPie;->access$4(Ledu/umich/PowerTutor/ui/PowerPie;)Ledu/umich/PowerTutor/ui/PowerPie$CounterServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 200
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerPie$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerPie;

    invoke-virtual {v0}, Ledu/umich/PowerTutor/ui/PowerPie;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerPie$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerPie;

    #getter for: Ledu/umich/PowerTutor/ui/PowerPie;->serviceIntent:Landroid/content/Intent;
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/PowerPie;->access$5(Ledu/umich/PowerTutor/ui/PowerPie;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/PowerPie$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerPie;

    #getter for: Ledu/umich/PowerTutor/ui/PowerPie;->conn:Ledu/umich/PowerTutor/ui/PowerPie$CounterServiceConnection;
    invoke-static {v2}, Ledu/umich/PowerTutor/ui/PowerPie;->access$4(Ledu/umich/PowerTutor/ui/PowerPie;)Ledu/umich/PowerTutor/ui/PowerPie$CounterServiceConnection;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 201
    const-string v0, "PowerPie"

    const-string v1, "Unexpectedly lost connection to service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void
.end method
