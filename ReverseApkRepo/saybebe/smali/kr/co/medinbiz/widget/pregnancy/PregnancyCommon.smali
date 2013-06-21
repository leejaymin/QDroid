.class public Lkr/co/medinbiz/widget/pregnancy/PregnancyCommon;
.super Ljava/lang/Object;
.source "PregnancyCommon.java"


# static fields
.field public static CALCLASS:Ljava/lang/Class;

.field public static CHILDCOUNT:I

.field public static MAINVIEW:Landroid/widget/LinearLayout;


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected setBabyWidget(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 29
    sget-object v1, Lkr/co/medinbiz/widget/pregnancy/PregnancyCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 30
    new-instance v1, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;

    iget-object v2, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyCommon;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->getWidget()Landroid/view/View;

    move-result-object v0

    .line 31
    .local v0, widget:Landroid/view/View;
    sget-object v1, Lkr/co/medinbiz/widget/pregnancy/PregnancyCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 32
    const/4 v1, 0x2

    sput v1, Lkr/co/medinbiz/widget/pregnancy/PregnancyCommon;->CHILDCOUNT:I

    .line 33
    return-void
.end method

.method protected setMainWidget()V
    .locals 3

    .prologue
    .line 15
    sget-object v1, Lkr/co/medinbiz/widget/pregnancy/PregnancyCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 16
    new-instance v1, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;

    iget-object v2, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyCommon;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->getWidget()Landroid/view/View;

    move-result-object v0

    .line 17
    .local v0, widget:Landroid/view/View;
    sget-object v1, Lkr/co/medinbiz/widget/pregnancy/PregnancyCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 18
    const/4 v1, 0x1

    sput v1, Lkr/co/medinbiz/widget/pregnancy/PregnancyCommon;->CHILDCOUNT:I

    .line 19
    return-void
.end method

.method protected setPregWidget(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 22
    sget-object v1, Lkr/co/medinbiz/widget/pregnancy/PregnancyCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 23
    new-instance v1, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;

    iget-object v2, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyCommon;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->getWidget()Landroid/view/View;

    move-result-object v0

    .line 24
    .local v0, widget:Landroid/view/View;
    sget-object v1, Lkr/co/medinbiz/widget/pregnancy/PregnancyCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 25
    const/4 v1, 0x2

    sput v1, Lkr/co/medinbiz/widget/pregnancy/PregnancyCommon;->CHILDCOUNT:I

    .line 26
    return-void
.end method
