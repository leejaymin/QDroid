.class public Lcom/spritefish/fastburstcamera/activities/MainOptionsActivity;
.super Landroid/app/Activity;
.source "MainOptionsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/spritefish/fastburstcamera/activities/MainOptionsActivity;->setContentView(I)V

    .line 18
    return-void
.end method
