.class public Lcom/spritefish/fastburstcamera/activities/PickRangeActivity;
.super Landroid/app/Activity;
.source "PickRangeActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/spritefish/fastburstcamera/activities/PickRangeActivity;->setContentView(I)V

    .line 15
    return-void
.end method
