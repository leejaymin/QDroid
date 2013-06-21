.class public Lccc71/bmw/pro/bmw_exporter;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 31
    new-instance v1, Lccc71/bmw/pro/a;

    invoke-direct {v1, p0, p1, p2, v0}, Lccc71/bmw/pro/a;-><init>(Lccc71/bmw/pro/bmw_exporter;Landroid/content/Context;Landroid/content/Intent;Landroid/os/Handler;)V

    .line 288
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 289
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 290
    return-void
.end method
