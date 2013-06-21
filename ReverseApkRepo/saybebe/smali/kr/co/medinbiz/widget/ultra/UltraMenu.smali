.class public Lkr/co/medinbiz/widget/ultra/UltraMenu;
.super Lkr/co/medinbiz/widget/ultra/UltraCommon;
.source "UltraMenu.java"


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field private final handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field public mMNum:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPhotoList:Lkr/co/medinbiz/dto/PhotoList;

.field private mTitle_bar:Landroid/widget/TextView;

.field private mVideoList:Lkr/co/medinbiz/dto/VideoList;

.field private pm:Lkr/co/medinbiz/helper/PreferencesManager;

.field private widget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "aContext"
    .parameter "aMemberName"
    .parameter "aMNum"

    .prologue
    const/4 v8, 0x0

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 38
    invoke-direct {p0}, Lkr/co/medinbiz/widget/ultra/UltraCommon;-><init>()V

    .line 30
    const-string v6, ""

    iput-object v6, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->mName:Ljava/lang/String;

    .line 31
    const-string v6, ""

    iput-object v6, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->mMNum:Ljava/lang/String;

    .line 208
    new-instance v6, Lkr/co/medinbiz/widget/ultra/UltraMenu$1;

    invoke-direct {v6, p0}, Lkr/co/medinbiz/widget/ultra/UltraMenu$1;-><init>(Lkr/co/medinbiz/widget/ultra/UltraMenu;)V

    iput-object v6, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->handler:Landroid/os/Handler;

    .line 39
    new-instance v6, Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-direct {v6, p1}, Lkr/co/medinbiz/helper/PreferencesManager;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    .line 40
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->mName:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->mMNum:Ljava/lang/String;

    .line 43
    iget-object v6, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 44
    .local v2, inflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Lkr/co/medinbiz/util/Dip;->getMyDip(Landroid/content/Context;)I

    move-result v6

    const/16 v7, 0xa0

    if-ne v6, v7, :cond_2

    .line 45
    sget v6, Lkr/co/medinbiz/R$layout;->ultra_menu_160:I

    invoke-virtual {v2, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->widget:Landroid/view/View;

    .line 50
    :goto_0
    iget-object v6, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->widget:Landroid/view/View;

    sget v7, Lkr/co/medinbiz/R$id;->cd_area:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 51
    .local v1, cd_area:Landroid/view/View;
    iget-object v6, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->widget:Landroid/view/View;

    sget v7, Lkr/co/medinbiz/R$id;->alert_area:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, alert_area:Landroid/view/View;
    iget-object v6, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->widget:Landroid/view/View;

    sget v7, Lkr/co/medinbiz/R$id;->title_bar:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->mTitle_bar:Landroid/widget/TextView;

    .line 53
    iget-object v6, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->mTitle_bar:Landroid/widget/TextView;

    iget-object v7, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lkr/co/medinbiz/R$string;->user_name:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v6, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->widget:Landroid/view/View;

    sget v7, Lkr/co/medinbiz/R$id;->photolist:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 56
    .local v4, lPhotoListBtn:Landroid/widget/LinearLayout;
    new-instance v6, Lkr/co/medinbiz/widget/ultra/UltraMenu$2;

    invoke-direct {v6, p0}, Lkr/co/medinbiz/widget/ultra/UltraMenu$2;-><init>(Lkr/co/medinbiz/widget/ultra/UltraMenu;)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v6, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->widget:Landroid/view/View;

    sget v7, Lkr/co/medinbiz/R$id;->videolist:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 75
    .local v5, lVideoListBtn:Landroid/widget/LinearLayout;
    new-instance v6, Lkr/co/medinbiz/widget/ultra/UltraMenu$3;

    invoke-direct {v6, p0}, Lkr/co/medinbiz/widget/ultra/UltraMenu$3;-><init>(Lkr/co/medinbiz/widget/ultra/UltraMenu;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v6, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->widget:Landroid/view/View;

    sget v7, Lkr/co/medinbiz/R$id;->message:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 95
    .local v3, lMSGViewBtn:Landroid/widget/LinearLayout;
    new-instance v6, Lkr/co/medinbiz/widget/ultra/UltraMenu$4;

    invoke-direct {v6, p0}, Lkr/co/medinbiz/widget/ultra/UltraMenu$4;-><init>(Lkr/co/medinbiz/widget/ultra/UltraMenu;)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    if-eqz v1, :cond_0

    .line 105
    iget-object v6, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v6}, Lkr/co/medinbiz/helper/PreferencesManager;->getCdtype()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v6}, Lkr/co/medinbiz/helper/PreferencesManager;->getCdtype()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Y"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 106
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 112
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 113
    sget-boolean v6, Lkr/co/medinbiz/helper/AppData;->isSamsung:Z

    if-eqz v6, :cond_4

    .line 114
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 119
    :cond_1
    :goto_2
    return-void

    .line 47
    .end local v0           #alert_area:Landroid/view/View;
    .end local v1           #cd_area:Landroid/view/View;
    .end local v3           #lMSGViewBtn:Landroid/widget/LinearLayout;
    .end local v4           #lPhotoListBtn:Landroid/widget/LinearLayout;
    .end local v5           #lVideoListBtn:Landroid/widget/LinearLayout;
    :cond_2
    sget v6, Lkr/co/medinbiz/R$layout;->ultra_menu:I

    invoke-virtual {v2, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->widget:Landroid/view/View;

    goto/16 :goto_0

    .line 108
    .restart local v0       #alert_area:Landroid/view/View;
    .restart local v1       #cd_area:Landroid/view/View;
    .restart local v3       #lMSGViewBtn:Landroid/widget/LinearLayout;
    .restart local v4       #lPhotoListBtn:Landroid/widget/LinearLayout;
    .restart local v5       #lVideoListBtn:Landroid/widget/LinearLayout;
    :cond_3
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 116
    :cond_4
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method static synthetic access$0(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lkr/co/medinbiz/widget/ultra/UltraMenu;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$10(Lkr/co/medinbiz/widget/ultra/UltraMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    invoke-direct {p0}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->showMovieList()V

    return-void
.end method

.method static synthetic access$11(Lkr/co/medinbiz/widget/ultra/UltraMenu;Lkr/co/medinbiz/dto/PhotoList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->mPhotoList:Lkr/co/medinbiz/dto/PhotoList;

    return-void
.end method

.method static synthetic access$12(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$13(Lkr/co/medinbiz/widget/ultra/UltraMenu;Lkr/co/medinbiz/dto/VideoList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->mVideoList:Lkr/co/medinbiz/dto/VideoList;

    return-void
.end method

.method static synthetic access$2(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Lkr/co/medinbiz/dto/VideoList;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->mVideoList:Lkr/co/medinbiz/dto/VideoList;

    return-object v0
.end method

.method static synthetic access$5(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Lkr/co/medinbiz/dto/PhotoList;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->mPhotoList:Lkr/co/medinbiz/dto/PhotoList;

    return-object v0
.end method

.method static synthetic access$6(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Lkr/co/medinbiz/helper/PreferencesManager;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    return-object v0
.end method

.method static synthetic access$7(Lkr/co/medinbiz/widget/ultra/UltraMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    invoke-direct {p0}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->showAlertBarcode()V

    return-void
.end method

.method static synthetic access$8(Lkr/co/medinbiz/widget/ultra/UltraMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    invoke-direct {p0}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->showPhotoList()V

    return-void
.end method

.method static synthetic access$9(Lkr/co/medinbiz/widget/ultra/UltraMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    invoke-direct {p0}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->notSdcardMount()V

    return-void
.end method

.method private notSdcardMount()V
    .locals 3

    .prologue
    .line 196
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkr/co/medinbiz/R$string;->warning:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkr/co/medinbiz/R$string;->err_no_sdcard:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkr/co/medinbiz/R$string;->confirm:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    new-instance v2, Lkr/co/medinbiz/widget/ultra/UltraMenu$8;

    invoke-direct {v2, p0}, Lkr/co/medinbiz/widget/ultra/UltraMenu$8;-><init>(Lkr/co/medinbiz/widget/ultra/UltraMenu;)V

    .line 198
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 206
    return-void
.end method

.method private showAlertBarcode()V
    .locals 3

    .prologue
    .line 182
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkr/co/medinbiz/R$string;->notice:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkr/co/medinbiz/R$string;->err_unregistered_barcode:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkr/co/medinbiz/R$string;->confirm:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 185
    new-instance v2, Lkr/co/medinbiz/widget/ultra/UltraMenu$7;

    invoke-direct {v2, p0}, Lkr/co/medinbiz/widget/ultra/UltraMenu$7;-><init>(Lkr/co/medinbiz/widget/ultra/UltraMenu;)V

    .line 183
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 193
    return-void
.end method

.method private showMovieList()V
    .locals 4

    .prologue
    .line 153
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->dialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->mContext:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "loading..."

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->dialog:Landroid/app/ProgressDialog;

    .line 155
    new-instance v0, Lkr/co/medinbiz/widget/ultra/UltraMenu$6;

    invoke-direct {v0, p0}, Lkr/co/medinbiz/widget/ultra/UltraMenu$6;-><init>(Lkr/co/medinbiz/widget/ultra/UltraMenu;)V

    .line 177
    invoke-virtual {v0}, Lkr/co/medinbiz/widget/ultra/UltraMenu$6;->start()V

    .line 179
    :cond_0
    return-void
.end method

.method private showPhotoList()V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->dialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->mContext:Landroid/content/Context;

    const-string v1, ""

    const-string v2, "loading..."

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->dialog:Landroid/app/ProgressDialog;

    .line 128
    new-instance v0, Lkr/co/medinbiz/widget/ultra/UltraMenu$5;

    invoke-direct {v0, p0}, Lkr/co/medinbiz/widget/ultra/UltraMenu$5;-><init>(Lkr/co/medinbiz/widget/ultra/UltraMenu;)V

    .line 148
    invoke-virtual {v0}, Lkr/co/medinbiz/widget/ultra/UltraMenu$5;->start()V

    .line 150
    :cond_0
    return-void
.end method


# virtual methods
.method public getWidget()Landroid/view/View;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->widget:Landroid/view/View;

    return-object v0
.end method
