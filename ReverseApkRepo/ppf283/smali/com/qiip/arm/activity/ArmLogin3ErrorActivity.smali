.class public Lcom/qiip/arm/activity/ArmLogin3ErrorActivity;
.super Ljava/lang/Object;
.source "ArmLogin3ErrorActivity.java"


# static fields
.field static mContext:Landroid/content/Context;


# instance fields
.field mID:Ljava/lang/String;

.field mPassword:Ljava/lang/String;

.field mTextInfo:Landroid/widget/TextView;

.field mViewList:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qiip/arm/activity/ArmLogin3ErrorActivity;->mViewList:Landroid/view/View;

    .line 17
    return-void
.end method

.method public static getmContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/qiip/arm/activity/ArmLogin3ErrorActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static setmContext(Landroid/content/Context;)V
    .locals 0
    .parameter "mContext"

    .prologue
    .line 60
    sput-object p0, Lcom/qiip/arm/activity/ArmLogin3ErrorActivity;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method


# virtual methods
.method public getBodyView()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 27
    sget-object v2, Lcom/qiip/arm/activity/ArmLogin3ErrorActivity;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 28
    .local v0, li:Landroid/view/LayoutInflater;
    sget v2, Lcom/qiip/arm/R$layout;->arm_login_3_error_activity:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/qiip/arm/activity/ArmLogin3ErrorActivity;->mViewList:Landroid/view/View;

    .line 30
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLogin3ErrorActivity;->mViewList:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLogin3ErrorActivity;->mViewList:Landroid/view/View;

    sget v3, Lcom/qiip/arm/R$id;->okButton:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 32
    .local v1, mOKButton:Landroid/widget/Button;
    new-instance v2, Lcom/qiip/arm/activity/ArmLogin3ErrorActivity$1;

    invoke-direct {v2, p0}, Lcom/qiip/arm/activity/ArmLogin3ErrorActivity$1;-><init>(Lcom/qiip/arm/activity/ArmLogin3ErrorActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLogin3ErrorActivity;->mViewList:Landroid/view/View;

    sget v3, Lcom/qiip/arm/R$id;->arm_user_error_guide_info1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/qiip/arm/activity/ArmLogin3ErrorActivity;->mTextInfo:Landroid/widget/TextView;

    .line 44
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLogin3ErrorActivity;->mTextInfo:Landroid/widget/TextView;

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/qiip/arm/activity/ArmLogin3ErrorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/qiip/arm/R$string;->arm_user_error_guide_info1:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    const-string v4, "<FONT color=\'#fd371e\'><a href =\"http://m.qiip.jp/login/findIdPw.omp\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/qiip/arm/activity/ArmLogin3ErrorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/qiip/arm/R$string;->arm_user_error_guide_info2:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</a></FONT>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 48
    sget-object v4, Lcom/qiip/arm/activity/ArmLogin3ErrorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/qiip/arm/R$string;->arm_user_error_guide_info3:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 44
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLogin3ErrorActivity;->mTextInfo:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 52
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLogin3ErrorActivity;->mViewList:Landroid/view/View;

    return-object v2
.end method

.method public getmID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/qiip/arm/activity/ArmLogin3ErrorActivity;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getmPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/qiip/arm/activity/ArmLogin3ErrorActivity;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public setmID(Ljava/lang/String;)V
    .locals 0
    .parameter "mID"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/qiip/arm/activity/ArmLogin3ErrorActivity;->mID:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setmPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "mPassword"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/qiip/arm/activity/ArmLogin3ErrorActivity;->mPassword:Ljava/lang/String;

    .line 77
    return-void
.end method
