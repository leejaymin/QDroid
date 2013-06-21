.class Lcom/peteguhl/holsterbuddy/HolsterBuddyService$2;
.super Landroid/content/BroadcastReceiver;
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
    iput-object p1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddyService;

    .line 275
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 278
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddyService;

    invoke-virtual {v1}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->unregisterListeners()V

    .line 280
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddyService;

    invoke-virtual {v1}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->registerListeners()V

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 285
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddyService;

    invoke-virtual {v1}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->unregisterListeners()V

    .line 286
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddyService;

    invoke-virtual {v1}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->registerListeners()V

    goto :goto_0

    .line 291
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.ANSWER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 296
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddyService;

    iget-boolean v1, v1, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->pendingRingMode:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddyService;

    iget-boolean v1, v1, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->pendingModeChange:Z

    if-eqz v1, :cond_3

    .line 297
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddyService;

    iput-boolean v3, v1, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->pendingModeChange:Z

    .line 298
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddyService;

    iput-boolean v3, v1, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->pendingRingMode:Z

    .line 299
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddyService;

    #calls: Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->goRing()V
    invoke-static {v1}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->access$0(Lcom/peteguhl/holsterbuddy/HolsterBuddyService;)V

    goto :goto_0

    .line 302
    :cond_3
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddyService;

    iget-boolean v1, v1, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->pendingRingMode:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddyService;

    iget-boolean v1, v1, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->pendingModeChange:Z

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddyService;

    iput-boolean v3, v1, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->pendingModeChange:Z

    .line 304
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddyService;

    iput-boolean v3, v1, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->pendingRingMode:Z

    .line 305
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddyService;

    iget-object v2, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$2;->this$0:Lcom/peteguhl/holsterbuddy/HolsterBuddyService;

    iget v2, v2, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->holsteredNotificationType:I

    #calls: Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->goVibrate(I)V
    invoke-static {v1, v2}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->access$1(Lcom/peteguhl/holsterbuddy/HolsterBuddyService;I)V

    goto :goto_0

    .line 310
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, state:I
    const-string v1, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    goto :goto_0
.end method
