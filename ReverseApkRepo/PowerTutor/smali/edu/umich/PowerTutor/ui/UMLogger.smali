.class public Ledu/umich/PowerTutor/ui/UMLogger;
.super Landroid/app/Activity;
.source "UMLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;
    }
.end annotation


# static fields
.field public static final CURRENT_VERSION:Ljava/lang/String; = "1.2"

.field private static final DIALOG_NOT_RUNNING_ON_STARTUP:I = 0x4

.field private static final DIALOG_RUNNING_ON_STARTUP:I = 0x3

.field private static final DIALOG_START_SENDING:I = 0x0

.field private static final DIALOG_STOP_SENDING:I = 0x1

.field private static final DIALOG_TOS:I = 0x2

.field private static final DIALOG_UNKNOWN_PHONE:I = 0x5

.field private static final MENU_APP_RATING:I = 0x2

.field private static final MENU_PREFERENCES:I = 0x0

.field private static final MENU_SAVE_LOG:I = 0x1

.field public static final SERVER_IP:Ljava/lang/String; = "spidermonkey.eecs.umich.edu"

.field public static final SERVER_PORT:I = 0x1454

.field private static final TAG:Ljava/lang/String; = "UMLogger"


# instance fields
.field private appViewerButton:Landroid/widget/Button;

.field private appViewerButtonListener:Landroid/view/View$OnClickListener;

.field private conn:Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;

.field private counterService:Ledu/umich/PowerTutor/service/ICounterService;

.field private helpButton:Landroid/widget/Button;

.field private helpButtonListener:Landroid/view/View$OnClickListener;

.field private prefs:Landroid/content/SharedPreferences;

.field private scaleText:Landroid/widget/TextView;

.field private serviceIntent:Landroid/content/Intent;

.field private serviceStartButton:Landroid/widget/Button;

.field private serviceStartButtonListener:Landroid/view/View$OnClickListener;

.field private sysViewerButton:Landroid/widget/Button;

.field private sysViewerButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 293
    new-instance v0, Ledu/umich/PowerTutor/ui/UMLogger$1;

    invoke-direct {v0, p0}, Ledu/umich/PowerTutor/ui/UMLogger$1;-><init>(Ledu/umich/PowerTutor/ui/UMLogger;)V

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger;->appViewerButtonListener:Landroid/view/View$OnClickListener;

    .line 301
    new-instance v0, Ledu/umich/PowerTutor/ui/UMLogger$2;

    invoke-direct {v0, p0}, Ledu/umich/PowerTutor/ui/UMLogger$2;-><init>(Ledu/umich/PowerTutor/ui/UMLogger;)V

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger;->sysViewerButtonListener:Landroid/view/View$OnClickListener;

    .line 309
    new-instance v0, Ledu/umich/PowerTutor/ui/UMLogger$3;

    invoke-direct {v0, p0}, Ledu/umich/PowerTutor/ui/UMLogger$3;-><init>(Ledu/umich/PowerTutor/ui/UMLogger;)V

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger;->serviceStartButtonListener:Landroid/view/View$OnClickListener;

    .line 350
    new-instance v0, Ledu/umich/PowerTutor/ui/UMLogger$4;

    invoke-direct {v0, p0}, Ledu/umich/PowerTutor/ui/UMLogger$4;-><init>(Ledu/umich/PowerTutor/ui/UMLogger;)V

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger;->helpButtonListener:Landroid/view/View$OnClickListener;

    .line 69
    return-void
.end method

.method static synthetic access$0(Ledu/umich/PowerTutor/ui/UMLogger;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger;->serviceStartButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1(Ledu/umich/PowerTutor/ui/UMLogger;)Ledu/umich/PowerTutor/service/ICounterService;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger;->counterService:Ledu/umich/PowerTutor/service/ICounterService;

    return-object v0
.end method

.method static synthetic access$2(Ledu/umich/PowerTutor/ui/UMLogger;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger;->serviceIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$3(Ledu/umich/PowerTutor/ui/UMLogger;)Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger;->conn:Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;

    return-object v0
.end method

.method static synthetic access$4(Ledu/umich/PowerTutor/ui/UMLogger;Ledu/umich/PowerTutor/service/ICounterService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/UMLogger;->counterService:Ledu/umich/PowerTutor/service/ICounterService;

    return-void
.end method

.method static synthetic access$5(Ledu/umich/PowerTutor/ui/UMLogger;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger;->appViewerButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$6(Ledu/umich/PowerTutor/ui/UMLogger;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger;->sysViewerButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$7(Ledu/umich/PowerTutor/ui/UMLogger;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/UMLogger;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Ledu/umich/PowerTutor/ui/UMLogger;->prefs:Landroid/content/SharedPreferences;

    .line 93
    new-instance v1, Landroid/content/Intent;

    const-class v2, Ledu/umich/PowerTutor/service/UMLoggerService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Ledu/umich/PowerTutor/ui/UMLogger;->serviceIntent:Landroid/content/Intent;

    .line 94
    new-instance v1, Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;-><init>(Ledu/umich/PowerTutor/ui/UMLogger;Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;)V

    iput-object v1, p0, Ledu/umich/PowerTutor/ui/UMLogger;->conn:Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;

    .line 96
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Ledu/umich/PowerTutor/ui/UMLogger;->setContentView(I)V

    .line 98
    const/high16 v1, 0x7f05

    const v2, 0x1090008

    .line 97
    invoke-static {p0, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 100
    .local v0, adapterxaxis:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<*>;"
    const v1, 0x1090009

    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 102
    const v1, 0x7f080004

    invoke-virtual {p0, v1}, Ledu/umich/PowerTutor/ui/UMLogger;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Ledu/umich/PowerTutor/ui/UMLogger;->serviceStartButton:Landroid/widget/Button;

    .line 103
    const v1, 0x7f080005

    invoke-virtual {p0, v1}, Ledu/umich/PowerTutor/ui/UMLogger;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Ledu/umich/PowerTutor/ui/UMLogger;->appViewerButton:Landroid/widget/Button;

    .line 104
    const v1, 0x7f080006

    invoke-virtual {p0, v1}, Ledu/umich/PowerTutor/ui/UMLogger;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Ledu/umich/PowerTutor/ui/UMLogger;->sysViewerButton:Landroid/widget/Button;

    .line 105
    const v1, 0x7f080007

    invoke-virtual {p0, v1}, Ledu/umich/PowerTutor/ui/UMLogger;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Ledu/umich/PowerTutor/ui/UMLogger;->helpButton:Landroid/widget/Button;

    .line 107
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/UMLogger;->serviceStartButton:Landroid/widget/Button;

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/UMLogger;->serviceStartButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/UMLogger;->sysViewerButton:Landroid/widget/Button;

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/UMLogger;->sysViewerButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/UMLogger;->appViewerButton:Landroid/widget/Button;

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/UMLogger;->appViewerButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/UMLogger;->helpButton:Landroid/widget/Button;

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/UMLogger;->helpButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/UMLogger;->counterService:Ledu/umich/PowerTutor/service/ICounterService;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/UMLogger;->serviceStartButton:Landroid/widget/Button;

    const-string v2, "Stop Profiler"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/UMLogger;->appViewerButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 115
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/UMLogger;->sysViewerButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 121
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/UMLogger;->serviceStartButton:Landroid/widget/Button;

    const-string v2, "Start Profiler"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/UMLogger;->appViewerButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 119
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/UMLogger;->sysViewerButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 215
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 216
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 288
    :goto_0
    return-object v1

    .line 218
    :pswitch_0
    const v1, 0x7f070006

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 219
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 220
    const-string v2, "Agree"

    new-instance v3, Ledu/umich/PowerTutor/ui/UMLogger$6;

    invoke-direct {v3, p0}, Ledu/umich/PowerTutor/ui/UMLogger$6;-><init>(Ledu/umich/PowerTutor/ui/UMLogger;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 228
    const-string v2, "Do not agree"

    .line 229
    new-instance v3, Ledu/umich/PowerTutor/ui/UMLogger$7;

    invoke-direct {v3, p0}, Ledu/umich/PowerTutor/ui/UMLogger$7;-><init>(Ledu/umich/PowerTutor/ui/UMLogger;)V

    .line 228
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 235
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 237
    :pswitch_1
    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 238
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 239
    const-string v2, "Stop"

    new-instance v3, Ledu/umich/PowerTutor/ui/UMLogger$8;

    invoke-direct {v3, p0}, Ledu/umich/PowerTutor/ui/UMLogger$8;-><init>(Ledu/umich/PowerTutor/ui/UMLogger;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 245
    const-string v2, "Cancel"

    new-instance v3, Ledu/umich/PowerTutor/ui/UMLogger$9;

    invoke-direct {v3, p0}, Ledu/umich/PowerTutor/ui/UMLogger$9;-><init>(Ledu/umich/PowerTutor/ui/UMLogger;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 250
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 252
    :pswitch_2
    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 253
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 254
    const-string v2, "Start"

    new-instance v3, Ledu/umich/PowerTutor/ui/UMLogger$10;

    invoke-direct {v3, p0}, Ledu/umich/PowerTutor/ui/UMLogger$10;-><init>(Ledu/umich/PowerTutor/ui/UMLogger;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 260
    const-string v2, "Cancel"

    new-instance v3, Ledu/umich/PowerTutor/ui/UMLogger$11;

    invoke-direct {v3, p0}, Ledu/umich/PowerTutor/ui/UMLogger$11;-><init>(Ledu/umich/PowerTutor/ui/UMLogger;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 265
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 267
    :pswitch_3
    const v2, 0x7f070001

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 268
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 269
    const-string v3, "Ok"

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 270
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 272
    :pswitch_4
    const v2, 0x7f070002

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 273
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 274
    const-string v3, "Ok"

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 275
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 277
    :pswitch_5
    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 278
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 279
    const-string v2, "Ok"

    new-instance v3, Ledu/umich/PowerTutor/ui/UMLogger$12;

    invoke-direct {v3, p0}, Ledu/umich/PowerTutor/ui/UMLogger$12;-><init>(Ledu/umich/PowerTutor/ui/UMLogger;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 285
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 162
    const-string v0, "Options"

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 163
    const-string v0, "Save log"

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 164
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 169
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 209
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 171
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Ledu/umich/PowerTutor/ui/EditPreferences;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Ledu/umich/PowerTutor/ui/UMLogger;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 174
    :pswitch_1
    new-instance v1, Ledu/umich/PowerTutor/ui/UMLogger$5;

    invoke-direct {v1, p0}, Ledu/umich/PowerTutor/ui/UMLogger$5;-><init>(Ledu/umich/PowerTutor/ui/UMLogger;)V

    .line 206
    invoke-virtual {v1}, Ledu/umich/PowerTutor/ui/UMLogger$5;->start()V

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 147
    invoke-virtual {p0}, Ledu/umich/PowerTutor/ui/UMLogger;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/UMLogger;->conn:Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 148
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 126
    invoke-virtual {p0}, Ledu/umich/PowerTutor/ui/UMLogger;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Ledu/umich/PowerTutor/ui/UMLogger;->serviceIntent:Landroid/content/Intent;

    iget-object v5, p0, Ledu/umich/PowerTutor/ui/UMLogger;->conn:Ledu/umich/PowerTutor/ui/UMLogger$CounterServiceConnection;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 127
    iget-object v3, p0, Ledu/umich/PowerTutor/ui/UMLogger;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "firstRun"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    invoke-static {}, Ledu/umich/PowerTutor/phone/PhoneSelector;->getPhoneType()I

    move-result v3

    if-nez v3, :cond_2

    .line 129
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Ledu/umich/PowerTutor/ui/UMLogger;->showDialog(I)V

    .line 134
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ledu/umich/PowerTutor/ui/UMLogger;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 135
    .local v2, startingIntent:Landroid/content/Intent;
    const-string v3, "isFromIcon"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    invoke-virtual {p0}, Ledu/umich/PowerTutor/ui/UMLogger;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 137
    .local v0, copyIntent:Landroid/content/Intent;
    const-string v3, "isFromIcon"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/ui/UMLogger;->setIntent(Landroid/content/Intent;)V

    .line 139
    new-instance v1, Landroid/content/Intent;

    const-class v3, Ledu/umich/PowerTutor/ui/PowerTabs;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Ledu/umich/PowerTutor/ui/UMLogger;->startActivity(Landroid/content/Intent;)V

    .line 142
    .end local v0           #copyIntent:Landroid/content/Intent;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    return-void

    .line 131
    .end local v2           #startingIntent:Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ledu/umich/PowerTutor/ui/UMLogger;->showDialog(I)V

    goto :goto_0
.end method
