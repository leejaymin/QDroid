.class public Lexam/service/WatchSdcard;
.super Landroid/app/Activity;
.source "WatchSdcard.java"


# instance fields
.field mBRSdcard:Landroid/content/BroadcastReceiver;

.field mStatus:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    new-instance v0, Lexam/service/WatchSdcard$1;

    invoke-direct {v0, p0}, Lexam/service/WatchSdcard$1;-><init>(Lexam/service/WatchSdcard;)V

    iput-object v0, p0, Lexam/service/WatchSdcard;->mBRSdcard:Landroid/content/BroadcastReceiver;

    .line 14
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f030059

    invoke-virtual {p0, v0}, Lexam/service/WatchSdcard;->setContentView(I)V

    .line 21
    const v0, 0x7f0c006e

    invoke-virtual {p0, v0}, Lexam/service/WatchSdcard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lexam/service/WatchSdcard;->mStatus:Landroid/widget/TextView;

    .line 22
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 39
    iget-object v0, p0, Lexam/service/WatchSdcard;->mBRSdcard:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lexam/service/WatchSdcard;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 40
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 27
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 28
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lexam/service/WatchSdcard;->mBRSdcard:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lexam/service/WatchSdcard;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 35
    return-void
.end method
