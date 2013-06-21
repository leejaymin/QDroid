.class Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;
.super Ljava/lang/Object;
.source "PowerTop.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/ui/PowerTop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CounterServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/ui/PowerTop;


# direct methods
.method private constructor <init>(Ledu/umich/PowerTutor/ui/PowerTop;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerTop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ledu/umich/PowerTutor/ui/PowerTop;Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 377
    invoke-direct {p0, p1}, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;-><init>(Ledu/umich/PowerTutor/ui/PowerTop;)V

    return-void
.end method

.method static synthetic access$1(Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;)Ledu/umich/PowerTutor/ui/PowerTop;
    .locals 1
    .parameter

    .prologue
    .line 377
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerTop;

    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 12
    .parameter "className"
    .parameter "boundService"

    .prologue
    const/4 v11, 0x1

    const/4 v6, -0x1

    .line 380
    iget-object v5, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerTop;

    invoke-static {p2}, Ledu/umich/PowerTutor/service/ICounterService$Stub;->asInterface(Landroid/os/IBinder;)Ledu/umich/PowerTutor/service/ICounterService;

    move-result-object v7

    #setter for: Ledu/umich/PowerTutor/ui/PowerTop;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v5, v7}, Ledu/umich/PowerTutor/ui/PowerTop;->access$0(Ledu/umich/PowerTutor/ui/PowerTop;Ledu/umich/PowerTutor/service/ICounterService;)V

    .line 382
    :try_start_0
    iget-object v5, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerTop;

    iget-object v7, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerTop;

    #getter for: Ledu/umich/PowerTutor/ui/PowerTop;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v7}, Ledu/umich/PowerTutor/ui/PowerTop;->access$1(Ledu/umich/PowerTutor/ui/PowerTop;)Ledu/umich/PowerTutor/service/ICounterService;

    move-result-object v7

    invoke-interface {v7}, Ledu/umich/PowerTutor/service/ICounterService;->getComponents()[Ljava/lang/String;

    move-result-object v7

    #setter for: Ledu/umich/PowerTutor/ui/PowerTop;->componentNames:[Ljava/lang/String;
    invoke-static {v5, v7}, Ledu/umich/PowerTutor/ui/PowerTop;->access$2(Ledu/umich/PowerTutor/ui/PowerTop;[Ljava/lang/String;)V

    .line 383
    iget-object v5, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerTop;

    iget-object v7, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerTop;

    #getter for: Ledu/umich/PowerTutor/ui/PowerTop;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v7}, Ledu/umich/PowerTutor/ui/PowerTop;->access$1(Ledu/umich/PowerTutor/ui/PowerTop;)Ledu/umich/PowerTutor/service/ICounterService;

    move-result-object v7

    invoke-interface {v7}, Ledu/umich/PowerTutor/service/ICounterService;->getNoUidMask()I

    move-result v7

    #setter for: Ledu/umich/PowerTutor/ui/PowerTop;->noUidMask:I
    invoke-static {v5, v7}, Ledu/umich/PowerTutor/ui/PowerTop;->access$3(Ledu/umich/PowerTutor/ui/PowerTop;I)V

    .line 384
    iget-object v5, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerTop;

    #getter for: Ledu/umich/PowerTutor/ui/PowerTop;->filterGroup:Landroid/widget/LinearLayout;
    invoke-static {v5}, Ledu/umich/PowerTutor/ui/PowerTop;->access$4(Ledu/umich/PowerTutor/ui/PowerTop;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 385
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerTop;

    #getter for: Ledu/umich/PowerTutor/ui/PowerTop;->componentNames:[Ljava/lang/String;
    invoke-static {v5}, Ledu/umich/PowerTutor/ui/PowerTop;->access$5(Ledu/umich/PowerTutor/ui/PowerTop;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-lt v2, v5, :cond_0

    .line 418
    .end local v2           #i:I
    :goto_1
    return-void

    .line 386
    .restart local v2       #i:I
    :cond_0
    iget-object v5, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerTop;

    #getter for: Ledu/umich/PowerTutor/ui/PowerTop;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v5}, Ledu/umich/PowerTutor/ui/PowerTop;->access$6(Ledu/umich/PowerTutor/ui/PowerTop;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v7, "topIgnoreMask"

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 387
    .local v3, ignMask:I
    iget-object v5, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerTop;

    #getter for: Ledu/umich/PowerTutor/ui/PowerTop;->noUidMask:I
    invoke-static {v5}, Ledu/umich/PowerTutor/ui/PowerTop;->access$7(Ledu/umich/PowerTutor/ui/PowerTop;)I

    move-result v5

    shl-int v7, v11, v2

    and-int/2addr v5, v7

    if-eqz v5, :cond_1

    .line 385
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 388
    :cond_1
    new-instance v1, Landroid/widget/TextView;

    iget-object v5, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerTop;

    invoke-direct {v1, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 389
    .local v1, filterToggle:Landroid/widget/TextView;
    move v4, v2

    .line 390
    .local v4, index:I
    iget-object v5, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerTop;

    #getter for: Ledu/umich/PowerTutor/ui/PowerTop;->componentNames:[Ljava/lang/String;
    invoke-static {v5}, Ledu/umich/PowerTutor/ui/PowerTop;->access$5(Ledu/umich/PowerTutor/ui/PowerTop;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    const/16 v5, 0x11

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 392
    shl-int v5, v11, v4

    and-int/2addr v5, v3

    if-nez v5, :cond_2

    move v5, v6

    :goto_3
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 395
    iget-object v5, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerTop;

    #getter for: Ledu/umich/PowerTutor/ui/PowerTop;->filterGroup:Landroid/widget/LinearLayout;
    invoke-static {v5}, Ledu/umich/PowerTutor/ui/PowerTop;->access$4(Ledu/umich/PowerTutor/ui/PowerTop;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_3

    const v5, -0xbbbbbc

    .line 394
    :goto_4
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 396
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 397
    new-instance v5, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection$1;

    invoke-direct {v5, p0, v4, v1}, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection$1;-><init>(Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;ILandroid/widget/TextView;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    iget-object v5, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerTop;

    #getter for: Ledu/umich/PowerTutor/ui/PowerTop;->filterGroup:Landroid/widget/LinearLayout;
    invoke-static {v5}, Ledu/umich/PowerTutor/ui/PowerTop;->access$4(Ledu/umich/PowerTutor/ui/PowerTop;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 412
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    .line 413
    const/4 v9, -0x1

    const/high16 v10, 0x3f80

    .line 412
    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 411
    invoke-virtual {v5, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 415
    .end local v1           #filterToggle:Landroid/widget/TextView;
    .end local v2           #i:I
    .end local v3           #ignMask:I
    .end local v4           #index:I
    :catch_0
    move-exception v0

    .line 416
    .local v0, e:Landroid/os/RemoteException;
    iget-object v5, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerTop;

    const/4 v6, 0x0

    #setter for: Ledu/umich/PowerTutor/ui/PowerTop;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v5, v6}, Ledu/umich/PowerTutor/ui/PowerTop;->access$0(Ledu/umich/PowerTutor/ui/PowerTop;Ledu/umich/PowerTutor/service/ICounterService;)V

    goto :goto_1

    .line 393
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #filterToggle:Landroid/widget/TextView;
    .restart local v2       #i:I
    .restart local v3       #ignMask:I
    .restart local v4       #index:I
    :cond_2
    const v5, -0x777778

    goto :goto_3

    .line 395
    :cond_3
    const v5, -0xaaaaab

    goto :goto_4
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "className"

    .prologue
    .line 421
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerTop;

    const/4 v1, 0x0

    #setter for: Ledu/umich/PowerTutor/ui/PowerTop;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v0, v1}, Ledu/umich/PowerTutor/ui/PowerTop;->access$0(Ledu/umich/PowerTutor/ui/PowerTop;Ledu/umich/PowerTutor/service/ICounterService;)V

    .line 422
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerTop;

    invoke-virtual {v0}, Ledu/umich/PowerTutor/ui/PowerTop;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerTop;

    #getter for: Ledu/umich/PowerTutor/ui/PowerTop;->conn:Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/PowerTop;->access$8(Ledu/umich/PowerTutor/ui/PowerTop;)Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 423
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerTop;

    invoke-virtual {v0}, Ledu/umich/PowerTutor/ui/PowerTop;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerTop;

    #getter for: Ledu/umich/PowerTutor/ui/PowerTop;->serviceIntent:Landroid/content/Intent;
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/PowerTop;->access$9(Ledu/umich/PowerTutor/ui/PowerTop;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;->this$0:Ledu/umich/PowerTutor/ui/PowerTop;

    #getter for: Ledu/umich/PowerTutor/ui/PowerTop;->conn:Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;
    invoke-static {v2}, Ledu/umich/PowerTutor/ui/PowerTop;->access$8(Ledu/umich/PowerTutor/ui/PowerTop;)Ledu/umich/PowerTutor/ui/PowerTop$CounterServiceConnection;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 424
    const-string v0, "PowerTop"

    const-string v1, "Unexpectedly lost connection to service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return-void
.end method
