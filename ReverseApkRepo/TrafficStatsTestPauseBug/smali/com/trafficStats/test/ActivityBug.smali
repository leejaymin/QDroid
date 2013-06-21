.class public Lcom/trafficStats/test/ActivityBug;
.super Landroid/app/Activity;
.source "ActivityBug.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 11
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/trafficStats/test/ActivityBug;->setContentView(I)V

    .line 13
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 19
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 25
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 31
    const/16 v1, 0xa

    div-int/lit8 v0, v1, 0x0

    .line 32
    .local v0, a:I
    return-void
.end method
