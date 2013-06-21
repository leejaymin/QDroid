.class public Lkr/co/medinbiz/widget/pregnancy/PregnancyMain;
.super Lkr/co/medinbiz/widget/pregnancy/PregnancyCommon;
.source "PregnancyMain.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter "context"
    .parameter "main"

    .prologue
    .line 9
    invoke-direct {p0}, Lkr/co/medinbiz/widget/pregnancy/PregnancyCommon;-><init>()V

    .line 10
    iput-object p1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMain;->mContext:Landroid/content/Context;

    .line 11
    sput-object p2, Lkr/co/medinbiz/widget/pregnancy/PregnancyMain;->MAINVIEW:Landroid/widget/LinearLayout;

    .line 12
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/pregnancy/PregnancyMain;->setMainWidget()V

    .line 13
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 22
    sget v0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMain;->CHILDCOUNT:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 23
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMain;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 29
    :goto_0
    return-void

    .line 24
    :cond_0
    sget v0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMain;->CHILDCOUNT:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 25
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/pregnancy/PregnancyMain;->setMainWidget()V

    goto :goto_0

    .line 26
    :cond_1
    sget v0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMain;->CHILDCOUNT:I

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 16
    sget v0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMain;->CHILDCOUNT:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 17
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/pregnancy/PregnancyMain;->setMainWidget()V

    .line 19
    :cond_0
    return-void
.end method
