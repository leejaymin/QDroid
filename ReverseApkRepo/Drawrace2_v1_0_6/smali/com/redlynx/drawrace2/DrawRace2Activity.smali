.class public Lcom/redlynx/drawrace2/DrawRace2Activity;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "DrawRace2Activity.java"

# interfaces
.implements Lcom/eamobile/download/IDownloadActivity;


# static fields
.field public static final DIALOG_APPRATER_ID:I = 0x2

.field public static final DIALOG_CONFIRM_EXIT:I = 0x8

.field static final DIALOG_CONFIRM_RESET_ID:I = 0x1

.field static final DIALOG_CUSTOM_MESSAGE:I = 0x4

.field public static final DIALOG_IAP_COMPLETED:I = 0x6

.field public static final DIALOG_IAP_CONFIRM:I = 0x3

.field static final DIALOG_LOADING:I = 0x5

.field public static final DIALOG_PUSH_NOTIFICATION:I = 0x7

.field static final DIALOG_SETTINGS_ID:I = 0x0

.field private static final ITEM_DIALOG_MUSIC:I = 0x0

.field private static final ITEM_DIALOG_RESET:I = 0x1

.field private static checkedDownloadClient:Z

.field private static initializationCompleted:Z

.field private static smDialogItems:[Z


# instance fields
.field private downloadActivity:Lcom/eamobile/download/DownloadActivity;

.field handler:Landroid/os/Handler;

.field public mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

.field private notificationText:Ljava/lang/String;

.field pushManager:Lcom/arellomobile/android/push/PushManager;

.field sysData_totalMemory:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [Z

    sput-object v0, Lcom/redlynx/drawrace2/DrawRace2Activity;->smDialogItems:[Z

    .line 97
    sput-boolean v1, Lcom/redlynx/drawrace2/DrawRace2Activity;->checkedDownloadClient:Z

    .line 98
    sput-boolean v1, Lcom/redlynx/drawrace2/DrawRace2Activity;->initializationCompleted:Z

    .line 111
    const-string v0, "cocos2d"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 116
    const-string v0, "cocosdenshion"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 121
    const-string v0, "dr2bullet"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 126
    const-string v0, "dr2native"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    .line 544
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Activity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()[Z
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2Activity;->smDialogItems:[Z

    return-object v0
.end method

.method static synthetic access$100(Lcom/redlynx/drawrace2/DrawRace2Activity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/redlynx/drawrace2/DrawRace2Activity;->createGameGLView()V

    return-void
.end method

.method private createGameGLView()V
    .locals 2

    .prologue
    .line 607
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/redlynx/drawrace2/DrawRace2Activity;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 608
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/redlynx/drawrace2/DrawRace2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 609
    .local v0, editText:Landroid/widget/EditText;
    iget-object v1, p0, Lcom/redlynx/drawrace2/DrawRace2Activity;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setTextField(Landroid/widget/TextView;)V

    .line 614
    iget-object v1, p0, Lcom/redlynx/drawrace2/DrawRace2Activity;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {p0, v1}, Lcom/redlynx/drawrace2/DrawRace2Activity;->setContentView(Landroid/view/View;)V

    .line 619
    invoke-static {p0}, Lutil/googleiap/DrawRace2Purchase;->onCreate(Landroid/app/Activity;)V

    .line 620
    invoke-static {p0}, Lcom/redlynx/drawrace2/DrawRace2WebViewActivity;->initialize(Landroid/app/Activity;)V

    .line 621
    invoke-static {p0}, Lcom/redlynx/drawrace2/DrawRace2TextInput;->initialize(Landroid/app/Activity;)V

    .line 623
    invoke-static {p0}, Lutil/google_market/DrawRace2AppRater;->initialize(Landroid/app/Activity;)V

    .line 626
    invoke-static {p0}, Lcom/redlynx/drawrace2/DrawRace2Video;->init(Landroid/app/Activity;)V

    .line 629
    sget-boolean v1, Lcom/redlynx/drawrace2/DrawRace2Activity;->initializationCompleted:Z

    if-nez v1, :cond_0

    .line 630
    const/4 v1, 0x1

    sput-boolean v1, Lcom/redlynx/drawrace2/DrawRace2Activity;->initializationCompleted:Z

    .line 636
    :cond_0
    return-void
.end method

.method private createTempGLView()V
    .locals 2

    .prologue
    .line 576
    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, p0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 580
    .local v0, tempView:Landroid/opengl/GLSurfaceView;
    new-instance v1, Lcom/redlynx/drawrace2/DrawRace2Activity$24;

    invoke-direct {v1, p0}, Lcom/redlynx/drawrace2/DrawRace2Activity$24;-><init>(Lcom/redlynx/drawrace2/DrawRace2Activity;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 597
    invoke-virtual {p0, v0}, Lcom/redlynx/drawrace2/DrawRace2Activity;->setContentView(Landroid/view/View;)V

    .line 598
    return-void
.end method

.method private setAssetPath(Ljava/lang/String;Z)V
    .locals 1
    .parameter "assetPath"
    .parameter "enabledSdCard"

    .prologue
    .line 639
    invoke-static {p1, p2}, Lcom/redlynx/drawrace2/DrawRace2Native;->setAssetPath(Ljava/lang/String;Z)V

    .line 642
    if-eqz p2, :cond_0

    .line 643
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/cocos2dx/lib/ICocos2dx;->assetPath:Ljava/io/File;

    .line 647
    :cond_0
    invoke-static {p1}, Lcom/redlynx/drawrace2/DrawRace2Video;->setAssetPath(Ljava/lang/String;)V

    .line 649
    return-void
.end method


# virtual methods
.method public checkMessage(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 658
    if-eqz p1, :cond_0

    .line 660
    const-string v0, "PUSH_RECEIVE_EVENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notify: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "PUSH_RECEIVE_EVENT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/redlynx/drawrace2/DrawRace2Activity;->showMessage(Ljava/lang/String;)V

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    const-string v0, "REGISTER_EVENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 671
    invoke-static {p0}, Lcom/google/android/c2dm/C2DMessaging;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/redlynx/drawrace2/DrawRace2Native;->onPushNotifyToken(Ljava/lang/String;)V

    goto :goto_0

    .line 673
    :cond_2
    const-string v0, "UNREGISTER_EVENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 677
    const-string v0, "REGISTER_ERROR_EVENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0x400

    const/16 v7, 0x80

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 142
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 148
    invoke-virtual {p0}, Lcom/redlynx/drawrace2/DrawRace2Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 149
    invoke-virtual {p0}, Lcom/redlynx/drawrace2/DrawRace2Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 151
    invoke-virtual {p0, v6}, Lcom/redlynx/drawrace2/DrawRace2Activity;->setRequestedOrientation(I)V

    .line 161
    sget-boolean v4, Lcom/redlynx/drawrace2/DrawRace2Activity;->checkedDownloadClient:Z

    if-nez v4, :cond_1

    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/Android/data/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, dataPath:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "dev."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/redlynx/drawrace2/DrawRace2Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/files"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, tempPath:Ljava/lang/String;
    invoke-direct {p0, v3, v5}, Lcom/redlynx/drawrace2/DrawRace2Activity;->setAssetPath(Ljava/lang/String;Z)V

    .line 167
    invoke-static {p0}, Lcom/redlynx/drawrace2/DrawRace2Native;->init(Landroid/app/Activity;)V

    .line 174
    invoke-virtual {p0}, Lcom/redlynx/drawrace2/DrawRace2Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, packageName:Ljava/lang/String;
    invoke-super {p0, v2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->setPackageName(Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/addthis/core/Config;->setShouldUseFacebookConnect(Z)V

    .line 182
    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v4

    const-string v7, "157284461006278"

    invoke-virtual {v4, v7}, Lcom/addthis/core/Config;->setFacebookAppId(Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v4

    const-string v7, "ra-4f605d4c5ec29715"

    invoke-virtual {v4, v7}, Lcom/addthis/core/Config;->setAddThisPubId(Ljava/lang/String;)V

    .line 186
    if-nez p1, :cond_0

    move v4, v5

    :goto_0
    sput-boolean v4, Lcom/arellomobile/android/push/PushManager;->BUNDLE_NULL:Z

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/redlynx/drawrace2/DrawRace2Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/files"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, absolutePath:Ljava/lang/String;
    invoke-direct {p0}, Lcom/redlynx/drawrace2/DrawRace2Activity;->createTempGLView()V

    .line 199
    new-instance v4, Lcom/eamobile/download/DownloadActivity;

    invoke-direct {v4, p0}, Lcom/eamobile/download/DownloadActivity;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/redlynx/drawrace2/DrawRace2Activity;->downloadActivity:Lcom/eamobile/download/DownloadActivity;

    .line 200
    iget-object v4, p0, Lcom/redlynx/drawrace2/DrawRace2Activity;->downloadActivity:Lcom/eamobile/download/DownloadActivity;

    invoke-virtual {v4, v0, v6}, Lcom/eamobile/download/DownloadActivity;->setAssetPath(Ljava/lang/String;Z)V

    .line 205
    sput-boolean v5, Lcom/redlynx/drawrace2/DrawRace2Activity;->checkedDownloadClient:Z

    .line 213
    .end local v0           #absolutePath:Ljava/lang/String;
    .end local v1           #dataPath:Ljava/lang/String;
    .end local v2           #packageName:Ljava/lang/String;
    .end local v3           #tempPath:Ljava/lang/String;
    :goto_1
    return-void

    .restart local v1       #dataPath:Ljava/lang/String;
    .restart local v2       #packageName:Ljava/lang/String;
    .restart local v3       #tempPath:Ljava/lang/String;
    :cond_0
    move v4, v6

    .line 186
    goto :goto_0

    .line 207
    .end local v1           #dataPath:Ljava/lang/String;
    .end local v2           #packageName:Ljava/lang/String;
    .end local v3           #tempPath:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/redlynx/drawrace2/DrawRace2Activity;->createGameGLView()V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .parameter "id"

    .prologue
    .line 312
    if-nez p1, :cond_0

    .line 313
    sget-object v8, Lcom/redlynx/drawrace2/DrawRace2Activity;->smDialogItems:[Z

    const/4 v9, 0x0

    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2Native;->isMusicEnabled()Z

    move-result v10

    aput-boolean v10, v8, v9

    .line 314
    sget-object v8, Lcom/redlynx/drawrace2/DrawRace2Activity;->smDialogItems:[Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-boolean v10, v8, v9

    .line 315
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f08031f

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/high16 v9, 0x7f06

    sget-object v10, Lcom/redlynx/drawrace2/DrawRace2Activity;->smDialogItems:[Z

    new-instance v11, Lcom/redlynx/drawrace2/DrawRace2Activity$2;

    invoke-direct {v11, p0}, Lcom/redlynx/drawrace2/DrawRace2Activity$2;-><init>(Lcom/redlynx/drawrace2/DrawRace2Activity;)V

    invoke-virtual {v8, v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f080320

    new-instance v10, Lcom/redlynx/drawrace2/DrawRace2Activity$1;

    invoke-direct {v10, p0}, Lcom/redlynx/drawrace2/DrawRace2Activity$1;-><init>(Lcom/redlynx/drawrace2/DrawRace2Activity;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 332
    .local v1, d:Landroid/app/Dialog;
    new-instance v8, Lcom/redlynx/drawrace2/DrawRace2Activity$3;

    invoke-direct {v8, p0}, Lcom/redlynx/drawrace2/DrawRace2Activity$3;-><init>(Lcom/redlynx/drawrace2/DrawRace2Activity;)V

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 521
    .end local v1           #d:Landroid/app/Dialog;
    :goto_0
    return-object v1

    .line 339
    :cond_0
    const/4 v8, 0x1

    if-ne p1, v8, :cond_1

    .line 340
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f080322

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f080323

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f080320

    new-instance v10, Lcom/redlynx/drawrace2/DrawRace2Activity$5;

    invoke-direct {v10, p0}, Lcom/redlynx/drawrace2/DrawRace2Activity$5;-><init>(Lcom/redlynx/drawrace2/DrawRace2Activity;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f080321

    new-instance v10, Lcom/redlynx/drawrace2/DrawRace2Activity$4;

    invoke-direct {v10, p0}, Lcom/redlynx/drawrace2/DrawRace2Activity$4;-><init>(Lcom/redlynx/drawrace2/DrawRace2Activity;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 356
    :cond_1
    const/4 v8, 0x2

    if-ne p1, v8, :cond_2

    .line 357
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f080325

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f080326

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f080325

    new-instance v10, Lcom/redlynx/drawrace2/DrawRace2Activity$8;

    invoke-direct {v10, p0}, Lcom/redlynx/drawrace2/DrawRace2Activity$8;-><init>(Lcom/redlynx/drawrace2/DrawRace2Activity;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f080327

    new-instance v10, Lcom/redlynx/drawrace2/DrawRace2Activity$7;

    invoke-direct {v10, p0}, Lcom/redlynx/drawrace2/DrawRace2Activity$7;-><init>(Lcom/redlynx/drawrace2/DrawRace2Activity;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f080328

    new-instance v10, Lcom/redlynx/drawrace2/DrawRace2Activity$6;

    invoke-direct {v10, p0}, Lcom/redlynx/drawrace2/DrawRace2Activity$6;-><init>(Lcom/redlynx/drawrace2/DrawRace2Activity;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 373
    :cond_2
    const/4 v8, 0x3

    if-ne p1, v8, :cond_4

    .line 376
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/redlynx/drawrace2/DrawRace2Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 377
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v9, 0x7f030009

    const v8, 0x7f0c0016

    invoke-virtual {p0, v8}, Lcom/redlynx/drawrace2/DrawRace2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v4, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 378
    .local v5, layout:Landroid/view/View;
    const v8, 0x7f0c0017

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 379
    .local v7, title:Landroid/widget/TextView;
    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->getDialogTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    const v8, 0x7f0c0019

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 381
    .local v6, text:Landroid/widget/TextView;
    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->getDialogMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    const v8, 0x7f0c0018

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 383
    .local v3, image:Landroid/widget/ImageView;
    const v8, 0x7f02007f

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 385
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 386
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 388
    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->getDialogPositiveButton()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/redlynx/drawrace2/DrawRace2Activity$9;

    invoke-direct {v9, p0}, Lcom/redlynx/drawrace2/DrawRace2Activity$9;-><init>(Lcom/redlynx/drawrace2/DrawRace2Activity;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 394
    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->getDialogNegativeButton()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 395
    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->getDialogNegativeButton()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/redlynx/drawrace2/DrawRace2Activity$10;

    invoke-direct {v9, p0}, Lcom/redlynx/drawrace2/DrawRace2Activity$10;-><init>(Lcom/redlynx/drawrace2/DrawRace2Activity;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 402
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 403
    .restart local v1       #d:Landroid/app/Dialog;
    new-instance v8, Lcom/redlynx/drawrace2/DrawRace2Activity$11;

    invoke-direct {v8, p0}, Lcom/redlynx/drawrace2/DrawRace2Activity$11;-><init>(Lcom/redlynx/drawrace2/DrawRace2Activity;)V

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 410
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #d:Landroid/app/Dialog;
    .end local v3           #image:Landroid/widget/ImageView;
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    .end local v5           #layout:Landroid/view/View;
    .end local v6           #text:Landroid/widget/TextView;
    .end local v7           #title:Landroid/widget/TextView;
    :cond_4
    const/4 v8, 0x4

    if-ne p1, v8, :cond_9

    .line 411
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 412
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    sget-object v8, Lcom/redlynx/drawrace2/DrawRace2Native;->smFinalTitle:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 413
    sget-object v8, Lcom/redlynx/drawrace2/DrawRace2Native;->smFinalMessage:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 414
    sget-object v8, Lcom/redlynx/drawrace2/DrawRace2Native;->smFinalMessage:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 415
    :cond_5
    sget-object v8, Lcom/redlynx/drawrace2/DrawRace2Native;->smFinalPositiveText:Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 416
    sget-object v8, Lcom/redlynx/drawrace2/DrawRace2Native;->smFinalPositiveText:Ljava/lang/String;

    new-instance v9, Lcom/redlynx/drawrace2/DrawRace2Activity$12;

    invoke-direct {v9, p0}, Lcom/redlynx/drawrace2/DrawRace2Activity$12;-><init>(Lcom/redlynx/drawrace2/DrawRace2Activity;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 427
    :cond_6
    sget-object v8, Lcom/redlynx/drawrace2/DrawRace2Native;->smFinalNegativeText:Ljava/lang/String;

    if-eqz v8, :cond_7

    .line 428
    sget-object v8, Lcom/redlynx/drawrace2/DrawRace2Native;->smFinalNegativeText:Ljava/lang/String;

    new-instance v9, Lcom/redlynx/drawrace2/DrawRace2Activity$13;

    invoke-direct {v9, p0}, Lcom/redlynx/drawrace2/DrawRace2Activity$13;-><init>(Lcom/redlynx/drawrace2/DrawRace2Activity;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 439
    :cond_7
    sget-object v8, Lcom/redlynx/drawrace2/DrawRace2Native;->smFinalNeutralText:Ljava/lang/String;

    if-eqz v8, :cond_8

    .line 440
    sget-object v8, Lcom/redlynx/drawrace2/DrawRace2Native;->smFinalNeutralText:Ljava/lang/String;

    new-instance v9, Lcom/redlynx/drawrace2/DrawRace2Activity$14;

    invoke-direct {v9, p0}, Lcom/redlynx/drawrace2/DrawRace2Activity$14;-><init>(Lcom/redlynx/drawrace2/DrawRace2Activity;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 450
    :cond_8
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 451
    .restart local v1       #d:Landroid/app/Dialog;
    new-instance v8, Lcom/redlynx/drawrace2/DrawRace2Activity$15;

    invoke-direct {v8, p0}, Lcom/redlynx/drawrace2/DrawRace2Activity$15;-><init>(Lcom/redlynx/drawrace2/DrawRace2Activity;)V

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 458
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #d:Landroid/app/Dialog;
    :cond_9
    const/4 v8, 0x5

    if-ne p1, v8, :cond_a

    .line 459
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 460
    .local v2, dialog:Landroid/app/ProgressDialog;
    sget-object v8, Lcom/redlynx/drawrace2/DrawRace2Native;->smFinalTitle:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 461
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 462
    new-instance v8, Lcom/redlynx/drawrace2/DrawRace2Activity$16;

    invoke-direct {v8, p0}, Lcom/redlynx/drawrace2/DrawRace2Activity$16;-><init>(Lcom/redlynx/drawrace2/DrawRace2Activity;)V

    invoke-virtual {v2, v8}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object v1, v2

    .line 468
    goto/16 :goto_0

    .line 469
    .end local v2           #dialog:Landroid/app/ProgressDialog;
    :cond_a
    const/4 v8, 0x6

    if-ne p1, v8, :cond_b

    .line 470
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f08032d

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f08032e

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f08032f

    new-instance v10, Lcom/redlynx/drawrace2/DrawRace2Activity$17;

    invoke-direct {v10, p0}, Lcom/redlynx/drawrace2/DrawRace2Activity$17;-><init>(Lcom/redlynx/drawrace2/DrawRace2Activity;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 477
    .restart local v1       #d:Landroid/app/Dialog;
    new-instance v8, Lcom/redlynx/drawrace2/DrawRace2Activity$18;

    invoke-direct {v8, p0}, Lcom/redlynx/drawrace2/DrawRace2Activity$18;-><init>(Lcom/redlynx/drawrace2/DrawRace2Activity;)V

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 484
    .end local v1           #d:Landroid/app/Dialog;
    :cond_b
    const/4 v8, 0x7

    if-ne p1, v8, :cond_c

    .line 485
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f080330

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/redlynx/drawrace2/DrawRace2Activity;->notificationText:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f080320

    new-instance v10, Lcom/redlynx/drawrace2/DrawRace2Activity$19;

    invoke-direct {v10, p0}, Lcom/redlynx/drawrace2/DrawRace2Activity$19;-><init>(Lcom/redlynx/drawrace2/DrawRace2Activity;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 493
    .restart local v1       #d:Landroid/app/Dialog;
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/redlynx/drawrace2/DrawRace2Activity;->notificationText:Ljava/lang/String;

    .line 494
    new-instance v8, Lcom/redlynx/drawrace2/DrawRace2Activity$20;

    invoke-direct {v8, p0}, Lcom/redlynx/drawrace2/DrawRace2Activity$20;-><init>(Lcom/redlynx/drawrace2/DrawRace2Activity;)V

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 501
    .end local v1           #d:Landroid/app/Dialog;
    :cond_c
    const/16 v8, 0x8

    if-ne p1, v8, :cond_d

    .line 502
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f080331

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f080332

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f080320

    new-instance v10, Lcom/redlynx/drawrace2/DrawRace2Activity$22;

    invoke-direct {v10, p0}, Lcom/redlynx/drawrace2/DrawRace2Activity$22;-><init>(Lcom/redlynx/drawrace2/DrawRace2Activity;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f080321

    new-instance v10, Lcom/redlynx/drawrace2/DrawRace2Activity$21;

    invoke-direct {v10, p0}, Lcom/redlynx/drawrace2/DrawRace2Activity$21;-><init>(Lcom/redlynx/drawrace2/DrawRace2Activity;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 521
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 255
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2Audio;->destroy()V

    .line 256
    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->destroy()V

    .line 257
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->deinit()V

    .line 258
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Activity;->downloadActivity:Lcom/eamobile/download/DownloadActivity;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Activity;->downloadActivity:Lcom/eamobile/download/DownloadActivity;

    invoke-virtual {v0}, Lcom/eamobile/download/DownloadActivity;->onDestroy()V

    .line 261
    :cond_0
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    .line 262
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 301
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 307
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 686
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 687
    invoke-virtual {p0, p1}, Lcom/redlynx/drawrace2/DrawRace2Activity;->setIntent(Landroid/content/Intent;)V

    .line 689
    invoke-virtual {p0, p1}, Lcom/redlynx/drawrace2/DrawRace2Activity;->checkMessage(Landroid/content/Intent;)V

    .line 691
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/redlynx/drawrace2/DrawRace2Activity;->setIntent(Landroid/content/Intent;)V

    .line 692
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 220
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    .line 221
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Activity;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Activity;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onPause()V

    .line 223
    :cond_0
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2Audio;->onPause()V

    .line 224
    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->stop()V

    .line 225
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2Native;->openPauseMenu()V

    .line 226
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 283
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onRestart()V

    .line 284
    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->restart()V

    .line 285
    return-void
.end method

.method public onResult(Ljava/lang/String;I)V
    .locals 4
    .parameter "assetPath"
    .parameter "result"

    .prologue
    .line 547
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 552
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/redlynx/drawrace2/DrawRace2Activity;->setAssetPath(Ljava/lang/String;Z)V

    .line 553
    new-instance v0, Lcom/redlynx/drawrace2/DrawRace2Activity$23;

    invoke-direct {v0, p0}, Lcom/redlynx/drawrace2/DrawRace2Activity$23;-><init>(Lcom/redlynx/drawrace2/DrawRace2Activity;)V

    .line 560
    .local v0, displayUpdate:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/redlynx/drawrace2/DrawRace2Activity;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 561
    iget-object v1, p0, Lcom/redlynx/drawrace2/DrawRace2Activity;->downloadActivity:Lcom/eamobile/download/DownloadActivity;

    invoke-virtual {v1}, Lcom/eamobile/download/DownloadActivity;->destroyDownloadActvity()V

    .line 568
    .end local v0           #displayUpdate:Ljava/lang/Runnable;
    :goto_0
    iget-object v1, p0, Lcom/redlynx/drawrace2/DrawRace2Activity;->downloadActivity:Lcom/eamobile/download/DownloadActivity;

    invoke-virtual {v1}, Lcom/eamobile/download/DownloadActivity;->destroyDownloadActvity()V

    .line 569
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/redlynx/drawrace2/DrawRace2Activity;->downloadActivity:Lcom/eamobile/download/DownloadActivity;

    .line 570
    return-void

    .line 565
    :cond_0
    invoke-virtual {p0}, Lcom/redlynx/drawrace2/DrawRace2Activity;->finish()V

    .line 566
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/redlynx/drawrace2/DrawRace2Activity;->downloadActivity:Lcom/eamobile/download/DownloadActivity;

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/redlynx/drawrace2/DrawRace2Activity;->downloadActivity:Lcom/eamobile/download/DownloadActivity;

    invoke-virtual {v1}, Lcom/eamobile/download/DownloadActivity;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :cond_0
    :goto_0
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    .line 242
    iget-object v1, p0, Lcom/redlynx/drawrace2/DrawRace2Activity;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    if-eqz v1, :cond_1

    .line 243
    iget-object v1, p0, Lcom/redlynx/drawrace2/DrawRace2Activity;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onResume()V

    .line 244
    :cond_1
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2Audio;->onResume()V

    .line 246
    const/4 v1, 0x0

    invoke-static {v1}, Lutil/google_market/DrawRace2AppRater;->onEvent(I)V

    .line 248
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 269
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStart()V

    .line 272
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->setReportLocation(Z)V

    .line 273
    const-string v0, "S6FYWA5554MHBGNZMD5M"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 292
    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->stop()V

    .line 294
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 297
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStop()V

    .line 298
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 527
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onWindowFocusChanged(Z)V

    .line 528
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Activity;->downloadActivity:Lcom/eamobile/download/DownloadActivity;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Activity;->downloadActivity:Lcom/eamobile/download/DownloadActivity;

    invoke-virtual {v0}, Lcom/eamobile/download/DownloadActivity;->onResume()V

    .line 532
    :cond_0
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 700
    iput-object p1, p0, Lcom/redlynx/drawrace2/DrawRace2Activity;->notificationText:Ljava/lang/String;

    .line 701
    new-instance v0, Lcom/redlynx/drawrace2/DrawRace2Activity$25;

    invoke-direct {v0, p0}, Lcom/redlynx/drawrace2/DrawRace2Activity$25;-><init>(Lcom/redlynx/drawrace2/DrawRace2Activity;)V

    invoke-virtual {p0, v0}, Lcom/redlynx/drawrace2/DrawRace2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 708
    return-void
.end method

.method public startDownloadActivity(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    .line 541
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Activity;->downloadActivity:Lcom/eamobile/download/DownloadActivity;

    invoke-virtual {p0}, Lcom/redlynx/drawrace2/DrawRace2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p0, p0, v1, p1}, Lcom/eamobile/download/DownloadActivity;->init(Landroid/app/Activity;Lcom/eamobile/download/IDownloadActivity;Landroid/content/Context;Ljava/lang/Object;)V

    .line 542
    return-void
.end method
