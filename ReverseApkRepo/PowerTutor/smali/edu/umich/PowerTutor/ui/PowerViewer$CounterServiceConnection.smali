.class Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;
.super Ljava/lang/Object;
.source "PowerViewer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/ui/PowerViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CounterServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/ui/PowerViewer;


# direct methods
.method private constructor <init>(Ledu/umich/PowerTutor/ui/PowerViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ledu/umich/PowerTutor/ui/PowerViewer;Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 189
    invoke-direct {p0, p1}, Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;-><init>(Ledu/umich/PowerTutor/ui/PowerViewer;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "boundService"

    .prologue
    .line 192
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    invoke-static {p2}, Ledu/umich/PowerTutor/service/ICounterService$Stub;->asInterface(Landroid/os/IBinder;)Ledu/umich/PowerTutor/service/ICounterService;

    move-result-object v2

    #setter for: Ledu/umich/PowerTutor/ui/PowerViewer;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v1, v2}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$2(Ledu/umich/PowerTutor/ui/PowerViewer;Ledu/umich/PowerTutor/service/ICounterService;)V

    .line 194
    :try_start_0
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v2}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$3(Ledu/umich/PowerTutor/ui/PowerViewer;)Ledu/umich/PowerTutor/service/ICounterService;

    move-result-object v2

    invoke-interface {v2}, Ledu/umich/PowerTutor/service/ICounterService;->getComponents()[Ljava/lang/String;

    move-result-object v2

    #setter for: Ledu/umich/PowerTutor/ui/PowerViewer;->componentNames:[Ljava/lang/String;
    invoke-static {v1, v2}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$4(Ledu/umich/PowerTutor/ui/PowerViewer;[Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v2}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$3(Ledu/umich/PowerTutor/ui/PowerViewer;)Ledu/umich/PowerTutor/service/ICounterService;

    move-result-object v2

    invoke-interface {v2}, Ledu/umich/PowerTutor/service/ICounterService;->getComponentsMaxPower()[I

    move-result-object v2

    #setter for: Ledu/umich/PowerTutor/ui/PowerViewer;->componentsMaxPower:[I
    invoke-static {v1, v2}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$5(Ledu/umich/PowerTutor/ui/PowerViewer;[I)V

    .line 196
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v2}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$3(Ledu/umich/PowerTutor/ui/PowerViewer;)Ledu/umich/PowerTutor/service/ICounterService;

    move-result-object v2

    invoke-interface {v2}, Ledu/umich/PowerTutor/service/ICounterService;->getNoUidMask()I

    move-result v2

    #setter for: Ledu/umich/PowerTutor/ui/PowerViewer;->noUidMask:I
    invoke-static {v1, v2}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$6(Ledu/umich/PowerTutor/ui/PowerViewer;I)V

    .line 197
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    invoke-virtual {v1}, Ledu/umich/PowerTutor/ui/PowerViewer;->refreshView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    const/4 v2, 0x0

    #setter for: Ledu/umich/PowerTutor/ui/PowerViewer;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v1, v2}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$2(Ledu/umich/PowerTutor/ui/PowerViewer;Ledu/umich/PowerTutor/service/ICounterService;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "className"

    .prologue
    .line 204
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    const/4 v1, 0x0

    #setter for: Ledu/umich/PowerTutor/ui/PowerViewer;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v0, v1}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$2(Ledu/umich/PowerTutor/ui/PowerViewer;Ledu/umich/PowerTutor/service/ICounterService;)V

    .line 205
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    invoke-virtual {v0}, Ledu/umich/PowerTutor/ui/PowerViewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->conn:Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$7(Ledu/umich/PowerTutor/ui/PowerViewer;)Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 206
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    invoke-virtual {v0}, Ledu/umich/PowerTutor/ui/PowerViewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->serviceIntent:Landroid/content/Intent;
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$8(Ledu/umich/PowerTutor/ui/PowerViewer;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerViewer;

    #getter for: Ledu/umich/PowerTutor/ui/PowerViewer;->conn:Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;
    invoke-static {v2}, Ledu/umich/PowerTutor/ui/PowerViewer;->access$7(Ledu/umich/PowerTutor/ui/PowerViewer;)Ledu/umich/PowerTutor/ui/PowerViewer$CounterServiceConnection;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 207
    const-string v0, "PowerViewer"

    const-string v1, "Unexpectedly lost connection to service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void
.end method
