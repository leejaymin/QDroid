.class Lcom/peteguhl/holsterbuddy/HolsterBuddyService$3;
.super Lcom/peteguhl/holsterbuddy/AVRSInterface$Stub;
.source "HolsterBuddyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/peteguhl/holsterbuddy/HolsterBuddyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddyService;


# direct methods
.method constructor <init>(Lcom/peteguhl/holsterbuddy/HolsterBuddyService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$3;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddyService;

    .line 371
    invoke-direct {p0}, Lcom/peteguhl/holsterbuddy/AVRSInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshSettings()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 424
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$3;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddyService;

    invoke-virtual {v0}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->refreshSettingsService()V

    .line 426
    return-void
.end method

.method public startService()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 391
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$3;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddyService;

    iget-boolean v0, v0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->running:Z

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$3;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddyService;

    #calls: Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->startAVRService()V
    invoke-static {v0}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->access$2(Lcom/peteguhl/holsterbuddy/HolsterBuddyService;)V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$3;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddyService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->running:Z

    .line 395
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$3;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddyService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->holstered:Z

    .line 396
    invoke-virtual {p0}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$3;->refreshSettings()V

    .line 397
    return-void
.end method

.method public stopService()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$3;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddyService;

    iget-boolean v0, v0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->running:Z

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$3;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddyService;

    #calls: Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->stopAVRService()V
    invoke-static {v0}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->access$3(Lcom/peteguhl/holsterbuddy/HolsterBuddyService;)V

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$3;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddyService;

    #calls: Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->goRing()V
    invoke-static {v0}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->access$0(Lcom/peteguhl/holsterbuddy/HolsterBuddyService;)V

    .line 403
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$3;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddyService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->running:Z

    .line 404
    invoke-virtual {p0}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$3;->refreshSettings()V

    .line 405
    return-void
.end method
