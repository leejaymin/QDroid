.class public Lkr/co/medinbiz/widget/introduce/IntroduceMenu;
.super Lkr/co/medinbiz/widget/introduce/IntroduceCommon;
.source "IntroduceMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private widget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 16
    invoke-direct {p0}, Lkr/co/medinbiz/widget/introduce/IntroduceCommon;-><init>()V

    .line 17
    iput-object p1, p0, Lkr/co/medinbiz/widget/introduce/IntroduceMenu;->mContext:Landroid/content/Context;

    .line 18
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 19
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Lkr/co/medinbiz/util/Dip;->getMyDip(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_0

    .line 20
    sget v1, Lkr/co/medinbiz/R$layout;->introduce_main_160:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/introduce/IntroduceMenu;->widget:Landroid/view/View;

    .line 24
    :goto_0
    iget-object v1, p0, Lkr/co/medinbiz/widget/introduce/IntroduceMenu;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->menu01:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v1, p0, Lkr/co/medinbiz/widget/introduce/IntroduceMenu;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->menu02:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v1, p0, Lkr/co/medinbiz/widget/introduce/IntroduceMenu;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->menu03:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v1, p0, Lkr/co/medinbiz/widget/introduce/IntroduceMenu;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->menu04:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v1, p0, Lkr/co/medinbiz/widget/introduce/IntroduceMenu;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->menu05:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    return-void

    .line 22
    :cond_0
    sget v1, Lkr/co/medinbiz/R$layout;->introduce_main:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/introduce/IntroduceMenu;->widget:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public getWidget()Landroid/view/View;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lkr/co/medinbiz/widget/introduce/IntroduceMenu;->widget:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 38
    .local v0, id:I
    sget v1, Lkr/co/medinbiz/R$id;->menu01:I

    if-ne v0, v1, :cond_1

    .line 39
    const-string v1, "smart_hp_intro.asp"

    iget-object v2, p0, Lkr/co/medinbiz/widget/introduce/IntroduceMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lkr/co/medinbiz/R$string;->introduce_menu1:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lkr/co/medinbiz/widget/introduce/IntroduceMenu;->setWebWiget(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    sget v1, Lkr/co/medinbiz/R$id;->menu02:I

    if-ne v0, v1, :cond_2

    .line 41
    const-string v1, "smart_hp_info.asp"

    iget-object v2, p0, Lkr/co/medinbiz/widget/introduce/IntroduceMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lkr/co/medinbiz/R$string;->introduce_menu2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lkr/co/medinbiz/widget/introduce/IntroduceMenu;->setWebWiget(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_2
    sget v1, Lkr/co/medinbiz/R$id;->menu03:I

    if-ne v0, v1, :cond_3

    .line 43
    const-string v1, "smart_hp_thumb.asp"

    iget-object v2, p0, Lkr/co/medinbiz/widget/introduce/IntroduceMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lkr/co/medinbiz/R$string;->introduce_menu3:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lkr/co/medinbiz/widget/introduce/IntroduceMenu;->setWebWiget(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_3
    sget v1, Lkr/co/medinbiz/R$id;->menu04:I

    if-ne v0, v1, :cond_4

    .line 45
    const-string v1, "smart_hp_tel.asp"

    iget-object v2, p0, Lkr/co/medinbiz/widget/introduce/IntroduceMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lkr/co/medinbiz/R$string;->introduce_menu4:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lkr/co/medinbiz/widget/introduce/IntroduceMenu;->setWebWiget(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_4
    sget v1, Lkr/co/medinbiz/R$id;->menu05:I

    if-ne v0, v1, :cond_0

    .line 47
    const-string v1, "smart_hp_map.asp"

    iget-object v2, p0, Lkr/co/medinbiz/widget/introduce/IntroduceMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lkr/co/medinbiz/R$string;->introduce_menu5:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lkr/co/medinbiz/widget/introduce/IntroduceMenu;->setWebWiget(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
