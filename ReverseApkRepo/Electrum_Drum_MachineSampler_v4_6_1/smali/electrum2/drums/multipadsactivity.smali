.class public Lelectrum2/drums/multipadsactivity;
.super Landroid/app/Activity;
.source "multipadsactivity.java"


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

    .line 15
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lelectrum2/drums/multipadsactivity;->setContentView(I)V

    .line 17
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lelectrum2/drums/multipadsactivity;->setVolumeControlStream(I)V

    .line 20
    return-void
.end method
