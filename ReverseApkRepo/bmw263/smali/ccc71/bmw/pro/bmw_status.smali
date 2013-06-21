.class public Lccc71/bmw/pro/bmw_status;
.super Lccc71/bmw/lib/bmw_status;
.source "SourceFile"


# instance fields
.field private w:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_status;-><init>()V

    .line 10
    const/high16 v0, 0x3f80

    iput v0, p0, Lccc71/bmw/pro/bmw_status;->w:F

    .line 8
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 15
    invoke-super {p0, p1}, Lccc71/bmw/lib/bmw_status;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-static {p0}, Lccc71/bmw/pro/bmw_settings;->E(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lccc71/bmw/pro/bmw_status;->w:F

    .line 18
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 23
    invoke-super {p0}, Lccc71/bmw/lib/bmw_status;->onPause()V

    .line 25
    iget v0, p0, Lccc71/bmw/pro/bmw_status;->w:F

    invoke-static {p0}, Lccc71/bmw/pro/bmw_settings;->E(Landroid/content/Context;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 27
    const-string v0, "battery_widget_monitor"

    const-string v1, "Updating widgets because of new zoom!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {p0}, Lccc71/bmw/pro/bmw_widget_graph;->d(Landroid/content/Context;)V

    .line 30
    :cond_0
    return-void
.end method
