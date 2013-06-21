.class public Lexam/service/WatchBattery;
.super Landroid/app/Activity;
.source "WatchBattery.java"


# instance fields
.field mBRBattery:Landroid/content/BroadcastReceiver;

.field mStatus:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    new-instance v0, Lexam/service/WatchBattery$1;

    invoke-direct {v0, p0}, Lexam/service/WatchBattery$1;-><init>(Lexam/service/WatchBattery;)V

    iput-object v0, p0, Lexam/service/WatchBattery;->mBRBattery:Landroid/content/BroadcastReceiver;

    .line 9
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v0, 0x7f030058

    invoke-virtual {p0, v0}, Lexam/service/WatchBattery;->setContentView(I)V

    .line 16
    const v0, 0x7f0c006e

    invoke-virtual {p0, v0}, Lexam/service/WatchBattery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lexam/service/WatchBattery;->mStatus:Landroid/widget/TextView;

    .line 17
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 32
    iget-object v0, p0, Lexam/service/WatchBattery;->mBRBattery:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lexam/service/WatchBattery;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 33
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 20
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 21
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 22
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lexam/service/WatchBattery;->mBRBattery:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lexam/service/WatchBattery;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 28
    return-void
.end method
