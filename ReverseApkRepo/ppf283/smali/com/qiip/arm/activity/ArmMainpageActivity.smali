.class public Lcom/qiip/arm/activity/ArmMainpageActivity;
.super Landroid/app/Activity;
.source "ArmMainpageActivity.java"


# static fields
.field public static aid_auth:Ljava/lang/String;

.field public static gdid_auth:Ljava/lang/String;

.field static mContext:Landroid/content/Context;


# instance fields
.field mArmKillProcessForegroundActivity:Lcom/qiip/arm/activity/ArmKillProcessForegroundActivity;

.field mArmLogin3ErrorActivity:Lcom/qiip/arm/activity/ArmLogin3ErrorActivity;

.field mArmLogin5ErrorActivity:Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;

.field mArmLoginAuthActivity:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

.field mArmLoginCompleteActivity:Lcom/qiip/arm/activity/ArmLoginCompleteActivity;

.field mArmLoginErrorActivity:Lcom/qiip/arm/activity/ArmLoginErrorActivity;

.field mArmLoginMainActivity:Lcom/qiip/arm/activity/ArmLoginMainActivity;

.field mLinearView:Landroid/widget/LinearLayout;

.field mView:Landroid/view/View;

.field private second:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/qiip/arm/activity/ArmMainpageActivity;->aid_auth:Ljava/lang/String;

    .line 27
    sput-object v0, Lcom/qiip/arm/activity/ArmMainpageActivity;->gdid_auth:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmKillProcessForegroundActivity:Lcom/qiip/arm/activity/ArmKillProcessForegroundActivity;

    .line 30
    iput-object v0, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLoginMainActivity:Lcom/qiip/arm/activity/ArmLoginMainActivity;

    .line 31
    iput-object v0, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLoginAuthActivity:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    .line 32
    iput-object v0, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLoginCompleteActivity:Lcom/qiip/arm/activity/ArmLoginCompleteActivity;

    .line 33
    iput-object v0, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLoginErrorActivity:Lcom/qiip/arm/activity/ArmLoginErrorActivity;

    .line 34
    iput-object v0, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLogin3ErrorActivity:Lcom/qiip/arm/activity/ArmLogin3ErrorActivity;

    .line 35
    iput-object v0, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLogin5ErrorActivity:Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;

    .line 20
    return-void
.end method

.method public static getmContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public SetViewBody(Landroid/view/View;)V
    .locals 1
    .parameter "vBody"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mLinearView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 193
    iget-object v0, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mLinearView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/qiip/arm/activity/ArmMainpageActivity;->requestWindowFeature(I)Z

    .line 51
    sget v12, Lcom/qiip/arm/R$layout;->arm_main_view_activity:I

    invoke-virtual {p0, v12}, Lcom/qiip/arm/activity/ArmMainpageActivity;->setContentView(I)V

    .line 54
    sput-object p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mContext:Landroid/content/Context;

    .line 55
    sget v12, Lcom/qiip/arm/R$id;->main_view:I

    invoke-virtual {p0, v12}, Lcom/qiip/arm/activity/ArmMainpageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    iput-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mLinearView:Landroid/widget/LinearLayout;

    .line 57
    invoke-virtual {p0}, Lcom/qiip/arm/activity/ArmMainpageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "VIEW_CODE"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 58
    .local v11, view_select:I
    invoke-virtual {p0}, Lcom/qiip/arm/activity/ArmMainpageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "TEXT_AID"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, aid:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/qiip/arm/activity/ArmMainpageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "TEXT_GDID"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, gdid:Ljava/lang/String;
    if-nez v11, :cond_2

    .line 64
    invoke-virtual {p0}, Lcom/qiip/arm/activity/ArmMainpageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "ERROR_CODE"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 65
    .local v3, error_code:I
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmKillProcessForegroundActivity:Lcom/qiip/arm/activity/ArmKillProcessForegroundActivity;

    if-nez v12, :cond_0

    .line 66
    new-instance v12, Lcom/qiip/arm/activity/ArmKillProcessForegroundActivity;

    invoke-direct {v12}, Lcom/qiip/arm/activity/ArmKillProcessForegroundActivity;-><init>()V

    iput-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmKillProcessForegroundActivity:Lcom/qiip/arm/activity/ArmKillProcessForegroundActivity;

    .line 67
    :cond_0
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmKillProcessForegroundActivity:Lcom/qiip/arm/activity/ArmKillProcessForegroundActivity;

    sget-object v13, Lcom/qiip/arm/activity/ArmMainpageActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v13}, Lcom/qiip/arm/activity/ArmKillProcessForegroundActivity;->setmContext(Landroid/content/Context;)V

    .line 68
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmKillProcessForegroundActivity:Lcom/qiip/arm/activity/ArmKillProcessForegroundActivity;

    invoke-virtual {v12, v3}, Lcom/qiip/arm/activity/ArmKillProcessForegroundActivity;->setmErrorCode(I)V

    .line 69
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmKillProcessForegroundActivity:Lcom/qiip/arm/activity/ArmKillProcessForegroundActivity;

    invoke-virtual {v12}, Lcom/qiip/arm/activity/ArmKillProcessForegroundActivity;->getBodyView()Landroid/view/View;

    move-result-object v12

    iput-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mView:Landroid/view/View;

    .line 70
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mView:Landroid/view/View;

    invoke-virtual {p0, v12}, Lcom/qiip/arm/activity/ArmMainpageActivity;->SetViewBody(Landroid/view/View;)V

    .line 72
    new-instance v12, Lcom/qiip/arm/activity/ArmMainpageActivity$1;

    invoke-direct {v12, p0}, Lcom/qiip/arm/activity/ArmMainpageActivity$1;-><init>(Lcom/qiip/arm/activity/ArmMainpageActivity;)V

    iput-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->second:Ljava/util/TimerTask;

    .line 80
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .line 81
    .local v9, timer:Ljava/util/Timer;
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->second:Ljava/util/TimerTask;

    const-wide/16 v13, 0x7d0

    invoke-virtual {v9, v12, v13, v14}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 188
    .end local v3           #error_code:I
    .end local v9           #timer:Ljava/util/Timer;
    :cond_1
    :goto_0
    return-void

    .line 84
    :cond_2
    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 86
    sget-object v12, Lcom/qiip/arm/activity/ArmMainpageActivity;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/qiip/arm/util/FileIO;->getLoginSharedId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, getLoginSharedId:Ljava/lang/String;
    const/4 v0, 0x0

    .line 89
    .local v0, Decryptedid:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 92
    :try_start_0
    invoke-static {v5}, Lcom/qiip/arm/util/CipherAES;->decrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 99
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/qiip/arm/activity/ArmMainpageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "TEXT_ID"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, id:Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 101
    move-object v0, v6

    .line 104
    :cond_4
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLoginMainActivity:Lcom/qiip/arm/activity/ArmLoginMainActivity;

    if-nez v12, :cond_5

    .line 105
    new-instance v12, Lcom/qiip/arm/activity/ArmLoginMainActivity;

    invoke-direct {v12}, Lcom/qiip/arm/activity/ArmLoginMainActivity;-><init>()V

    iput-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLoginMainActivity:Lcom/qiip/arm/activity/ArmLoginMainActivity;

    .line 106
    :cond_5
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLoginMainActivity:Lcom/qiip/arm/activity/ArmLoginMainActivity;

    sget-object v13, Lcom/qiip/arm/activity/ArmMainpageActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v13}, Lcom/qiip/arm/activity/ArmLoginMainActivity;->setmContext(Landroid/content/Context;)V

    .line 107
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLoginMainActivity:Lcom/qiip/arm/activity/ArmLoginMainActivity;

    invoke-virtual {v12, v0}, Lcom/qiip/arm/activity/ArmLoginMainActivity;->setmQiipID(Ljava/lang/String;)V

    .line 108
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLoginMainActivity:Lcom/qiip/arm/activity/ArmLoginMainActivity;

    invoke-virtual {v12, v1}, Lcom/qiip/arm/activity/ArmLoginMainActivity;->setAid(Ljava/lang/String;)V

    .line 109
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLoginMainActivity:Lcom/qiip/arm/activity/ArmLoginMainActivity;

    invoke-virtual {v12, v4}, Lcom/qiip/arm/activity/ArmLoginMainActivity;->setGdid(Ljava/lang/String;)V

    .line 110
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLoginMainActivity:Lcom/qiip/arm/activity/ArmLoginMainActivity;

    invoke-virtual {v12}, Lcom/qiip/arm/activity/ArmLoginMainActivity;->getBodyView()Landroid/view/View;

    move-result-object v12

    iput-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mView:Landroid/view/View;

    .line 111
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mView:Landroid/view/View;

    invoke-virtual {p0, v12}, Lcom/qiip/arm/activity/ArmMainpageActivity;->SetViewBody(Landroid/view/View;)V

    goto :goto_0

    .line 93
    .end local v6           #id:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 95
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 115
    .end local v0           #Decryptedid:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v5           #getLoginSharedId:Ljava/lang/String;
    :cond_6
    const/4 v12, 0x2

    if-ne v11, v12, :cond_a

    .line 117
    invoke-virtual {p0}, Lcom/qiip/arm/activity/ArmMainpageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "TEXT_ID"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 118
    .restart local v6       #id:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/qiip/arm/activity/ArmMainpageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "TEXT_PASSWORD"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 119
    .local v8, password:Ljava/lang/String;
    sget-object v12, Lcom/qiip/arm/activity/ArmMainpageActivity;->aid_auth:Ljava/lang/String;

    if-nez v12, :cond_7

    .line 120
    invoke-virtual {p0}, Lcom/qiip/arm/activity/ArmMainpageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "TEXT_AID"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/qiip/arm/activity/ArmMainpageActivity;->aid_auth:Ljava/lang/String;

    .line 121
    :cond_7
    sget-object v12, Lcom/qiip/arm/activity/ArmMainpageActivity;->gdid_auth:Ljava/lang/String;

    if-nez v12, :cond_8

    .line 122
    invoke-virtual {p0}, Lcom/qiip/arm/activity/ArmMainpageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "TEXT_GDID"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/qiip/arm/activity/ArmMainpageActivity;->gdid_auth:Ljava/lang/String;

    .line 124
    :cond_8
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLoginAuthActivity:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    if-nez v12, :cond_9

    .line 125
    new-instance v12, Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    invoke-direct {v12}, Lcom/qiip/arm/activity/ArmLoginAuthActivity;-><init>()V

    iput-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLoginAuthActivity:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    .line 126
    :cond_9
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLoginAuthActivity:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    sget-object v13, Lcom/qiip/arm/activity/ArmMainpageActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v13}, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->setmContext(Landroid/content/Context;)V

    .line 127
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLoginAuthActivity:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    invoke-virtual {v12, v6}, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->setmID(Ljava/lang/String;)V

    .line 128
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLoginAuthActivity:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    invoke-virtual {v12, v8}, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->setmPassword(Ljava/lang/String;)V

    .line 129
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLoginAuthActivity:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    sget-object v13, Lcom/qiip/arm/activity/ArmMainpageActivity;->aid_auth:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->setAID(Ljava/lang/String;)V

    .line 130
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLoginAuthActivity:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    sget-object v13, Lcom/qiip/arm/activity/ArmMainpageActivity;->gdid_auth:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->setGDID(Ljava/lang/String;)V

    .line 131
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLoginAuthActivity:Lcom/qiip/arm/activity/ArmLoginAuthActivity;

    invoke-virtual {v12}, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->getBodyView()Landroid/view/View;

    move-result-object v12

    iput-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mView:Landroid/view/View;

    .line 132
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mView:Landroid/view/View;

    invoke-virtual {p0, v12}, Lcom/qiip/arm/activity/ArmMainpageActivity;->SetViewBody(Landroid/view/View;)V

    goto/16 :goto_0

    .line 134
    .end local v6           #id:Ljava/lang/String;
    .end local v8           #password:Ljava/lang/String;
    :cond_a
    const/4 v12, 0x3

    if-ne v11, v12, :cond_c

    .line 136
    invoke-virtual {p0}, Lcom/qiip/arm/activity/ArmMainpageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "NICK_NAME"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 138
    .local v7, nick:Ljava/lang/String;
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLoginCompleteActivity:Lcom/qiip/arm/activity/ArmLoginCompleteActivity;

    if-nez v12, :cond_b

    .line 139
    new-instance v12, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;

    invoke-direct {v12}, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;-><init>()V

    iput-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLoginCompleteActivity:Lcom/qiip/arm/activity/ArmLoginCompleteActivity;

    .line 140
    :cond_b
    sget-object v12, Lcom/qiip/arm/activity/ArmMainpageActivity;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->setmContext(Landroid/content/Context;)V

    .line 141
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLoginCompleteActivity:Lcom/qiip/arm/activity/ArmLoginCompleteActivity;

    invoke-virtual {v12, v7}, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->setmNickName(Ljava/lang/String;)V

    .line 142
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLoginCompleteActivity:Lcom/qiip/arm/activity/ArmLoginCompleteActivity;

    invoke-virtual {v12}, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->getBodyView()Landroid/view/View;

    move-result-object v12

    iput-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mView:Landroid/view/View;

    .line 143
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mView:Landroid/view/View;

    invoke-virtual {p0, v12}, Lcom/qiip/arm/activity/ArmMainpageActivity;->SetViewBody(Landroid/view/View;)V

    goto/16 :goto_0

    .line 147
    .end local v7           #nick:Ljava/lang/String;
    :cond_c
    const/4 v12, 0x4

    if-ne v11, v12, :cond_e

    .line 149
    invoke-virtual {p0}, Lcom/qiip/arm/activity/ArmMainpageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "VIEW_TYPE"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 150
    .local v10, type:I
    invoke-virtual {p0}, Lcom/qiip/arm/activity/ArmMainpageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "TEXT_ID"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 151
    .restart local v6       #id:Ljava/lang/String;
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLoginErrorActivity:Lcom/qiip/arm/activity/ArmLoginErrorActivity;

    if-nez v12, :cond_d

    .line 152
    new-instance v12, Lcom/qiip/arm/activity/ArmLoginErrorActivity;

    invoke-direct {v12}, Lcom/qiip/arm/activity/ArmLoginErrorActivity;-><init>()V

    iput-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLoginErrorActivity:Lcom/qiip/arm/activity/ArmLoginErrorActivity;

    .line 153
    :cond_d
    sget-object v12, Lcom/qiip/arm/activity/ArmMainpageActivity;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/qiip/arm/activity/ArmLoginErrorActivity;->setmContext(Landroid/content/Context;)V

    .line 154
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLoginErrorActivity:Lcom/qiip/arm/activity/ArmLoginErrorActivity;

    invoke-virtual {v12, v10}, Lcom/qiip/arm/activity/ArmLoginErrorActivity;->setmViewType(I)V

    .line 155
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLoginErrorActivity:Lcom/qiip/arm/activity/ArmLoginErrorActivity;

    invoke-virtual {v12, v6}, Lcom/qiip/arm/activity/ArmLoginErrorActivity;->setmID(Ljava/lang/String;)V

    .line 156
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLoginErrorActivity:Lcom/qiip/arm/activity/ArmLoginErrorActivity;

    invoke-virtual {v12}, Lcom/qiip/arm/activity/ArmLoginErrorActivity;->getBodyView()Landroid/view/View;

    move-result-object v12

    iput-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mView:Landroid/view/View;

    .line 157
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mView:Landroid/view/View;

    invoke-virtual {p0, v12}, Lcom/qiip/arm/activity/ArmMainpageActivity;->SetViewBody(Landroid/view/View;)V

    goto/16 :goto_0

    .line 161
    .end local v6           #id:Ljava/lang/String;
    .end local v10           #type:I
    :cond_e
    const/4 v12, 0x5

    if-ne v11, v12, :cond_10

    .line 163
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLogin3ErrorActivity:Lcom/qiip/arm/activity/ArmLogin3ErrorActivity;

    if-nez v12, :cond_f

    .line 164
    new-instance v12, Lcom/qiip/arm/activity/ArmLogin3ErrorActivity;

    invoke-direct {v12}, Lcom/qiip/arm/activity/ArmLogin3ErrorActivity;-><init>()V

    iput-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLogin3ErrorActivity:Lcom/qiip/arm/activity/ArmLogin3ErrorActivity;

    .line 165
    :cond_f
    sget-object v12, Lcom/qiip/arm/activity/ArmMainpageActivity;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/qiip/arm/activity/ArmLogin3ErrorActivity;->setmContext(Landroid/content/Context;)V

    .line 166
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLogin3ErrorActivity:Lcom/qiip/arm/activity/ArmLogin3ErrorActivity;

    invoke-virtual {v12}, Lcom/qiip/arm/activity/ArmLogin3ErrorActivity;->getBodyView()Landroid/view/View;

    move-result-object v12

    iput-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mView:Landroid/view/View;

    .line 167
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mView:Landroid/view/View;

    invoke-virtual {p0, v12}, Lcom/qiip/arm/activity/ArmMainpageActivity;->SetViewBody(Landroid/view/View;)V

    goto/16 :goto_0

    .line 175
    :cond_10
    const/4 v12, 0x6

    if-eq v11, v12, :cond_11

    const/4 v12, 0x7

    if-eq v11, v12, :cond_11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_11

    const/16 v12, 0x9

    if-ne v11, v12, :cond_1

    .line 177
    :cond_11
    invoke-virtual {p0}, Lcom/qiip/arm/activity/ArmMainpageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "NICK_NAME"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 178
    .restart local v7       #nick:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/qiip/arm/activity/ArmMainpageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "ID"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 179
    .restart local v6       #id:Ljava/lang/String;
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLogin5ErrorActivity:Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;

    if-nez v12, :cond_12

    .line 180
    new-instance v12, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;

    invoke-direct {v12}, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;-><init>()V

    iput-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLogin5ErrorActivity:Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;

    .line 181
    :cond_12
    sget-object v12, Lcom/qiip/arm/activity/ArmMainpageActivity;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->setmContext(Landroid/content/Context;)V

    .line 182
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLogin5ErrorActivity:Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;

    invoke-virtual {v12, v7}, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->setmNickName(Ljava/lang/String;)V

    .line 183
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLogin5ErrorActivity:Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;

    invoke-virtual {v12, v6}, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->setmID(Ljava/lang/String;)V

    .line 184
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLogin5ErrorActivity:Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;

    invoke-virtual {v12, v11}, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->setErrorType(I)V

    .line 185
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mArmLogin5ErrorActivity:Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;

    invoke-virtual {v12}, Lcom/qiip/arm/activity/ArmLogin5ErrorActivity;->getBodyView()Landroid/view/View;

    move-result-object v12

    iput-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mView:Landroid/view/View;

    .line 186
    iget-object v12, p0, Lcom/qiip/arm/activity/ArmMainpageActivity;->mView:Landroid/view/View;

    invoke-virtual {p0, v12}, Lcom/qiip/arm/activity/ArmMainpageActivity;->SetViewBody(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public setmContext(Landroid/content/Context;)V
    .locals 0
    .parameter "mContext"

    .prologue
    .line 43
    sput-object p1, Lcom/qiip/arm/activity/ArmMainpageActivity;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method
