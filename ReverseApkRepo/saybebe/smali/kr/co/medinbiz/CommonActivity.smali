.class public Lkr/co/medinbiz/CommonActivity;
.super Landroid/app/Activity;
.source "CommonActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected mainview:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 29
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-static {p0}, Lkr/co/medinbiz/util/Dip;->getMyDip(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_0

    .line 19
    sget v0, Lkr/co/medinbiz/R$layout;->base_layout_160:I

    invoke-virtual {p0, v0}, Lkr/co/medinbiz/CommonActivity;->setContentView(I)V

    .line 25
    :goto_0
    sget v0, Lkr/co/medinbiz/R$id;->addview:I

    invoke-virtual {p0, v0}, Lkr/co/medinbiz/CommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lkr/co/medinbiz/CommonActivity;->mainview:Landroid/widget/LinearLayout;

    .line 27
    return-void

    .line 22
    :cond_0
    sget v0, Lkr/co/medinbiz/R$layout;->base_layout:I

    invoke-virtual {p0, v0}, Lkr/co/medinbiz/CommonActivity;->setContentView(I)V

    goto :goto_0
.end method
