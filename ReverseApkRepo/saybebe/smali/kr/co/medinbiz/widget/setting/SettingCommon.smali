.class public Lkr/co/medinbiz/widget/setting/SettingCommon;
.super Ljava/lang/Object;
.source "SettingCommon.java"


# static fields
.field public static CHILDCOUNT:I = 0x0

.field public static MAINVIEW:Landroid/widget/LinearLayout; = null

.field public static final TERM_TYPE_1:I = 0x1

.field public static final TERM_TYPE_2:I = 0x2

.field public static final TERM_TYPE_3:I = 0x3

.field public static certiWidget:Landroid/view/View;

.field public static joinWidget:Landroid/view/View;

.field public static loginWidget:Landroid/view/View;

.field public static mainWidget:Landroid/view/View;

.field public static memberRegister:Landroid/view/View;

.field public static termsWidget:Landroid/view/View;


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
.method protected destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 80
    sput-object v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->mainWidget:Landroid/view/View;

    .line 81
    sput-object v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->joinWidget:Landroid/view/View;

    .line 82
    sput-object v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->loginWidget:Landroid/view/View;

    .line 83
    sput-object v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->termsWidget:Landroid/view/View;

    .line 84
    sput-object v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->certiWidget:Landroid/view/View;

    .line 85
    sput-object v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->memberRegister:Landroid/view/View;

    .line 86
    return-void
.end method

.method protected setCertificationWidget()V
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 63
    sget-object v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->certiWidget:Landroid/view/View;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lkr/co/medinbiz/widget/setting/SettingCertification;

    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCommon;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lkr/co/medinbiz/widget/setting/SettingCertification;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/setting/SettingCertification;->getWidget()Landroid/view/View;

    move-result-object v0

    sput-object v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->certiWidget:Landroid/view/View;

    .line 66
    :cond_0
    sget-object v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    sget-object v1, Lkr/co/medinbiz/widget/setting/SettingCommon;->certiWidget:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67
    const/4 v0, 0x3

    sput v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->CHILDCOUNT:I

    .line 68
    return-void
.end method

.method protected setJoinWidget()V
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 35
    sget-object v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->joinWidget:Landroid/view/View;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lkr/co/medinbiz/widget/setting/SettingJoin;

    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCommon;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lkr/co/medinbiz/widget/setting/SettingJoin;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/setting/SettingJoin;->getWidget()Landroid/view/View;

    move-result-object v0

    sput-object v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->joinWidget:Landroid/view/View;

    .line 38
    :cond_0
    sget-object v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    sget-object v1, Lkr/co/medinbiz/widget/setting/SettingCommon;->joinWidget:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 39
    const/4 v0, 0x3

    sput v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->CHILDCOUNT:I

    .line 41
    return-void
.end method

.method protected setLoginWidget()V
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 26
    sget-object v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->loginWidget:Landroid/view/View;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lkr/co/medinbiz/widget/setting/SettingLogin;

    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCommon;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lkr/co/medinbiz/widget/setting/SettingLogin;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/setting/SettingLogin;->getWidget()Landroid/view/View;

    move-result-object v0

    sput-object v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->loginWidget:Landroid/view/View;

    .line 29
    :cond_0
    sget-object v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    sget-object v1, Lkr/co/medinbiz/widget/setting/SettingCommon;->loginWidget:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 30
    const/4 v0, 0x2

    sput v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->CHILDCOUNT:I

    .line 31
    return-void
.end method

.method protected setMainWidget()V
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 45
    sget-object v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->mainWidget:Landroid/view/View;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lkr/co/medinbiz/widget/setting/SettingMenu;

    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCommon;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lkr/co/medinbiz/widget/setting/SettingMenu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/setting/SettingMenu;->getWidget()Landroid/view/View;

    move-result-object v0

    sput-object v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->mainWidget:Landroid/view/View;

    .line 48
    :cond_0
    sget-object v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    sget-object v1, Lkr/co/medinbiz/widget/setting/SettingCommon;->mainWidget:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 49
    const/4 v0, 0x1

    sput v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->CHILDCOUNT:I

    .line 50
    return-void
.end method

.method protected setMemberRegister()V
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 72
    sget-object v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->memberRegister:Landroid/view/View;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;

    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCommon;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/setting/SettingMemberRegister;->getWidget()Landroid/view/View;

    move-result-object v0

    sput-object v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->memberRegister:Landroid/view/View;

    .line 75
    :cond_0
    sget-object v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    sget-object v1, Lkr/co/medinbiz/widget/setting/SettingCommon;->memberRegister:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    const/4 v0, 0x3

    sput v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->CHILDCOUNT:I

    .line 77
    return-void
.end method

.method protected setTermsWidget(I)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 53
    sget-object v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 54
    sget-object v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->termsWidget:Landroid/view/View;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lkr/co/medinbiz/widget/setting/SettingTerms;

    iget-object v1, p0, Lkr/co/medinbiz/widget/setting/SettingCommon;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lkr/co/medinbiz/widget/setting/SettingTerms;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/setting/SettingTerms;->getWidget()Landroid/view/View;

    move-result-object v0

    sput-object v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->termsWidget:Landroid/view/View;

    .line 57
    :cond_0
    sget-object v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    sget-object v1, Lkr/co/medinbiz/widget/setting/SettingCommon;->termsWidget:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    const/4 v0, 0x4

    sput v0, Lkr/co/medinbiz/widget/setting/SettingCommon;->CHILDCOUNT:I

    .line 59
    return-void
.end method
