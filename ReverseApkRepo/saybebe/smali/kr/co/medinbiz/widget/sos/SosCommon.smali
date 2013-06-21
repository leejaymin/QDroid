.class public Lkr/co/medinbiz/widget/sos/SosCommon;
.super Ljava/lang/Object;
.source "SosCommon.java"


# static fields
.field public static CHILDCOUNT:I

.field public static MAINVIEW:Landroid/widget/LinearLayout;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private menu:Lkr/co/medinbiz/widget/sos/SosMenu;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected locationManagerRemove()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lkr/co/medinbiz/widget/sos/SosCommon;->menu:Lkr/co/medinbiz/widget/sos/SosMenu;

    invoke-virtual {v0}, Lkr/co/medinbiz/widget/sos/SosMenu;->locationManagerRemove()V

    .line 24
    return-void
.end method

.method protected setMainWidget()V
    .locals 3

    .prologue
    .line 15
    sget-object v1, Lkr/co/medinbiz/widget/sos/SosCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 16
    new-instance v1, Lkr/co/medinbiz/widget/sos/SosMenu;

    iget-object v2, p0, Lkr/co/medinbiz/widget/sos/SosCommon;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lkr/co/medinbiz/widget/sos/SosMenu;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lkr/co/medinbiz/widget/sos/SosCommon;->menu:Lkr/co/medinbiz/widget/sos/SosMenu;

    .line 17
    iget-object v1, p0, Lkr/co/medinbiz/widget/sos/SosCommon;->menu:Lkr/co/medinbiz/widget/sos/SosMenu;

    invoke-virtual {v1}, Lkr/co/medinbiz/widget/sos/SosMenu;->getWidget()Landroid/view/View;

    move-result-object v0

    .line 18
    .local v0, widget:Landroid/view/View;
    sget-object v1, Lkr/co/medinbiz/widget/sos/SosCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 19
    const/4 v1, 0x1

    sput v1, Lkr/co/medinbiz/widget/sos/SosCommon;->CHILDCOUNT:I

    .line 20
    return-void
.end method

.method protected setPhoneBookWidget()V
    .locals 3

    .prologue
    .line 27
    sget-object v1, Lkr/co/medinbiz/widget/sos/SosCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 28
    new-instance v1, Lkr/co/medinbiz/widget/sos/SosPhoneBook;

    iget-object v2, p0, Lkr/co/medinbiz/widget/sos/SosCommon;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lkr/co/medinbiz/widget/sos/SosPhoneBook;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lkr/co/medinbiz/widget/sos/SosPhoneBook;->getWidget()Landroid/view/View;

    move-result-object v0

    .line 29
    .local v0, widget:Landroid/view/View;
    sget-object v1, Lkr/co/medinbiz/widget/sos/SosCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 30
    const/4 v1, 0x2

    sput v1, Lkr/co/medinbiz/widget/sos/SosCommon;->CHILDCOUNT:I

    .line 31
    return-void
.end method
