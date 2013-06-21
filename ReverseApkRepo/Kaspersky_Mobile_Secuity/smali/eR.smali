.class public final LeR;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/kms/kmsshared/KMSApplication;


# direct methods
.method public constructor <init>(Lcom/kms/kmsshared/KMSApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, LeR;->a:Lcom/kms/kmsshared/KMSApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 145
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 147
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    .line 149
    invoke-static {p0}, Lft;->a(Landroid/content/BroadcastReceiver;)Z

    move-result v0

    .line 156
    :goto_0
    if-eqz v0, :cond_0

    .line 158
    const-string v0, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 159
    array-length v3, v2

    move v0, v1

    .line 160
    :goto_1
    if-ge v0, v3, :cond_0

    .line 162
    aget-object v4, v2, v0

    iget-object v5, p0, LeR;->a:Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v5}, Lcom/kms/kmsshared/KMSApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 164
    invoke-virtual {p0, v1}, LeR;->setResultCode(I)V

    .line 165
    invoke-virtual {p0}, LeR;->abortBroadcast()V

    .line 170
    :cond_0
    return-void

    .line 153
    :cond_1
    invoke-static {p0}, Lfu;->a(Landroid/content/BroadcastReceiver;)Z

    move-result v0

    goto :goto_0

    .line 160
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
