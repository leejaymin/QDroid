.class public Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;
.super Ljava/lang/Object;
.source "ArmLogin5ErrorActivity.java"


# static fields
.field static mContext:Landroid/content/Context;


# instance fields
.field ErrorType:I

.field mID:Ljava/lang/String;

.field private mNickName:Ljava/lang/String;

.field mPassword:Ljava/lang/String;

.field mTextInfo:Landroid/widget/TextView;

.field mTextMain:Landroid/widget/TextView;

.field mViewList:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mViewList:Landroid/view/View;

    .line 17
    return-void
.end method

.method public static getmContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static setmContext(Landroid/content/Context;)V
    .locals 0
    .parameter "mContext"

    .prologue
    .line 104
    sput-object p0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mContext:Landroid/content/Context;

    .line 105
    return-void
.end method


# virtual methods
.method public getBodyView()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 48
    sget-object v2, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 49
    .local v0, li:Landroid/view/LayoutInflater;
    sget v2, Lcom/qiip/arm/R$layout;->arm_login_5_error_activity:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mViewList:Landroid/view/View;

    .line 51
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mViewList:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mViewList:Landroid/view/View;

    sget v3, Lcom/qiip/arm/R$id;->okButton:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 53
    .local v1, mOKButton:Landroid/widget/Button;
    new-instance v2, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity$1;

    invoke-direct {v2, p0}, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity$1;-><init>(Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-virtual {p0}, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->getErrorType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 65
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mViewList:Landroid/view/View;

    sget v3, Lcom/qiip/arm/R$id;->err_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mTextMain:Landroid/widget/TextView;

    .line 66
    invoke-virtual {p0}, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->getmNickName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->getmID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->setmNickName(Ljava/lang/String;)V

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mTextMain:Landroid/widget/TextView;

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<FONT color=\'#ff5f00\'><b>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->getmNickName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</b></font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/qiip/arm/R$string;->arm_user_auth_5_detail_text:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 68
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mViewList:Landroid/view/View;

    sget v3, Lcom/qiip/arm/R$id;->arm_user_gdid_guide_info1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mTextInfo:Landroid/widget/TextView;

    .line 72
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mTextInfo:Landroid/widget/TextView;

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/qiip/arm/R$string;->arm_user_gdid_guide_info1:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    const-string v4, "<FONT color=\'#fd371e\'><a href =\"http://m.qiip.jp/faq/view.omp?ucFaqIn.faqId=104\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/qiip/arm/R$string;->arm_user_gdid_guide_info2:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</a></FONT>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 76
    sget-object v4, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/qiip/arm/R$string;->arm_user_gdid_guide_info3:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 72
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mTextInfo:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 96
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mViewList:Landroid/view/View;

    return-object v2

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->getErrorType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_3

    .line 83
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mViewList:Landroid/view/View;

    sget v3, Lcom/qiip/arm/R$id;->err_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mTextMain:Landroid/widget/TextView;

    .line 84
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mTextMain:Landroid/widget/TextView;

    sget-object v3, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/qiip/arm/R$string;->arm_user_not_purchase_text:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {p0}, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->getErrorType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 88
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mViewList:Landroid/view/View;

    sget v3, Lcom/qiip/arm/R$id;->err_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mTextMain:Landroid/widget/TextView;

    .line 89
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mTextMain:Landroid/widget/TextView;

    sget-object v3, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/qiip/arm/R$string;->arm_network_error_text:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 91
    :cond_4
    invoke-virtual {p0}, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->getErrorType()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 93
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mViewList:Landroid/view/View;

    sget v3, Lcom/qiip/arm/R$id;->err_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mTextMain:Landroid/widget/TextView;

    .line 94
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mTextMain:Landroid/widget/TextView;

    sget-object v3, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/qiip/arm/R$string;->arm_not_support_device_error_text:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getErrorType()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->ErrorType:I

    return v0
.end method

.method public getmID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getmNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getmPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorType(I)V
    .locals 0
    .parameter "errorType"

    .prologue
    .line 34
    iput p1, p0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->ErrorType:I

    .line 35
    return-void
.end method

.method public setmID(Ljava/lang/String;)V
    .locals 0
    .parameter "mID"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mID:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setmNickName(Ljava/lang/String;)V
    .locals 0
    .parameter "mNickName"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mNickName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setmPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "mPassword"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->mPassword:Ljava/lang/String;

    .line 121
    return-void
.end method
