.class public Lcom/kms/kmsshared/KMSApplication$UsbConnectionListener;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/kms/kmsshared/KMSApplication;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1064
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1062
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication$UsbConnectionListener;->b:Ljava/util/Set;

    .line 1065
    iput-object p2, p0, Lcom/kms/kmsshared/KMSApplication$UsbConnectionListener;->a:Landroid/content/Context;

    .line 1067
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lfw;->a(Landroid/content/Context;Z)[Ljava/lang/String;

    move-result-object v1

    .line 1068
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 1069
    iget-object v4, p0, Lcom/kms/kmsshared/KMSApplication$UsbConnectionListener;->b:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1068
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1072
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1073
    iget-object v1, p0, Lcom/kms/kmsshared/KMSApplication$UsbConnectionListener;->a:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1074
    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication$UsbConnectionListener;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 1119
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication$UsbConnectionListener;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1121
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication$UsbConnectionListener;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1122
    iget-object v2, p0, Lcom/kms/kmsshared/KMSApplication$UsbConnectionListener;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lfw;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1125
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication$UsbConnectionListener;->a:Landroid/content/Context;

    .line 1127
    :cond_1
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1078
    const-string v0, "plugged"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1115
    :goto_0
    return-void

    .line 1083
    :cond_0
    new-instance v0, LeZ;

    invoke-direct {v0, p0}, LeZ;-><init>(Lcom/kms/kmsshared/KMSApplication$UsbConnectionListener;)V

    invoke-virtual {v0}, LeZ;->start()V

    goto :goto_0
.end method
