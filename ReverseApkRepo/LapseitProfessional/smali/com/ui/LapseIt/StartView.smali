.class public Lcom/ui/LapseIt/StartView;
.super Landroid/app/Activity;
.source "StartView.java"


# static fields
.field private static TUTORIAL_RESULT:I

.field private static showedPromo:Z


# instance fields
.field private backFromTutorial:Z

.field btn_onClickHandler:Landroid/view/View$OnClickListener;

.field private fullVersionButton:Landroid/widget/ImageView;

.field private fullVersionIcon:Landroid/widget/ImageView;

.field private fullVersionText:Landroid/widget/TextView;

.field private i:Landroid/content/Intent;

.field private listCapturedButton:Landroid/widget/ImageView;

.field private newCaptureButton:Landroid/widget/ImageView;

.field private settingsButton:Landroid/widget/ImageView;

.field private tutorialButton:Landroid/widget/ImageView;

.field private tutorialTime:J

.field private versionText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ui/LapseIt/StartView;->showedPromo:Z

    .line 48
    const/16 v0, 0xc7

    sput v0, Lcom/ui/LapseIt/StartView;->TUTORIAL_RESULT:I

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 264
    new-instance v0, Lcom/ui/LapseIt/StartView$1;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/StartView$1;-><init>(Lcom/ui/LapseIt/StartView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/StartView;->btn_onClickHandler:Landroid/view/View$OnClickListener;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/StartView;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/ui/LapseIt/StartView;->i:Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$1(Lcom/ui/LapseIt/StartView;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ui/LapseIt/StartView;->i:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ui/LapseIt/StartView;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 354
    iput-wide p1, p0, Lcom/ui/LapseIt/StartView;->tutorialTime:J

    return-void
.end method

.method static synthetic access$3()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/ui/LapseIt/StartView;->TUTORIAL_RESULT:I

    return v0
.end method

.method static synthetic access$4(Lcom/ui/LapseIt/StartView;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/ui/LapseIt/StartView;->buildPromoDialog()V

    return-void
.end method

.method private buildPromoDialog()V
    .locals 7

    .prologue
    .line 203
    const/4 v4, 0x1

    sput-boolean v4, Lcom/ui/LapseIt/StartView;->showedPromo:Z

    .line 207
    invoke-static {}, Lcom/ui/LapseIt/Main;->isFullVersion()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 208
    const-string v3, "To celebrate it\'s first aniversary, we released a major update to Lapse It and we dropped it\'s price for a week so everyone can enjoy creating amazing time lapse videos.\n\nThank you for being a Pro and you can celebrate with us sharing it with your friends"

    .line 209
    .local v3, promoMessage:Ljava/lang/String;
    const-string v2, "Share with friends"

    .line 215
    .local v2, positiveString:Ljava/lang/String;
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 216
    const-string v5, "Lapse It Birthweek"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 217
    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 218
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 219
    new-instance v5, Lcom/ui/LapseIt/StartView$4;

    invoke-direct {v5, p0}, Lcom/ui/LapseIt/StartView$4;-><init>(Lcom/ui/LapseIt/StartView;)V

    invoke-virtual {v4, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 241
    const-string v5, "Tell me later"

    new-instance v6, Lcom/ui/LapseIt/StartView$5;

    invoke-direct {v6, p0}, Lcom/ui/LapseIt/StartView$5;-><init>(Lcom/ui/LapseIt/StartView;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 247
    const-string v5, "Don\'t show again"

    new-instance v6, Lcom/ui/LapseIt/StartView$6;

    invoke-direct {v6, p0}, Lcom/ui/LapseIt/StartView$6;-><init>(Lcom/ui/LapseIt/StartView;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 256
    .local v0, alertBuilder:Landroid/app/AlertDialog$Builder;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 262
    :goto_1
    return-void

    .line 211
    .end local v0           #alertBuilder:Landroid/app/AlertDialog$Builder;
    .end local v2           #positiveString:Ljava/lang/String;
    .end local v3           #promoMessage:Ljava/lang/String;
    :cond_0
    const-string v3, "To celebrate it\'s first aniversary, we released a major update to Lapse It and we dropped it\'s price for a week so everyone can enjoy creating amazing time lapse videos.\n\nDon\'t lose this unique opportunity and download it now !"

    .line 212
    .restart local v3       #promoMessage:Ljava/lang/String;
    const-string v2, "Go to Google Play"

    .restart local v2       #positiveString:Ljava/lang/String;
    goto :goto_0

    .line 257
    .restart local v0       #alertBuilder:Landroid/app/AlertDialog$Builder;
    :catch_0
    move-exception v1

    .line 258
    .local v1, e:Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {v1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_1

    .line 259
    .end local v1           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_1
    move-exception v1

    .line 260
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/ui/LapseIt/StartView;->tutorialTime:J

    sub-long v1, v4, v6

    .line 359
    .local v1, durationTime:J
    const-wide/16 v4, 0x7d0

    cmp-long v4, v1, v4

    if-gez v4, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    sget v4, Lcom/ui/LapseIt/StartView;->TUTORIAL_RESULT:I

    if-ne p1, v4, :cond_2

    invoke-static {p0}, Lcom/ui/LapseIt/Main;->isFullVersion(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 363
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 364
    .local v0, alertBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/ui/LapseIt/StartView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 366
    invoke-virtual {p0}, Lcom/ui/LapseIt/StartView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 367
    invoke-virtual {p0}, Lcom/ui/LapseIt/StartView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/ui/LapseIt/StartView$7;

    invoke-direct {v5, p0}, Lcom/ui/LapseIt/StartView$7;-><init>(Lcom/ui/LapseIt/StartView;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 389
    invoke-virtual {p0}, Lcom/ui/LapseIt/StartView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080025

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/ui/LapseIt/StartView$8;

    invoke-direct {v5, p0}, Lcom/ui/LapseIt/StartView$8;-><init>(Lcom/ui/LapseIt/StartView;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 397
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 405
    .end local v0           #alertBuilder:Landroid/app/AlertDialog$Builder;
    :cond_2
    :goto_1
    if-ne p1, p2, :cond_0

    .line 406
    invoke-virtual {p0, p3}, Lcom/ui/LapseIt/StartView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 398
    .restart local v0       #alertBuilder:Landroid/app/AlertDialog$Builder;
    :catch_0
    move-exception v3

    .line 399
    .local v3, e:Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {v3}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_1

    .line 400
    .end local v3           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_1
    move-exception v3

    .line 401
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/ui/LapseIt/StartView;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/Window;->setFormat(I)V

    .line 78
    invoke-virtual {p0}, Lcom/ui/LapseIt/StartView;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x1000

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 81
    new-instance v7, Ljava/util/GregorianCalendar;

    const/16 v8, 0x7dc

    const/4 v9, 0x7

    const/16 v10, 0x1f

    invoke-direct {v7, v8, v9, v10}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v7}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 82
    .local v0, promoDate:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 83
    .local v2, promoTime:J
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 84
    .local v4, todayDate:Ljava/util/Date;
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 86
    .local v5, todayTime:J
    const-string v7, "directory"

    invoke-static {p0, v7}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    cmp-long v7, v5, v2

    if-gtz v7, :cond_1

    sget-boolean v7, Lcom/ui/LapseIt/StartView;->showedPromo:Z

    if-nez v7, :cond_1

    .line 88
    const-string v7, "birthweek"

    invoke-static {p0, v7}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, promoStatus:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v7, "-1"

    if-eq v1, v7, :cond_1

    .line 90
    :cond_0
    new-instance v7, Lcom/ui/LapseIt/StartView$2;

    invoke-direct {v7, p0}, Lcom/ui/LapseIt/StartView$2;-><init>(Lcom/ui/LapseIt/StartView;)V

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    .line 106
    invoke-virtual {v7, v8}, Lcom/ui/LapseIt/StartView$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 109
    .end local v1           #promoStatus:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/ui/LapseIt/StartView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 413
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 435
    packed-switch p1, :pswitch_data_0

    .line 443
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 437
    :pswitch_0
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/ui/LapseIt/StartView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 438
    .local v0, notificationManager:Landroid/app/NotificationManager;
    sget v1, Lcom/ui/LapseIt/project/Renderer;->NOTIFICATION_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 439
    sget v1, Lcom/ui/LapseIt/upload/UploadService;->NOTIFICATION_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 440
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ui/LapseIt/StartView;->moveTaskToBack(Z)Z

    .line 441
    const/4 v1, 0x0

    goto :goto_0

    .line 435
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 418
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 430
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 421
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ui/LapseIt/capture/ScheduleView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/ui/LapseIt/StartView;->i:Landroid/content/Intent;

    .line 422
    iget-object v0, p0, Lcom/ui/LapseIt/StartView;->i:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/StartView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 426
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ui/LapseIt/FaqView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/ui/LapseIt/StartView;->i:Landroid/content/Intent;

    .line 427
    iget-object v0, p0, Lcom/ui/LapseIt/StartView;->i:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/StartView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00c9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 12

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 115
    invoke-virtual {p0}, Lcom/ui/LapseIt/StartView;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lpl/polidea/imagemanager/ImageManager;->init(Landroid/app/Application;)V

    .line 116
    invoke-static {v9}, Lpl/polidea/imagemanager/ImageManager;->setLoggingEnabled(Z)V

    .line 118
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    new-instance v4, Lcom/ui/LapseIt/StartView$3;

    invoke-direct {v4, p0}, Lcom/ui/LapseIt/StartView$3;-><init>(Lcom/ui/LapseIt/StartView;)V

    .line 123
    const-wide/16 v5, 0x3e8

    .line 118
    invoke-virtual {v3, v4, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 125
    sput-boolean v7, Lui/utils/ImageUtils;->flipX:Z

    .line 126
    sput-boolean v7, Lui/utils/ImageUtils;->flipY:Z

    .line 128
    const v3, 0x7f03002a

    invoke-virtual {p0, v3}, Lcom/ui/LapseIt/StartView;->setContentView(I)V

    .line 130
    invoke-virtual {p0}, Lcom/ui/LapseIt/StartView;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/ui/LapseIt/StartView;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LapseItSchedule"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/ui/LapseIt/StartView;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/ui/LapseIt/capture/CaptureView;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v3, p0, Lcom/ui/LapseIt/StartView;->i:Landroid/content/Intent;

    .line 135
    iget-object v3, p0, Lcom/ui/LapseIt/StartView;->i:Landroid/content/Intent;

    const-string v4, "LapseItSchedule"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    iget-object v3, p0, Lcom/ui/LapseIt/StartView;->i:Landroid/content/Intent;

    invoke-virtual {p0, v3, v9}, Lcom/ui/LapseIt/StartView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-static {p0}, Lcom/ui/LapseIt/RecentChanges;->setupRecentChanges(Lcom/ui/LapseIt/StartView;)V

    .line 143
    const v3, 0x7f0b008f

    invoke-virtual {p0, v3}, Lcom/ui/LapseIt/StartView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/ui/LapseIt/StartView;->newCaptureButton:Landroid/widget/ImageView;

    .line 144
    const v3, 0x7f0b0090

    invoke-virtual {p0, v3}, Lcom/ui/LapseIt/StartView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/ui/LapseIt/StartView;->listCapturedButton:Landroid/widget/ImageView;

    .line 145
    const v3, 0x7f0b0091

    invoke-virtual {p0, v3}, Lcom/ui/LapseIt/StartView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/ui/LapseIt/StartView;->settingsButton:Landroid/widget/ImageView;

    .line 146
    const v3, 0x7f0b0092

    invoke-virtual {p0, v3}, Lcom/ui/LapseIt/StartView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/ui/LapseIt/StartView;->fullVersionButton:Landroid/widget/ImageView;

    .line 148
    const v3, 0x7f0b009a

    invoke-virtual {p0, v3}, Lcom/ui/LapseIt/StartView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/ui/LapseIt/StartView;->tutorialButton:Landroid/widget/ImageView;

    .line 150
    const v3, 0x7f0b0094

    invoke-virtual {p0, v3}, Lcom/ui/LapseIt/StartView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/ui/LapseIt/StartView;->fullVersionIcon:Landroid/widget/ImageView;

    .line 151
    const v3, 0x7f0b0093

    invoke-virtual {p0, v3}, Lcom/ui/LapseIt/StartView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/ui/LapseIt/StartView;->fullVersionText:Landroid/widget/TextView;

    .line 153
    iget-object v3, p0, Lcom/ui/LapseIt/StartView;->newCaptureButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/ui/LapseIt/StartView;->btn_onClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v3, p0, Lcom/ui/LapseIt/StartView;->listCapturedButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/ui/LapseIt/StartView;->btn_onClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v3, p0, Lcom/ui/LapseIt/StartView;->settingsButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/ui/LapseIt/StartView;->btn_onClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v3, p0, Lcom/ui/LapseIt/StartView;->fullVersionButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/ui/LapseIt/StartView;->btn_onClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v3, p0, Lcom/ui/LapseIt/StartView;->tutorialButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/ui/LapseIt/StartView;->btn_onClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    const v3, 0x7f0b0098

    invoke-virtual {p0, v3}, Lcom/ui/LapseIt/StartView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/ui/LapseIt/StartView;->versionText:Landroid/widget/TextView;

    .line 162
    const v3, 0x7f0b0095

    invoke-virtual {p0, v3}, Lcom/ui/LapseIt/StartView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 163
    .local v1, mobiletext:Landroid/widget/TextView;
    const v3, 0x7f0b0096

    invoke-virtual {p0, v3}, Lcom/ui/LapseIt/StartView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 165
    .local v0, gopro:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 167
    .local v2, mobiletextlayout:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {p0}, Lcom/ui/LapseIt/Main;->isFullVersion(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 168
    iget-object v3, p0, Lcom/ui/LapseIt/StartView;->fullVersionIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    iget-object v3, p0, Lcom/ui/LapseIt/StartView;->fullVersionButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    iget-object v3, p0, Lcom/ui/LapseIt/StartView;->fullVersionText:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v3, p0, Lcom/ui/LapseIt/StartView;->versionText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ui/LapseIt/StartView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08009f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " \u2022 Lapse It "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/ui/LapseIt/Main;->versionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v3, p0, Lcom/ui/LapseIt/StartView;->settingsButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    invoke-virtual {v2, v10, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 174
    iget-object v3, p0, Lcom/ui/LapseIt/StartView;->settingsButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    invoke-virtual {v2, v11, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 175
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/ui/LapseIt/StartView;->settingsButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 176
    invoke-virtual {p0}, Lcom/ui/LapseIt/StartView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080116

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    iget-boolean v3, p0, Lcom/ui/LapseIt/StartView;->backFromTutorial:Z

    if-eqz v3, :cond_0

    .line 191
    iput-boolean v7, p0, Lcom/ui/LapseIt/StartView;->backFromTutorial:Z

    goto/16 :goto_0

    .line 178
    :cond_2
    const-string v3, "resolution"

    const-string v4, "240p"

    invoke-static {p0, v3, v4}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v3, p0, Lcom/ui/LapseIt/StartView;->versionText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Lapse It "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ui/LapseIt/Main;->versionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u2022 Lite"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v3, p0, Lcom/ui/LapseIt/StartView;->fullVersionButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    invoke-virtual {v2, v10, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 182
    iget-object v3, p0, Lcom/ui/LapseIt/StartView;->fullVersionButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    invoke-virtual {v2, v11, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 183
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/ui/LapseIt/StartView;->fullVersionButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 184
    invoke-virtual {p0}, Lcom/ui/LapseIt/StartView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080115

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 70
    invoke-static {}, Lcom/ui/LapseIt/Main;->getFlurryId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 198
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 199
    return-void
.end method
