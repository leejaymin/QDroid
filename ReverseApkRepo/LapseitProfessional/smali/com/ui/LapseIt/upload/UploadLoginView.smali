.class public Lcom/ui/LapseIt/upload/UploadLoginView;
.super Landroid/app/Activity;
.source "UploadLoginView.java"


# static fields
.field private static APP_ID:Ljava/lang/String;

.field static facebook:Lcom/facebook/android/Facebook;

.field static waitingFacebookCallback:Z


# instance fields
.field private buttonListener:Landroid/view/View$OnClickListener;

.field dialog:Landroid/app/ProgressDialog;

.field private errorHandler:Ljava/lang/Runnable;

.field private facebookDialog:Lcom/facebook/android/Facebook$DialogListener;

.field private facebookLogin:Ljava/lang/Runnable;

.field private passText:Landroid/widget/EditText;

.field private saveLoginChangeHandler:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private saveLoginCheck:Landroid/widget/CheckBox;

.field private userText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "112175132190726"

    sput-object v0, Lcom/ui/LapseIt/upload/UploadLoginView;->APP_ID:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 125
    new-instance v0, Lcom/ui/LapseIt/upload/UploadLoginView$1;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/upload/UploadLoginView$1;-><init>(Lcom/ui/LapseIt/upload/UploadLoginView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/upload/UploadLoginView;->saveLoginChangeHandler:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 136
    new-instance v0, Lcom/ui/LapseIt/upload/UploadLoginView$2;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/upload/UploadLoginView$2;-><init>(Lcom/ui/LapseIt/upload/UploadLoginView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/upload/UploadLoginView;->buttonListener:Landroid/view/View$OnClickListener;

    .line 191
    new-instance v0, Lcom/ui/LapseIt/upload/UploadLoginView$3;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/upload/UploadLoginView$3;-><init>(Lcom/ui/LapseIt/upload/UploadLoginView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/upload/UploadLoginView;->facebookLogin:Ljava/lang/Runnable;

    .line 220
    new-instance v0, Lcom/ui/LapseIt/upload/UploadLoginView$4;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/upload/UploadLoginView$4;-><init>(Lcom/ui/LapseIt/upload/UploadLoginView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/upload/UploadLoginView;->facebookDialog:Lcom/facebook/android/Facebook$DialogListener;

    .line 449
    new-instance v0, Lcom/ui/LapseIt/upload/UploadLoginView$5;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/upload/UploadLoginView$5;-><init>(Lcom/ui/LapseIt/upload/UploadLoginView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/upload/UploadLoginView;->errorHandler:Ljava/lang/Runnable;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/upload/UploadLoginView;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadLoginView;->userText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ui/LapseIt/upload/UploadLoginView;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadLoginView;->passText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ui/LapseIt/upload/UploadLoginView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 347
    invoke-direct {p0, p1, p2}, Lcom/ui/LapseIt/upload/UploadLoginView;->loginHandler(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/ui/LapseIt/upload/UploadLoginView;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadLoginView;->facebookLogin:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ui/LapseIt/upload/UploadLoginView;)Lcom/facebook/android/Facebook$DialogListener;
    .locals 1
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadLoginView;->facebookDialog:Lcom/facebook/android/Facebook$DialogListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/ui/LapseIt/upload/UploadLoginView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ui/LapseIt/upload/UploadLoginView;->insertFacebookLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/ui/LapseIt/upload/UploadLoginView;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 449
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadLoginView;->errorHandler:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$7(Lcom/ui/LapseIt/upload/UploadLoginView;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadLoginView;->saveLoginCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private insertFacebookLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "meUsername"
    .parameter "meName"
    .parameter "meGender"
    .parameter "meEmail"

    .prologue
    .line 269
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/ui/LapseIt/upload/UploadLoginView$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ui/LapseIt/upload/UploadLoginView$6;-><init>(Lcom/ui/LapseIt/upload/UploadLoginView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 344
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 345
    return-void
.end method

.method private loginHandler(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "username"
    .parameter "password"

    .prologue
    .line 349
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 351
    .local v0, dialog:Landroid/app/ProgressDialog;
    const-string v1, "Verifying your credentials"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 353
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 354
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 356
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ui/LapseIt/upload/UploadLoginView$7;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/ui/LapseIt/upload/UploadLoginView$7;-><init>(Lcom/ui/LapseIt/upload/UploadLoginView;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 446
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 447
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const v4, 0x98967f

    .line 456
    const-string v1, "trace"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Login result is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    sget-boolean v1, Lcom/ui/LapseIt/upload/UploadLoginView;->waitingFacebookCallback:Z

    if-eqz v1, :cond_1

    .line 458
    sget-object v1, Lcom/ui/LapseIt/upload/UploadLoginView;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v1, p1, p2, p3}, Lcom/facebook/android/Facebook;->authorizeCallback(IILandroid/content/Intent;)V

    .line 459
    const/4 v1, 0x0

    sput-boolean v1, Lcom/ui/LapseIt/upload/UploadLoginView;->waitingFacebookCallback:Z

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    if-lez p2, :cond_2

    if-eq p2, v4, :cond_2

    .line 461
    const-string v1, "trace"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Logged with ID "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ui/LapseIt/upload/UploadView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 463
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/ui/LapseIt/upload/UploadLoginView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 464
    const-string v1, "userId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 465
    const-string v1, "userType"

    const-string v2, "normal"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    invoke-virtual {p0, v0, v4}, Lcom/ui/LapseIt/upload/UploadLoginView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 467
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    if-ne p2, v4, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/ui/LapseIt/upload/UploadLoginView;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v9, 0x7f03002e

    invoke-virtual {p0, v9}, Lcom/ui/LapseIt/upload/UploadLoginView;->setContentView(I)V

    .line 74
    const v9, 0x7f0b00ac

    invoke-virtual {p0, v9}, Lcom/ui/LapseIt/upload/UploadLoginView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView;->userText:Landroid/widget/EditText;

    .line 75
    const v9, 0x7f0b00ad

    invoke-virtual {p0, v9}, Lcom/ui/LapseIt/upload/UploadLoginView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView;->passText:Landroid/widget/EditText;

    .line 78
    const v9, 0x7f0b00ae

    invoke-virtual {p0, v9}, Lcom/ui/LapseIt/upload/UploadLoginView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView;->saveLoginCheck:Landroid/widget/CheckBox;

    .line 79
    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView;->saveLoginCheck:Landroid/widget/CheckBox;

    iget-object v10, p0, Lcom/ui/LapseIt/upload/UploadLoginView;->saveLoginChangeHandler:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 80
    sget-object v9, Lcom/ui/LapseIt/settings/SettingsHelper;->GALLERY_SAVE_LOGIN:Ljava/lang/String;

    invoke-static {p0, v9}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, saveLogin:Ljava/lang/String;
    sget-object v9, Lcom/ui/LapseIt/settings/SettingsHelper;->VALUES_TRUE:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 82
    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView;->saveLoginCheck:Landroid/widget/CheckBox;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 84
    sget-object v9, Lcom/ui/LapseIt/settings/SettingsHelper;->GALLERY_USERNAME:Ljava/lang/String;

    invoke-static {p0, v9}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 85
    .local v7, savedUsername:Ljava/lang/String;
    sget-object v9, Lcom/ui/LapseIt/settings/SettingsHelper;->GALLERY_PASSWORD:Ljava/lang/String;

    invoke-static {p0, v9}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, savedPassword:Ljava/lang/String;
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    .line 88
    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView;->userText:Landroid/widget/EditText;

    invoke-virtual {v9, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView;->passText:Landroid/widget/EditText;

    invoke-virtual {v9, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .end local v6           #savedPassword:Ljava/lang/String;
    .end local v7           #savedUsername:Ljava/lang/String;
    :cond_0
    :goto_0
    const v9, 0x7f0b00af

    invoke-virtual {p0, v9}, Lcom/ui/LapseIt/upload/UploadLoginView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 98
    .local v4, loginButton:Landroid/widget/Button;
    const v9, 0x7f0b00aa

    invoke-virtual {p0, v9}, Lcom/ui/LapseIt/upload/UploadLoginView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 99
    .local v8, signButton:Landroid/widget/Button;
    const v9, 0x7f0b00b0

    invoke-virtual {p0, v9}, Lcom/ui/LapseIt/upload/UploadLoginView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 100
    .local v3, faceButton:Landroid/widget/Button;
    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView;->buttonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView;->buttonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView;->buttonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const-string v9, "facebook_access_token"

    invoke-static {p0, v9}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, access_token:Ljava/lang/String;
    const-string v9, "facebook_access_expires"

    invoke-static {p0, v9}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, expires:Ljava/lang/String;
    new-instance v9, Lcom/facebook/android/Facebook;

    sget-object v10, Lcom/ui/LapseIt/upload/UploadLoginView;->APP_ID:Ljava/lang/String;

    invoke-direct {v9, v10}, Lcom/facebook/android/Facebook;-><init>(Ljava/lang/String;)V

    sput-object v9, Lcom/ui/LapseIt/upload/UploadLoginView;->facebook:Lcom/facebook/android/Facebook;

    .line 109
    const-string v9, "trace"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Facebook Token is "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    if-eqz v0, :cond_1

    .line 111
    sget-object v9, Lcom/ui/LapseIt/upload/UploadLoginView;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v9, v0}, Lcom/facebook/android/Facebook;->setAccessToken(Ljava/lang/String;)V

    .line 115
    :cond_1
    if-eqz v2, :cond_2

    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 116
    sget-object v9, Lcom/ui/LapseIt/upload/UploadLoginView;->facebook:Lcom/facebook/android/Facebook;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/facebook/android/Facebook;->setAccessExpires(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_2
    :goto_1
    const-string v9, "trace"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Session is Valid? "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/ui/LapseIt/upload/UploadLoginView;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v11}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void

    .line 94
    .end local v0           #access_token:Ljava/lang/String;
    .end local v2           #expires:Ljava/lang/String;
    .end local v3           #faceButton:Landroid/widget/Button;
    .end local v4           #loginButton:Landroid/widget/Button;
    .end local v8           #signButton:Landroid/widget/Button;
    :cond_3
    iget-object v9, p0, Lcom/ui/LapseIt/upload/UploadLoginView;->saveLoginCheck:Landroid/widget/CheckBox;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 118
    .restart local v0       #access_token:Ljava/lang/String;
    .restart local v2       #expires:Ljava/lang/String;
    .restart local v3       #faceButton:Landroid/widget/Button;
    .restart local v4       #loginButton:Landroid/widget/Button;
    .restart local v8       #signButton:Landroid/widget/Button;
    :catch_0
    move-exception v1

    .line 119
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadLoginView;->saveLoginCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    sget-object v0, Lcom/ui/LapseIt/settings/SettingsHelper;->GALLERY_USERNAME:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/ui/LapseIt/settings/SettingsHelper;->removeSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 255
    sget-object v0, Lcom/ui/LapseIt/settings/SettingsHelper;->GALLERY_PASSWORD:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/ui/LapseIt/settings/SettingsHelper;->removeSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 257
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 258
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 65
    invoke-static {}, Lcom/ui/LapseIt/Main;->getFlurryId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 261
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 263
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 264
    return-void
.end method
