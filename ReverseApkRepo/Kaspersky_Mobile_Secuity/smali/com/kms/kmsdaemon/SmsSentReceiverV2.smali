.class public Lcom/kms/kmsdaemon/SmsSentReceiverV2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20
    new-instance v0, LeB;

    invoke-direct {v0, p0, p2}, LeB;-><init>(Lcom/kms/kmsdaemon/SmsSentReceiverV2;Landroid/content/Intent;)V

    invoke-virtual {v0}, LeB;->start()V

    .line 62
    return-void
.end method
