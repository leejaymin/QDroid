.class public Lexam/activity/CallActivity;
.super Landroid/app/Activity;
.source "CallActivity.java"


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
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lexam/activity/CallActivity;->setContentView(I)V

    .line 15
    const v1, 0x7f0c0003

    invoke-virtual {p0, v1}, Lexam/activity/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 16
    .local v0, btnCall:Landroid/widget/Button;
    new-instance v1, Lexam/activity/CallActivity$1;

    invoke-direct {v1, p0}, Lexam/activity/CallActivity$1;-><init>(Lexam/activity/CallActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    return-void
.end method