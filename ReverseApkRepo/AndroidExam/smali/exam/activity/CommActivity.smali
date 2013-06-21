.class public Lexam/activity/CommActivity;
.super Landroid/app/Activity;
.source "CommActivity.java"


# static fields
.field static final ACT_EDIT:I


# instance fields
.field mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 31
    packed-switch p1, :pswitch_data_0

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 33
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 34
    iget-object v0, p0, Lexam/activity/CommActivity;->mText:Landroid/widget/TextView;

    const-string v1, "TextOut"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lexam/activity/CommActivity;->setContentView(I)V

    .line 18
    const v1, 0x7f0c0008

    invoke-virtual {p0, v1}, Lexam/activity/CommActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lexam/activity/CommActivity;->mText:Landroid/widget/TextView;

    .line 20
    const v1, 0x7f0c0009

    invoke-virtual {p0, v1}, Lexam/activity/CommActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 21
    .local v0, btnEdit:Landroid/widget/Button;
    new-instance v1, Lexam/activity/CommActivity$1;

    invoke-direct {v1, p0}, Lexam/activity/CommActivity$1;-><init>(Lexam/activity/CommActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    return-void
.end method
