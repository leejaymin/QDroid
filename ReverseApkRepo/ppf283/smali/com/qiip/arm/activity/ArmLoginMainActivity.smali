.class public Lcom/qiip/arm/activity/ArmLoginMainActivity;
.super Ljava/lang/Object;
.source "ArmLoginMainActivity.java"


# instance fields
.field aid:Ljava/lang/String;

.field gdid:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mNextButton:Landroid/widget/Button;

.field mQiipID:Ljava/lang/String;

.field mTextInfo:Landroid/widget/TextView;

.field mTextPassword:Landroid/widget/EditText;

.field mTextid:Landroid/widget/EditText;

.field mViewList:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mViewList:Landroid/view/View;

    .line 21
    return-void
.end method


# virtual methods
.method public getAid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->aid:Ljava/lang/String;

    return-object v0
.end method

.method public getBodyView()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 61
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 62
    .local v0, li:Landroid/view/LayoutInflater;
    sget v2, Lcom/qiip/arm/R$layout;->arm_login_main_activity:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mViewList:Landroid/view/View;

    .line 63
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mViewList:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mViewList:Landroid/view/View;

    sget v3, Lcom/qiip/arm/R$id;->NextButton:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mNextButton:Landroid/widget/Button;

    .line 66
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 67
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 68
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mNextButton:Landroid/widget/Button;

    new-instance v3, Lcom/qiip/arm/activity/ArmLoginMainActivity$1;

    invoke-direct {v3, p0}, Lcom/qiip/arm/activity/ArmLoginMainActivity$1;-><init>(Lcom/qiip/arm/activity/ArmLoginMainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mViewList:Landroid/view/View;

    sget v3, Lcom/qiip/arm/R$id;->CancelButton:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 84
    .local v1, mCancelButton:Landroid/widget/Button;
    new-instance v2, Lcom/qiip/arm/activity/ArmLoginMainActivity$2;

    invoke-direct {v2, p0}, Lcom/qiip/arm/activity/ArmLoginMainActivity$2;-><init>(Lcom/qiip/arm/activity/ArmLoginMainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mViewList:Landroid/view/View;

    sget v3, Lcom/qiip/arm/R$id;->editTextID:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mTextid:Landroid/widget/EditText;

    .line 96
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mQiipID:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mTextid:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mQiipID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mTextid:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mTextid:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mTextid:Landroid/widget/EditText;

    new-instance v3, Lcom/qiip/arm/activity/ArmLoginMainActivity$3;

    invoke-direct {v3, p0}, Lcom/qiip/arm/activity/ArmLoginMainActivity$3;-><init>(Lcom/qiip/arm/activity/ArmLoginMainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 132
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mViewList:Landroid/view/View;

    sget v3, Lcom/qiip/arm/R$id;->editTextPasssword:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mTextPassword:Landroid/widget/EditText;

    .line 133
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mTextPassword:Landroid/widget/EditText;

    new-instance v3, Lcom/qiip/arm/activity/ArmLoginMainActivity$4;

    invoke-direct {v3, p0}, Lcom/qiip/arm/activity/ArmLoginMainActivity$4;-><init>(Lcom/qiip/arm/activity/ArmLoginMainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 167
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mViewList:Landroid/view/View;

    sget v3, Lcom/qiip/arm/R$id;->info_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mTextInfo:Landroid/widget/TextView;

    .line 168
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mTextInfo:Landroid/widget/TextView;

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/qiip/arm/R$string;->arm_user_main_guide_info1:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    const-string v4, "<FONT color=\'#fd371e\'><a href =\"http://m.qiip.jp/login/findIdPw.omp\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 172
    iget-object v4, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/qiip/arm/R$string;->arm_user_main_guide_info2:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 173
    const-string v4, "</a></FONT>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 174
    iget-object v4, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/qiip/arm/R$string;->arm_user_main_guide_info3:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 170
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 168
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mTextInfo:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 180
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mViewList:Landroid/view/View;

    return-object v2
.end method

.method public getGdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->gdid:Ljava/lang/String;

    return-object v0
.end method

.method public getmContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getmQiipID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mQiipID:Ljava/lang/String;

    return-object v0
.end method

.method public setAid(Ljava/lang/String;)V
    .locals 0
    .parameter "aid"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->aid:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setGdid(Ljava/lang/String;)V
    .locals 0
    .parameter "gdid"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->gdid:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setmContext(Landroid/content/Context;)V
    .locals 0
    .parameter "mContext"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public setmQiipID(Ljava/lang/String;)V
    .locals 0
    .parameter "mQiipID"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mQiipID:Ljava/lang/String;

    .line 45
    return-void
.end method
