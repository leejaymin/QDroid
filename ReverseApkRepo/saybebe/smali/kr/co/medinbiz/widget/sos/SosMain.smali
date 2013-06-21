.class public Lkr/co/medinbiz/widget/sos/SosMain;
.super Lkr/co/medinbiz/widget/sos/SosCommon;
.source "SosMain.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter "context"
    .parameter "main"

    .prologue
    .line 10
    invoke-direct {p0}, Lkr/co/medinbiz/widget/sos/SosCommon;-><init>()V

    .line 11
    iput-object p1, p0, Lkr/co/medinbiz/widget/sos/SosMain;->mContext:Landroid/content/Context;

    .line 12
    sput-object p2, Lkr/co/medinbiz/widget/sos/SosMain;->MAINVIEW:Landroid/widget/LinearLayout;

    .line 13
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/sos/SosMain;->setMainWidget()V

    .line 14
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 21
    sget v0, Lkr/co/medinbiz/widget/sos/SosMain;->CHILDCOUNT:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 22
    iget-object v0, p0, Lkr/co/medinbiz/widget/sos/SosMain;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/sos/SosMain;->setMainWidget()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/sos/SosMain;->locationManagerRemove()V

    .line 18
    return-void
.end method
