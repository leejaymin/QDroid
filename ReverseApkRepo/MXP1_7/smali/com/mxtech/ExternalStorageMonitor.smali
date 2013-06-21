.class public final Lcom/mxtech/ExternalStorageMonitor;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private final ㅼ꽑嫄:Lef;

.field private 弱밧:Z

.field public 癤욱븳援:Ljava/lang/String;

.field private final 궗:Landroid/app/Activity;

.field private final 먯꽌:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZLef;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/mxtech/ExternalStorageMonitor;->궗:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/mxtech/ExternalStorageMonitor;->먯꽌:Z

    iput-object p3, p0, Lcom/mxtech/ExternalStorageMonitor;->ㅼ꽑嫄:Lef;

    return-void
.end method

.method private 癤욱븳援(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "mounted"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/mxtech/ExternalStorageMonitor;->먯꽌:Z

    if-eqz v0, :cond_0

    const-string v0, "mounted_ro"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mxtech/ExternalStorageMonitor;->癤욱븳援:Ljava/lang/String;

    iget-object v0, p0, Lcom/mxtech/ExternalStorageMonitor;->癤욱븳援:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mxtech/ExternalStorageMonitor;->癤욱븳援(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/ExternalStorageMonitor;->ㅼ꽑嫄:Lef;

    iget-object v1, p0, Lcom/mxtech/ExternalStorageMonitor;->癤욱븳援:Ljava/lang/String;

    invoke-interface {v0, v1}, Lef;->a_(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public 癤욱븳援()Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mxtech/ExternalStorageMonitor;->癤욱븳援:Ljava/lang/String;

    iget-object v1, p0, Lcom/mxtech/ExternalStorageMonitor;->癤욱븳援:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mxtech/ExternalStorageMonitor;->癤욱븳援(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mxtech/ExternalStorageMonitor;->궗:Landroid/app/Activity;

    invoke-virtual {v2, p0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v0, p0, Lcom/mxtech/ExternalStorageMonitor;->弱밧:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 궗()V
    .locals 1

    iget-boolean v0, p0, Lcom/mxtech/ExternalStorageMonitor;->弱밧:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/ExternalStorageMonitor;->궗:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mxtech/ExternalStorageMonitor;->弱밧:Z

    :cond_0
    return-void
.end method
