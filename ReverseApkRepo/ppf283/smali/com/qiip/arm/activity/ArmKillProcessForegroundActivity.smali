.class public Lcom/qiip/arm/activity/ArmKillProcessForegroundActivity;
.super Ljava/lang/Object;
.source "ArmKillProcessForegroundActivity.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mErrorCode:I

.field mErrorTextView:Landroid/widget/TextView;

.field mViewList:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qiip/arm/activity/ArmKillProcessForegroundActivity;->mViewList:Landroid/view/View;

    .line 11
    return-void
.end method


# virtual methods
.method public getBodyView()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 35
    iget-object v1, p0, Lcom/qiip/arm/activity/ArmKillProcessForegroundActivity;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 37
    .local v0, li:Landroid/view/LayoutInflater;
    sget v1, Lcom/qiip/arm/R$layout;->arm_kill_foreground_activity:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/qiip/arm/activity/ArmKillProcessForegroundActivity;->mViewList:Landroid/view/View;

    .line 39
    iget-object v1, p0, Lcom/qiip/arm/activity/ArmKillProcessForegroundActivity;->mViewList:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iget-object v1, p0, Lcom/qiip/arm/activity/ArmKillProcessForegroundActivity;->mViewList:Landroid/view/View;

    sget v2, Lcom/qiip/arm/R$id;->err_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/qiip/arm/activity/ArmKillProcessForegroundActivity;->mErrorTextView:Landroid/widget/TextView;

    .line 43
    iget-object v1, p0, Lcom/qiip/arm/activity/ArmKillProcessForegroundActivity;->mErrorTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qiip/arm/activity/ArmKillProcessForegroundActivity;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/qiip/arm/activity/ArmKillProcessForegroundActivity;->mErrorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v1, p0, Lcom/qiip/arm/activity/ArmKillProcessForegroundActivity;->mViewList:Landroid/view/View;

    return-object v1
.end method

.method public getmContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/qiip/arm/activity/ArmKillProcessForegroundActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getmErrorCode()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/qiip/arm/activity/ArmKillProcessForegroundActivity;->mErrorCode:I

    return v0
.end method

.method public setmContext(Landroid/content/Context;)V
    .locals 0
    .parameter "mContext"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/qiip/arm/activity/ArmKillProcessForegroundActivity;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method public setmErrorCode(I)V
    .locals 0
    .parameter "mErrorCode"

    .prologue
    .line 23
    iput p1, p0, Lcom/qiip/arm/activity/ArmKillProcessForegroundActivity;->mErrorCode:I

    .line 24
    return-void
.end method
