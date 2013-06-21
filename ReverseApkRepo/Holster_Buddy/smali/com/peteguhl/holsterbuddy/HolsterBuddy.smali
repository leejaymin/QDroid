.class public Lcom/peteguhl/holsterbuddy/HolsterBuddy;
.super Landroid/app/Activity;
.source "HolsterBuddy.java"


# static fields
.field public static final NOTIFICATION_NOISY:I = 0x2

.field public static final NOTIFICATION_SILENT:I = 0x0

.field public static final NOTIFICATION_VIBRATE:I = 0x1

.field public static final PREFS_NAME:Ljava/lang/String; = "MyPrefsFile"


# instance fields
.field dockEnabledButton:Landroid/widget/RadioButton;

.field holsteredNotificationType:I

.field private mConnection:Landroid/content/ServiceConnection;

.field private mService:Lcom/peteguhl/holsterbuddy/AVRSInterface;

.field magHolsterEnabledButton:Landroid/widget/RadioButton;

.field magneticHolsterEnabled:Z

.field notificationNoisy:Landroid/widget/RadioButton;

.field notificationSilent:Landroid/widget/RadioButton;

.field notificationVibrate:Landroid/widget/RadioButton;

.field serviceEnabled:Z

.field serviceEnabledBox:Landroid/widget/CheckBox;

.field silent:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->mService:Lcom/peteguhl/holsterbuddy/AVRSInterface;

    .line 46
    new-instance v0, Lcom/peteguhl/holsterbuddy/HolsterBuddy$1;

    invoke-direct {v0, p0}, Lcom/peteguhl/holsterbuddy/HolsterBuddy$1;-><init>(Lcom/peteguhl/holsterbuddy/HolsterBuddy;)V

    iput-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->mConnection:Landroid/content/ServiceConnection;

    .line 20
    return-void
.end method

.method static synthetic access$0(Lcom/peteguhl/holsterbuddy/HolsterBuddy;Lcom/peteguhl/holsterbuddy/AVRSInterface;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->mService:Lcom/peteguhl/holsterbuddy/AVRSInterface;

    return-void
.end method

.method static synthetic access$1(Lcom/peteguhl/holsterbuddy/HolsterBuddy;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->nowThatWeAreBinded()V

    return-void
.end method

.method static synthetic access$2(Lcom/peteguhl/holsterbuddy/HolsterBuddy;)Lcom/peteguhl/holsterbuddy/AVRSInterface;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->mService:Lcom/peteguhl/holsterbuddy/AVRSInterface;

    return-object v0
.end method

.method static synthetic access$3(Lcom/peteguhl/holsterbuddy/HolsterBuddy;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->makeRadioButtonsVisibile()V

    return-void
.end method

.method static synthetic access$4(Lcom/peteguhl/holsterbuddy/HolsterBuddy;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->makeRadioButtonsInvisibile()V

    return-void
.end method

.method private makeRadioButtonsInvisibile()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 60
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->dockEnabledButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->magHolsterEnabledButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationNoisy:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationVibrate:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationSilent:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 65
    return-void
.end method

.method private makeRadioButtonsVisibile()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationNoisy:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationVibrate:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationSilent:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 77
    return-void
.end method

.method private nowThatWeAreBinded()V
    .locals 3

    .prologue
    .line 201
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->serviceEnabledBox:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 203
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->serviceEnabledBox:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->serviceEnabled:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 204
    invoke-direct {p0}, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->setButtonActions()V

    .line 206
    iget-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->serviceEnabled:Z

    if-nez v1, :cond_0

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->mService:Lcom/peteguhl/holsterbuddy/AVRSInterface;

    invoke-interface {v1}, Lcom/peteguhl/holsterbuddy/AVRSInterface;->stopService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    invoke-direct {p0}, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->makeRadioButtonsInvisibile()V

    .line 229
    :cond_0
    return-void

    .line 221
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 223
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private setButtonActions()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 237
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->serviceEnabledBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/peteguhl/holsterbuddy/HolsterBuddy$2;

    invoke-direct {v1, p0}, Lcom/peteguhl/holsterbuddy/HolsterBuddy$2;-><init>(Lcom/peteguhl/holsterbuddy/HolsterBuddy;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 292
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->magHolsterEnabledButton:Landroid/widget/RadioButton;

    new-instance v1, Lcom/peteguhl/holsterbuddy/HolsterBuddy$3;

    invoke-direct {v1, p0}, Lcom/peteguhl/holsterbuddy/HolsterBuddy$3;-><init>(Lcom/peteguhl/holsterbuddy/HolsterBuddy;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 310
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->dockEnabledButton:Landroid/widget/RadioButton;

    new-instance v1, Lcom/peteguhl/holsterbuddy/HolsterBuddy$4;

    invoke-direct {v1, p0}, Lcom/peteguhl/holsterbuddy/HolsterBuddy$4;-><init>(Lcom/peteguhl/holsterbuddy/HolsterBuddy;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 324
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationSilent:Landroid/widget/RadioButton;

    new-instance v1, Lcom/peteguhl/holsterbuddy/HolsterBuddy$5;

    invoke-direct {v1, p0}, Lcom/peteguhl/holsterbuddy/HolsterBuddy$5;-><init>(Lcom/peteguhl/holsterbuddy/HolsterBuddy;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 343
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationVibrate:Landroid/widget/RadioButton;

    new-instance v1, Lcom/peteguhl/holsterbuddy/HolsterBuddy$6;

    invoke-direct {v1, p0}, Lcom/peteguhl/holsterbuddy/HolsterBuddy$6;-><init>(Lcom/peteguhl/holsterbuddy/HolsterBuddy;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 362
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationNoisy:Landroid/widget/RadioButton;

    new-instance v1, Lcom/peteguhl/holsterbuddy/HolsterBuddy$7;

    invoke-direct {v1, p0}, Lcom/peteguhl/holsterbuddy/HolsterBuddy$7;-><init>(Lcom/peteguhl/holsterbuddy/HolsterBuddy;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 380
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->serviceEnabledBox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->serviceEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 381
    iget-boolean v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->serviceEnabled:Z

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->dockEnabledButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 383
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->magHolsterEnabledButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 384
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationNoisy:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 385
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationVibrate:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 386
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationSilent:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 388
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->dockEnabledButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 389
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->magHolsterEnabledButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 390
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationNoisy:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 391
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationVibrate:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 392
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationSilent:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 410
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->dockEnabledButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 396
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->magHolsterEnabledButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 397
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationNoisy:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 398
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationVibrate:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 399
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationSilent:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 401
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->dockEnabledButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 402
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->magHolsterEnabledButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 403
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationNoisy:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 404
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationVibrate:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 405
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationSilent:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setClickable(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const/high16 v3, 0x7f03

    invoke-virtual {p0, v3}, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->setContentView(I)V

    .line 93
    const v3, 0x7f050004

    invoke-virtual {p0, v3}, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->serviceEnabledBox:Landroid/widget/CheckBox;

    .line 94
    const v3, 0x7f050016

    invoke-virtual {p0, v3}, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->magHolsterEnabledButton:Landroid/widget/RadioButton;

    .line 95
    const v3, 0x7f050019

    invoke-virtual {p0, v3}, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->dockEnabledButton:Landroid/widget/RadioButton;

    .line 96
    const v3, 0x7f05000d

    invoke-virtual {p0, v3}, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationSilent:Landroid/widget/RadioButton;

    .line 97
    const v3, 0x7f05000a

    invoke-virtual {p0, v3}, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationVibrate:Landroid/widget/RadioButton;

    .line 98
    const v3, 0x7f050010

    invoke-virtual {p0, v3}, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->notificationNoisy:Landroid/widget/RadioButton;

    .line 102
    const-string v3, "MyPrefsFile"

    invoke-virtual {p0, v3, v4}, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 103
    .local v1, settings:Landroid/content/SharedPreferences;
    const-string v3, "silentMode"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->silent:Z

    .line 105
    const-string v3, "serviceEnabled"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->serviceEnabled:Z

    .line 106
    const-string v3, "magneticHolsterEnabled"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->magneticHolsterEnabled:Z

    .line 107
    const-string v3, "holsteredNotificationType"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->holsteredNotificationType:I

    .line 110
    iget-boolean v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->magneticHolsterEnabled:Z

    if-eqz v3, :cond_1

    .line 111
    iget-object v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->dockEnabledButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 124
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .local v2, svc:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 126
    iget-object v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2, v3, v5}, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 129
    iget-object v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->mService:Lcom/peteguhl/holsterbuddy/AVRSInterface;

    if-eqz v3, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->nowThatWeAreBinded()V

    .line 132
    :try_start_0
    iget-object v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->mService:Lcom/peteguhl/holsterbuddy/AVRSInterface;

    invoke-interface {v3}, Lcom/peteguhl/holsterbuddy/AVRSInterface;->refreshSettings()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->serviceEnabledBox:Landroid/widget/CheckBox;

    iget-boolean v4, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->serviceEnabled:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 148
    invoke-direct {p0}, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->setButtonActions()V

    .line 150
    return-void

    .line 114
    .end local v2           #svc:Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->dockEnabledButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 133
    .restart local v2       #svc:Landroid/content/Intent;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 135
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 193
    return-void
.end method

.method saveSettings()V
    .locals 5

    .prologue
    .line 153
    const-string v3, "MyPrefsFile"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 154
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 155
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "silentMode"

    iget-boolean v4, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->silent:Z

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 156
    const-string v3, "serviceEnabled"

    iget-boolean v4, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->serviceEnabled:Z

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 157
    const-string v3, "magneticHolsterEnabled"

    iget-boolean v4, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->magneticHolsterEnabled:Z

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 158
    const-string v3, "holsteredNotificationType"

    iget v4, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->holsteredNotificationType:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 162
    :try_start_0
    iget-object v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddy;->mService:Lcom/peteguhl/holsterbuddy/AVRSInterface;

    invoke-interface {v3}, Lcom/peteguhl/holsterbuddy/AVRSInterface;->refreshSettings()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 165
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
