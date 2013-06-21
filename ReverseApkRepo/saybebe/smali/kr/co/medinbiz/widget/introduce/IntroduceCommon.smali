.class public Lkr/co/medinbiz/widget/introduce/IntroduceCommon;
.super Ljava/lang/Object;
.source "IntroduceCommon.java"


# static fields
.field public static CHILDCOUNT:I

.field public static MAINVIEW:Landroid/widget/LinearLayout;


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected setMainWidget()V
    .locals 3

    .prologue
    .line 15
    sget-object v1, Lkr/co/medinbiz/widget/introduce/IntroduceCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 16
    new-instance v1, Lkr/co/medinbiz/widget/introduce/IntroduceMenu;

    iget-object v2, p0, Lkr/co/medinbiz/widget/introduce/IntroduceCommon;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lkr/co/medinbiz/widget/introduce/IntroduceMenu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lkr/co/medinbiz/widget/introduce/IntroduceMenu;->getWidget()Landroid/view/View;

    move-result-object v0

    .line 17
    .local v0, widget:Landroid/view/View;
    sget-object v1, Lkr/co/medinbiz/widget/introduce/IntroduceCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 18
    const/4 v1, 0x1

    sput v1, Lkr/co/medinbiz/widget/introduce/IntroduceCommon;->CHILDCOUNT:I

    .line 19
    return-void
.end method

.method protected setWebWiget(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "url"
    .parameter "title"

    .prologue
    .line 22
    sget-object v1, Lkr/co/medinbiz/widget/introduce/IntroduceCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 23
    new-instance v1, Lkr/co/medinbiz/widget/introduce/IntroduceWeb;

    iget-object v2, p0, Lkr/co/medinbiz/widget/introduce/IntroduceCommon;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?hcode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Lkr/co/medinbiz/helper/PreferencesManager;

    iget-object v5, p0, Lkr/co/medinbiz/widget/introduce/IntroduceCommon;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lkr/co/medinbiz/helper/PreferencesManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lkr/co/medinbiz/helper/PreferencesManager;->getHcode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p2}, Lkr/co/medinbiz/widget/introduce/IntroduceWeb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lkr/co/medinbiz/widget/introduce/IntroduceWeb;->getWidget()Landroid/view/View;

    move-result-object v0

    .line 24
    .local v0, widget:Landroid/view/View;
    sget-object v1, Lkr/co/medinbiz/widget/introduce/IntroduceCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 25
    const/4 v1, 0x2

    sput v1, Lkr/co/medinbiz/widget/introduce/IntroduceCommon;->CHILDCOUNT:I

    .line 26
    return-void
.end method
