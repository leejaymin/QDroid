.class Ledu/umich/PowerTutor/ui/MiscView$CounterServiceConnection;
.super Ljava/lang/Object;
.source "MiscView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/ui/MiscView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CounterServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/ui/MiscView;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/ui/MiscView;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/MiscView$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "boundService"

    .prologue
    .line 141
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/MiscView$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    invoke-static {p2}, Ledu/umich/PowerTutor/service/ICounterService$Stub;->asInterface(Landroid/os/IBinder;)Ledu/umich/PowerTutor/service/ICounterService;

    move-result-object v2

    #setter for: Ledu/umich/PowerTutor/ui/MiscView;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v1, v2}, Ledu/umich/PowerTutor/ui/MiscView;->access$0(Ledu/umich/PowerTutor/ui/MiscView;Ledu/umich/PowerTutor/service/ICounterService;)V

    .line 143
    :try_start_0
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/MiscView$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/MiscView$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v2}, Ledu/umich/PowerTutor/ui/MiscView;->access$1(Ledu/umich/PowerTutor/ui/MiscView;)Ledu/umich/PowerTutor/service/ICounterService;

    move-result-object v2

    invoke-interface {v2}, Ledu/umich/PowerTutor/service/ICounterService;->getComponents()[Ljava/lang/String;

    move-result-object v2

    #setter for: Ledu/umich/PowerTutor/ui/MiscView;->componentNames:[Ljava/lang/String;
    invoke-static {v1, v2}, Ledu/umich/PowerTutor/ui/MiscView;->access$2(Ledu/umich/PowerTutor/ui/MiscView;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/MiscView$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    invoke-virtual {v1}, Ledu/umich/PowerTutor/ui/MiscView;->refreshView()V

    .line 148
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/MiscView$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    #setter for: Ledu/umich/PowerTutor/ui/MiscView;->componentNames:[Ljava/lang/String;
    invoke-static {v1, v2}, Ledu/umich/PowerTutor/ui/MiscView;->access$2(Ledu/umich/PowerTutor/ui/MiscView;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "className"

    .prologue
    .line 151
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    const/4 v1, 0x0

    #setter for: Ledu/umich/PowerTutor/ui/MiscView;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v0, v1}, Ledu/umich/PowerTutor/ui/MiscView;->access$0(Ledu/umich/PowerTutor/ui/MiscView;Ledu/umich/PowerTutor/service/ICounterService;)V

    .line 152
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    invoke-virtual {v0}, Ledu/umich/PowerTutor/ui/MiscView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/MiscView$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->conn:Ledu/umich/PowerTutor/ui/MiscView$CounterServiceConnection;
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/MiscView;->access$3(Ledu/umich/PowerTutor/ui/MiscView;)Ledu/umich/PowerTutor/ui/MiscView$CounterServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 153
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    invoke-virtual {v0}, Ledu/umich/PowerTutor/ui/MiscView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/MiscView$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->serviceIntent:Landroid/content/Intent;
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/MiscView;->access$4(Ledu/umich/PowerTutor/ui/MiscView;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/MiscView$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->conn:Ledu/umich/PowerTutor/ui/MiscView$CounterServiceConnection;
    invoke-static {v2}, Ledu/umich/PowerTutor/ui/MiscView;->access$3(Ledu/umich/PowerTutor/ui/MiscView;)Ledu/umich/PowerTutor/ui/MiscView$CounterServiceConnection;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 154
    const-string v0, "MiscView"

    const-string v1, "Unexpectedly lost connection to service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method
