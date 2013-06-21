.class public Lcom/qiip/arm/activity/ArmLoginCompleteActivity;
.super Ljava/lang/Object;
.source "ArmLoginCompleteActivity.java"


# static fields
.field public static mComplete:I

.field static mContext:Landroid/content/Context;


# instance fields
.field mID:Ljava/lang/String;

.field private mNickName:Ljava/lang/String;

.field mPassword:Ljava/lang/String;

.field mViewList:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, -0x1

    sput v0, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->mComplete:I

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->mViewList:Landroid/view/View;

    .line 15
    return-void
.end method

.method public static getmContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static setmContext(Landroid/content/Context;)V
    .locals 0
    .parameter "mContext"

    .prologue
    .line 62
    sput-object p0, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method


# virtual methods
.method public getBodyView()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 34
    sget-object v3, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 35
    .local v0, li:Landroid/view/LayoutInflater;
    sget v3, Lcom/qiip/arm/R$layout;->arm_login_complete_activity:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->mViewList:Landroid/view/View;

    .line 36
    iget-object v3, p0, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->mViewList:Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    iget-object v3, p0, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->mViewList:Landroid/view/View;

    sget v4, Lcom/qiip/arm/R$id;->nick_text:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 40
    .local v1, mNickTextView:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<FONT color=\'#ff5f00\'><b>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->getmNickName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</b></font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 41
    sget-object v4, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/qiip/arm/R$string;->arm_user_auth_complete_detail_text:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v3, p0, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->mViewList:Landroid/view/View;

    sget v4, Lcom/qiip/arm/R$id;->okButton:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 44
    .local v2, mOKButton:Landroid/widget/Button;
    new-instance v3, Lcom/qiip/arm/activity/ArmLoginCompleteActivity$1;

    invoke-direct {v3, p0}, Lcom/qiip/arm/activity/ArmLoginCompleteActivity$1;-><init>(Lcom/qiip/arm/activity/ArmLoginCompleteActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v3, p0, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->mViewList:Landroid/view/View;

    return-object v3
.end method

.method public getmID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getmNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->mNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getmPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public setmID(Ljava/lang/String;)V
    .locals 0
    .parameter "mID"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->mID:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setmNickName(Ljava/lang/String;)V
    .locals 0
    .parameter "mNickName"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->mNickName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setmPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "mPassword"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->mPassword:Ljava/lang/String;

    .line 79
    return-void
.end method
