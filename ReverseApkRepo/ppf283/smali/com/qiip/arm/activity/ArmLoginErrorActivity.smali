.class public Lcom/qiip/arm/activity/ArmLoginErrorActivity;
.super Ljava/lang/Object;
.source "ArmLoginErrorActivity.java"


# static fields
.field static mContext:Landroid/content/Context;


# instance fields
.field mID:Ljava/lang/String;

.field mPassword:Ljava/lang/String;

.field mViewList:Landroid/view/View;

.field mViewType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qiip/arm/activity/ArmLoginErrorActivity;->mViewList:Landroid/view/View;

    .line 15
    return-void
.end method

.method public static getmContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/qiip/arm/activity/ArmLoginErrorActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static setmContext(Landroid/content/Context;)V
    .locals 0
    .parameter "mContext"

    .prologue
    .line 63
    sput-object p0, Lcom/qiip/arm/activity/ArmLoginErrorActivity;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method


# virtual methods
.method public getBodyView()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 33
    sget-object v3, Lcom/qiip/arm/activity/ArmLoginErrorActivity;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 34
    .local v0, li:Landroid/view/LayoutInflater;
    sget v3, Lcom/qiip/arm/R$layout;->arm_login_error_activity:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/qiip/arm/activity/ArmLoginErrorActivity;->mViewList:Landroid/view/View;

    .line 35
    iget-object v3, p0, Lcom/qiip/arm/activity/ArmLoginErrorActivity;->mViewList:Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object v3, p0, Lcom/qiip/arm/activity/ArmLoginErrorActivity;->mViewList:Landroid/view/View;

    sget v4, Lcom/qiip/arm/R$id;->arm_detail_text:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 39
    .local v1, mDetailText:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/qiip/arm/activity/ArmLoginErrorActivity;->getmViewType()I

    move-result v3

    const v4, -0xffffff0

    if-ne v3, v4, :cond_0

    .line 40
    sget-object v3, Lcom/qiip/arm/activity/ArmLoginErrorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/qiip/arm/R$string;->arm_password_error_text:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    :cond_0
    iget-object v3, p0, Lcom/qiip/arm/activity/ArmLoginErrorActivity;->mViewList:Landroid/view/View;

    sget v4, Lcom/qiip/arm/R$id;->okButton:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 43
    .local v2, mOKButton:Landroid/widget/Button;
    new-instance v3, Lcom/qiip/arm/activity/ArmLoginErrorActivity$1;

    invoke-direct {v3, p0}, Lcom/qiip/arm/activity/ArmLoginErrorActivity$1;-><init>(Lcom/qiip/arm/activity/ArmLoginErrorActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v3, p0, Lcom/qiip/arm/activity/ArmLoginErrorActivity;->mViewList:Landroid/view/View;

    return-object v3
.end method

.method public getmID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/qiip/arm/activity/ArmLoginErrorActivity;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getmPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/qiip/arm/activity/ArmLoginErrorActivity;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getmViewType()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/qiip/arm/activity/ArmLoginErrorActivity;->mViewType:I

    return v0
.end method

.method public setmID(Ljava/lang/String;)V
    .locals 0
    .parameter "mID"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/qiip/arm/activity/ArmLoginErrorActivity;->mID:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setmPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "mPassword"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/qiip/arm/activity/ArmLoginErrorActivity;->mPassword:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setmViewType(I)V
    .locals 0
    .parameter "mViewType"

    .prologue
    .line 29
    iput p1, p0, Lcom/qiip/arm/activity/ArmLoginErrorActivity;->mViewType:I

    .line 30
    return-void
.end method
