.class public final Lsj;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic 癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdView;

.field private 궗:Z


# direct methods
.method public constructor <init>(Lcom/nbpcorp/mobilead/sdk/MobileAdView;)V
    .locals 1

    iput-object p1, p0, Lsj;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsj;->궗:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lsj;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdView;

    invoke-virtual {v1}, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧()Lcom/nbpcorp/mobilead/sdk/m;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nbpcorp/mobilead/sdk/m;->먯꽌(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-static {}, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->弱밧()Lcom/nbpcorp/mobilead/sdk/m;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nbpcorp/mobilead/sdk/m;->궗(Z)V

    goto :goto_0
.end method

.method public 癤욱븳援()V
    .locals 2

    iget-boolean v0, p0, Lsj;->궗:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsj;->궗:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lsj;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdView;

    invoke-static {v1}, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->癤욱븳援(Lcom/nbpcorp/mobilead/sdk/MobileAdView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public 궗()V
    .locals 1

    iget-boolean v0, p0, Lsj;->궗:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsj;->궗:Z

    iget-object v0, p0, Lsj;->癤욱븳援:Lcom/nbpcorp/mobilead/sdk/MobileAdView;

    invoke-static {v0}, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->癤욱븳援(Lcom/nbpcorp/mobilead/sdk/MobileAdView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
