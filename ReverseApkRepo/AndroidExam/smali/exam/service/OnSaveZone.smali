.class public Lexam/service/OnSaveZone;
.super Landroid/app/Activity;
.source "OnSaveZone.java"


# instance fields
.field mSaveZoneBR:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    new-instance v0, Lexam/service/OnSaveZone$1;

    invoke-direct {v0, p0}, Lexam/service/OnSaveZone$1;-><init>(Lexam/service/OnSaveZone;)V

    iput-object v0, p0, Lexam/service/OnSaveZone;->mSaveZoneBR:Landroid/content/BroadcastReceiver;

    .line 9
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 11
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    const v0, 0x7f030057

    invoke-virtual {p0, v0}, Lexam/service/OnSaveZone;->setContentView(I)V

    .line 13
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 24
    iget-object v0, p0, Lexam/service/OnSaveZone;->mSaveZoneBR:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lexam/service/OnSaveZone;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 25
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 16
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 17
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 18
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "exam.service.SAVEZONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lexam/service/OnSaveZone;->mSaveZoneBR:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lexam/service/OnSaveZone;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 20
    return-void
.end method
