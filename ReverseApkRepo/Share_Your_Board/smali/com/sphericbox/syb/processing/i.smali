.class Lcom/sphericbox/syb/processing/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic aI:Lcom/sphericbox/syb/processing/ProcessingActivity;


# direct methods
.method constructor <init>(Lcom/sphericbox/syb/processing/ProcessingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sphericbox/syb/processing/i;->aI:Lcom/sphericbox/syb/processing/ProcessingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sphericbox/syb/processing/i;->aI:Lcom/sphericbox/syb/processing/ProcessingActivity;

    invoke-static {p2}, Lcom/sphericbox/syb/processing/IProcessingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sphericbox/syb/processing/IProcessingService;

    move-result-object v1

    #setter for: Lcom/sphericbox/syb/processing/ProcessingActivity;->ay:Lcom/sphericbox/syb/processing/IProcessingService;
    invoke-static {v0, v1}, Lcom/sphericbox/syb/processing/ProcessingActivity;->access$002(Lcom/sphericbox/syb/processing/ProcessingActivity;Lcom/sphericbox/syb/processing/IProcessingService;)Lcom/sphericbox/syb/processing/IProcessingService;

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/sphericbox/syb/processing/i;->aI:Lcom/sphericbox/syb/processing/ProcessingActivity;

    new-instance v1, Lcom/sphericbox/syb/processing/g;

    iget-object v2, p0, Lcom/sphericbox/syb/processing/i;->aI:Lcom/sphericbox/syb/processing/ProcessingActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sphericbox/syb/processing/g;-><init>(Lcom/sphericbox/syb/processing/ProcessingActivity;Lcom/sphericbox/syb/processing/i;)V

    #setter for: Lcom/sphericbox/syb/processing/ProcessingActivity;->ax:Lcom/sphericbox/syb/processing/IProcessingServiceCallback;
    invoke-static {v0, v1}, Lcom/sphericbox/syb/processing/ProcessingActivity;->access$102(Lcom/sphericbox/syb/processing/ProcessingActivity;Lcom/sphericbox/syb/processing/IProcessingServiceCallback;)Lcom/sphericbox/syb/processing/IProcessingServiceCallback;

    .line 61
    iget-object v0, p0, Lcom/sphericbox/syb/processing/i;->aI:Lcom/sphericbox/syb/processing/ProcessingActivity;

    #getter for: Lcom/sphericbox/syb/processing/ProcessingActivity;->ay:Lcom/sphericbox/syb/processing/IProcessingService;
    invoke-static {v0}, Lcom/sphericbox/syb/processing/ProcessingActivity;->access$000(Lcom/sphericbox/syb/processing/ProcessingActivity;)Lcom/sphericbox/syb/processing/IProcessingService;

    move-result-object v0

    iget-object v1, p0, Lcom/sphericbox/syb/processing/i;->aI:Lcom/sphericbox/syb/processing/ProcessingActivity;

    #getter for: Lcom/sphericbox/syb/processing/ProcessingActivity;->ax:Lcom/sphericbox/syb/processing/IProcessingServiceCallback;
    invoke-static {v1}, Lcom/sphericbox/syb/processing/ProcessingActivity;->access$100(Lcom/sphericbox/syb/processing/ProcessingActivity;)Lcom/sphericbox/syb/processing/IProcessingServiceCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sphericbox/syb/processing/IProcessingService;->registerCallback(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    const-string v1, "ProcessingActivity"

    const-string v2, "Not able to register callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sphericbox/syb/processing/i;->aI:Lcom/sphericbox/syb/processing/ProcessingActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sphericbox/syb/processing/ProcessingActivity;->ay:Lcom/sphericbox/syb/processing/IProcessingService;
    invoke-static {v0, v1}, Lcom/sphericbox/syb/processing/ProcessingActivity;->access$002(Lcom/sphericbox/syb/processing/ProcessingActivity;Lcom/sphericbox/syb/processing/IProcessingService;)Lcom/sphericbox/syb/processing/IProcessingService;

    .line 70
    return-void
.end method
