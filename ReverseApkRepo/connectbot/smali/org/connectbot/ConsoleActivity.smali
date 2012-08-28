.class public Lorg/connectbot/ConsoleActivity;
.super Landroid/app/Activity;
.source "ConsoleActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/connectbot/ConsoleActivity$URLItemListener;
    }
.end annotation


# instance fields
.field private booleanNo:Landroid/widget/Button;

.field private booleanPrompt:Landroid/widget/TextView;

.field private booleanPromptGroup:Landroid/widget/RelativeLayout;

.field private booleanYes:Landroid/widget/Button;

.field protected bound:Lorg/connectbot/service/TerminalManager;

.field protected clipboard:Landroid/text/ClipboardManager;

.field private connection:Landroid/content/ServiceConnection;

.field private copy:Landroid/view/MenuItem;

.field protected copySource:Lorg/connectbot/service/TerminalBridge;

.field private disconnect:Landroid/view/MenuItem;

.field protected disconnectHandler:Landroid/os/Handler;

.field private empty:Landroid/widget/TextView;

.field private fade_out_delayed:Landroid/view/animation/Animation;

.field private fade_stay_hidden:Landroid/view/animation/Animation;

.field protected flip:Landroid/widget/ViewFlipper;

.field private forcedOrientation:Z

.field private handler:Landroid/os/Handler;

.field private hardKeyboard:Z

.field protected inflater:Landroid/view/LayoutInflater;

.field private inputManager:Landroid/view/inputmethod/InputMethodManager;

.field private keyboard_fade_in:Landroid/view/animation/Animation;

.field private keyboard_fade_out:Landroid/view/animation/Animation;

.field private lastTouchCol:I

.field private lastTouchRow:I

.field private lastX:F

.field private lastY:F

.field private mKeyboardButton:Landroid/widget/ImageView;

.field private paste:Landroid/view/MenuItem;

.field private portForward:Landroid/view/MenuItem;

.field private prefs:Landroid/content/SharedPreferences;

.field protected promptHandler:Landroid/os/Handler;

.field protected requested:Landroid/net/Uri;

.field private resize:Landroid/view/MenuItem;

.field private slide_left_in:Landroid/view/animation/Animation;

.field private slide_left_out:Landroid/view/animation/Animation;

.field private slide_right_in:Landroid/view/animation/Animation;

.field private slide_right_out:Landroid/view/animation/Animation;

.field protected stringPrompt:Landroid/widget/EditText;

.field private stringPromptGroup:Landroid/widget/RelativeLayout;

.field private stringPromptInstructions:Landroid/widget/TextView;

.field private urlscan:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    iput-object v1, p0, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    .line 94
    iput-object v1, p0, Lorg/connectbot/ConsoleActivity;->bound:Lorg/connectbot/service/TerminalManager;

    .line 95
    iput-object v1, p0, Lorg/connectbot/ConsoleActivity;->inflater:Landroid/view/LayoutInflater;

    .line 97
    iput-object v1, p0, Lorg/connectbot/ConsoleActivity;->prefs:Landroid/content/SharedPreferences;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/connectbot/ConsoleActivity;->hardKeyboard:Z

    .line 125
    iput-object v1, p0, Lorg/connectbot/ConsoleActivity;->copySource:Lorg/connectbot/service/TerminalBridge;

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/connectbot/ConsoleActivity;->handler:Landroid/os/Handler;

    .line 134
    new-instance v0, Lorg/connectbot/ConsoleActivity$1;

    invoke-direct {v0, p0}, Lorg/connectbot/ConsoleActivity$1;-><init>(Lorg/connectbot/ConsoleActivity;)V

    iput-object v0, p0, Lorg/connectbot/ConsoleActivity;->connection:Landroid/content/ServiceConnection;

    .line 189
    new-instance v0, Lorg/connectbot/ConsoleActivity$2;

    invoke-direct {v0, p0}, Lorg/connectbot/ConsoleActivity$2;-><init>(Lorg/connectbot/ConsoleActivity;)V

    iput-object v0, p0, Lorg/connectbot/ConsoleActivity;->promptHandler:Landroid/os/Handler;

    .line 197
    new-instance v0, Lorg/connectbot/ConsoleActivity$3;

    invoke-direct {v0, p0}, Lorg/connectbot/ConsoleActivity$3;-><init>(Lorg/connectbot/ConsoleActivity;)V

    iput-object v0, p0, Lorg/connectbot/ConsoleActivity;->disconnectHandler:Landroid/os/Handler;

    .line 80
    return-void
.end method

.method static synthetic access$0(Lorg/connectbot/ConsoleActivity;Lorg/connectbot/service/TerminalBridge;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1064
    invoke-direct {p0, p1}, Lorg/connectbot/ConsoleActivity;->addNewTerminalView(Lorg/connectbot/service/TerminalBridge;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lorg/connectbot/ConsoleActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1114
    invoke-direct {p0, p1}, Lorg/connectbot/ConsoleActivity;->setDisplayedTerminal(I)V

    return-void
.end method

.method static synthetic access$10(Lorg/connectbot/ConsoleActivity;)F
    .locals 1
    .parameter

    .prologue
    .line 119
    iget v0, p0, Lorg/connectbot/ConsoleActivity;->lastX:F

    return v0
.end method

.method static synthetic access$11(Lorg/connectbot/ConsoleActivity;)F
    .locals 1
    .parameter

    .prologue
    .line 119
    iget v0, p0, Lorg/connectbot/ConsoleActivity;->lastY:F

    return v0
.end method

.method static synthetic access$12(Lorg/connectbot/ConsoleActivity;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lorg/connectbot/ConsoleActivity;->keyboard_fade_in:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$13(Lorg/connectbot/ConsoleActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lorg/connectbot/ConsoleActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$14(Lorg/connectbot/ConsoleActivity;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lorg/connectbot/ConsoleActivity;->keyboard_fade_out:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2(Lorg/connectbot/ConsoleActivity;Lorg/connectbot/service/TerminalBridge;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lorg/connectbot/ConsoleActivity;->closeBridge(Lorg/connectbot/service/TerminalBridge;)V

    return-void
.end method

.method static synthetic access$3(Lorg/connectbot/ConsoleActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lorg/connectbot/ConsoleActivity;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$4(Lorg/connectbot/ConsoleActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    iput p1, p0, Lorg/connectbot/ConsoleActivity;->lastTouchRow:I

    return-void
.end method

.method static synthetic access$5(Lorg/connectbot/ConsoleActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    iput p1, p0, Lorg/connectbot/ConsoleActivity;->lastTouchCol:I

    return-void
.end method

.method static synthetic access$6(Lorg/connectbot/ConsoleActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 126
    iget v0, p0, Lorg/connectbot/ConsoleActivity;->lastTouchRow:I

    return v0
.end method

.method static synthetic access$7(Lorg/connectbot/ConsoleActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 126
    iget v0, p0, Lorg/connectbot/ConsoleActivity;->lastTouchCol:I

    return v0
.end method

.method static synthetic access$8(Lorg/connectbot/ConsoleActivity;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    iput p1, p0, Lorg/connectbot/ConsoleActivity;->lastX:F

    return-void
.end method

.method static synthetic access$9(Lorg/connectbot/ConsoleActivity;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    iput p1, p0, Lorg/connectbot/ConsoleActivity;->lastY:F

    return-void
.end method

.method private addNewTerminalView(Lorg/connectbot/service/TerminalBridge;)I
    .locals 7
    .parameter "bridge"

    .prologue
    const/4 v6, 0x0

    .line 1066
    iget-object v3, p1, Lorg/connectbot/service/TerminalBridge;->promptHelper:Lorg/connectbot/service/PromptHelper;

    iget-object v4, p0, Lorg/connectbot/ConsoleActivity;->promptHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Lorg/connectbot/service/PromptHelper;->setHandler(Landroid/os/Handler;)V

    .line 1069
    iget-object v3, p0, Lorg/connectbot/ConsoleActivity;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030011

    iget-object v5, p0, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 1072
    .local v2, view:Landroid/widget/RelativeLayout;
    const v3, 0x7f0b002a

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1073
    .local v0, overlay:Landroid/widget/TextView;
    iget-object v3, p1, Lorg/connectbot/service/TerminalBridge;->host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v3}, Lorg/connectbot/bean/HostBean;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1076
    new-instance v1, Lorg/connectbot/TerminalView;

    invoke-direct {v1, p0, p1}, Lorg/connectbot/TerminalView;-><init>(Landroid/content/Context;Lorg/connectbot/service/TerminalBridge;)V

    .line 1077
    .local v1, terminal:Lorg/connectbot/TerminalView;
    const v3, 0x7f0b0004

    invoke-virtual {v1, v3}, Lorg/connectbot/TerminalView;->setId(I)V

    .line 1078
    invoke-virtual {v2, v1, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 1080
    iget-object v4, p0, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    monitor-enter v4

    .line 1082
    :try_start_0
    iget-object v3, p0, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 1083
    iget-object v3, p0, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    monitor-exit v4

    return v3

    .line 1080
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private closeBridge(Lorg/connectbot/service/TerminalBridge;)V
    .locals 5
    .parameter "bridge"

    .prologue
    .line 215
    iget-object v3, p0, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    monitor-enter v3

    .line 216
    :try_start_0
    invoke-direct {p0, p1}, Lorg/connectbot/ConsoleActivity;->getFlipIndex(Lorg/connectbot/service/TerminalBridge;)I

    move-result v0

    .line 218
    .local v0, flipIndex:I
    if-ltz v0, :cond_2

    .line 219
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 220
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/connectbot/ConsoleActivity;->shiftCurrentTerminal(I)V

    .line 222
    :cond_0
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v0}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    .line 227
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v1

    .line 228
    .local v1, numChildren:I
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v2

    if-lt v2, v1, :cond_1

    .line 229
    if-lez v1, :cond_1

    .line 230
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v4}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 233
    :cond_1
    invoke-virtual {p0}, Lorg/connectbot/ConsoleActivity;->updateEmptyVisible()V

    .line 237
    .end local v1           #numChildren:I
    :cond_2
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 238
    invoke-virtual {p0}, Lorg/connectbot/ConsoleActivity;->finish()V

    .line 215
    :cond_3
    monitor-exit v3

    .line 241
    return-void

    .line 215
    .end local v0           #flipIndex:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private configureOrientation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 591
    invoke-virtual {p0}, Lorg/connectbot/ConsoleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->keyboard:I

    if-ne v2, v4, :cond_1

    .line 592
    const-string v1, "Force portrait"

    .line 596
    .local v1, rotateDefault:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "rotation"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, rotate:Ljava/lang/String;
    const-string v2, "Default"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 598
    move-object v0, v1

    .line 601
    :cond_0
    const-string v2, "Force landscape"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 602
    invoke-virtual {p0, v5}, Lorg/connectbot/ConsoleActivity;->setRequestedOrientation(I)V

    .line 603
    iput-boolean v4, p0, Lorg/connectbot/ConsoleActivity;->forcedOrientation:Z

    .line 611
    :goto_1
    return-void

    .line 594
    .end local v0           #rotate:Ljava/lang/String;
    .end local v1           #rotateDefault:Ljava/lang/String;
    :cond_1
    const-string v1, "Force landscape"

    .restart local v1       #rotateDefault:Ljava/lang/String;
    goto :goto_0

    .line 604
    .restart local v0       #rotate:Ljava/lang/String;
    :cond_2
    const-string v2, "Force portrait"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 605
    invoke-virtual {p0, v4}, Lorg/connectbot/ConsoleActivity;->setRequestedOrientation(I)V

    .line 606
    iput-boolean v4, p0, Lorg/connectbot/ConsoleActivity;->forcedOrientation:Z

    goto :goto_1

    .line 608
    :cond_3
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lorg/connectbot/ConsoleActivity;->setRequestedOrientation(I)V

    .line 609
    iput-boolean v5, p0, Lorg/connectbot/ConsoleActivity;->forcedOrientation:Z

    goto :goto_1
.end method

.method private configureStrictMode()V
    .locals 1

    .prologue
    .line 263
    :try_start_0
    const-string v0, "android.os.StrictMode"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 264
    invoke-static {}, Lorg/connectbot/StrictModeSetup;->run()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getFlipIndex(Lorg/connectbot/service/TerminalBridge;)I
    .locals 8
    .parameter "bridge"

    .prologue
    .line 1088
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    monitor-enter v6

    .line 1089
    :try_start_0
    iget-object v5, p0, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v5}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v1

    .line 1090
    .local v1, children:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 1088
    monitor-exit v6

    .line 1106
    const/4 v2, -0x1

    .end local v2           #i:I
    :goto_1
    return v2

    .line 1091
    .restart local v2       #i:I
    :cond_0
    iget-object v5, p0, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v5, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v7, 0x7f0b0004

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1093
    .local v4, view:Landroid/view/View;
    if-eqz v4, :cond_1

    instance-of v5, v4, Lorg/connectbot/TerminalView;

    if-nez v5, :cond_2

    .line 1090
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1098
    :cond_2
    move-object v0, v4

    check-cast v0, Lorg/connectbot/TerminalView;

    move-object v3, v0

    .line 1100
    .local v3, tv:Lorg/connectbot/TerminalView;
    iget-object v5, v3, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    if-ne v5, p1, :cond_1

    .line 1101
    monitor-exit v6

    goto :goto_1

    .line 1088
    .end local v1           #children:I
    .end local v2           #i:I
    .end local v3           #tv:Lorg/connectbot/TerminalView;
    .end local v4           #view:Landroid/view/View;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private setDisplayedTerminal(I)V
    .locals 4
    .parameter "requestedIndex"

    .prologue
    .line 1115
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    monitor-enter v2

    .line 1118
    :try_start_0
    iget-object v1, p0, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, p1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 1119
    iget-object v1, p0, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0b002a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1120
    iget-object v3, p0, Lorg/connectbot/ConsoleActivity;->fade_out_delayed:Landroid/view/animation/Animation;

    invoke-virtual {v1, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1125
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/connectbot/ConsoleActivity;->updatePromptVisible()V

    .line 1126
    invoke-virtual {p0}, Lorg/connectbot/ConsoleActivity;->updateEmptyVisible()V

    .line 1115
    monitor-exit v2

    .line 1128
    return-void

    .line 1121
    :catch_0
    move-exception v0

    .line 1122
    .local v0, npe:Ljava/lang/NullPointerException;
    const-string v1, "ConnectBot.ConsoleActivity"

    const-string v3, "View went away when we were about to display it"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1115
    .end local v0           #npe:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateDefault()V
    .locals 4

    .prologue
    .line 954
    const v2, 0x7f0b0004

    invoke-virtual {p0, v2}, Lorg/connectbot/ConsoleActivity;->findCurrentView(I)Landroid/view/View;

    move-result-object v1

    .line 955
    .local v1, view:Landroid/view/View;
    instance-of v2, v1, Lorg/connectbot/TerminalView;

    if-nez v2, :cond_1

    .line 960
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, v1

    .line 957
    check-cast v0, Lorg/connectbot/TerminalView;

    .line 958
    .local v0, terminal:Lorg/connectbot/TerminalView;
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity;->bound:Lorg/connectbot/service/TerminalManager;

    if-eqz v2, :cond_0

    .line 959
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity;->bound:Lorg/connectbot/service/TerminalManager;

    iget-object v3, v0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iput-object v3, v2, Lorg/connectbot/service/TerminalManager;->defaultBridge:Lorg/connectbot/service/TerminalBridge;

    goto :goto_0
.end method


# virtual methods
.method protected findCurrentView(I)Landroid/view/View;
    .locals 2
    .parameter "id"

    .prologue
    .line 244
    iget-object v1, p0, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 245
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 246
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected getCurrentPromptHelper()Lorg/connectbot/service/PromptHelper;
    .locals 2

    .prologue
    .line 250
    const v1, 0x7f0b0004

    invoke-virtual {p0, v1}, Lorg/connectbot/ConsoleActivity;->findCurrentView(I)Landroid/view/View;

    move-result-object v0

    .line 251
    .local v0, view:Landroid/view/View;
    instance-of v1, v0, Lorg/connectbot/TerminalView;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 252
    .end local v0           #view:Landroid/view/View;
    :goto_0
    return-object v1

    .restart local v0       #view:Landroid/view/View;
    :cond_0
    check-cast v0, Lorg/connectbot/TerminalView;

    .end local v0           #view:Landroid/view/View;
    iget-object v1, v0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v1, v1, Lorg/connectbot/service/TerminalBridge;->promptHelper:Lorg/connectbot/service/PromptHelper;

    goto :goto_0
.end method

.method protected hideAllPrompts()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 256
    iget-object v0, p0, Lorg/connectbot/ConsoleActivity;->stringPromptGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lorg/connectbot/ConsoleActivity;->booleanPromptGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 258
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "newConfig"

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1039
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1041
    const-string v2, "ConnectBot.ConsoleActivity"

    const-string v3, "onConfigurationChanged; requestedOrientation=%d, newConfig.orientation=%d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/connectbot/ConsoleActivity;->getRequestedOrientation()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity;->bound:Lorg/connectbot/service/TerminalManager;

    if-eqz v2, :cond_2

    .line 1043
    iget-boolean v2, p0, Lorg/connectbot/ConsoleActivity;->forcedOrientation:Z

    if-eqz v2, :cond_0

    .line 1044
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v6, :cond_0

    .line 1045
    invoke-virtual {p0}, Lorg/connectbot/ConsoleActivity;->getRequestedOrientation()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1046
    :cond_0
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v0, :cond_3

    .line 1047
    invoke-virtual {p0}, Lorg/connectbot/ConsoleActivity;->getRequestedOrientation()I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 1048
    :cond_1
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity;->bound:Lorg/connectbot/service/TerminalManager;

    invoke-virtual {v2, v1}, Lorg/connectbot/service/TerminalManager;->setResizeAllowed(Z)V

    .line 1052
    :goto_0
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity;->bound:Lorg/connectbot/service/TerminalManager;

    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v3, v6, :cond_4

    :goto_1
    iput-boolean v0, v2, Lorg/connectbot/service/TerminalManager;->hardKeyboardHidden:Z

    .line 1054
    iget-object v0, p0, Lorg/connectbot/ConsoleActivity;->mKeyboardButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/connectbot/ConsoleActivity;->bound:Lorg/connectbot/service/TerminalManager;

    iget-boolean v2, v2, Lorg/connectbot/service/TerminalManager;->hardKeyboardHidden:Z

    if-eqz v2, :cond_5

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1056
    :cond_2
    return-void

    .line 1050
    :cond_3
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity;->bound:Lorg/connectbot/service/TerminalManager;

    invoke-virtual {v2, v0}, Lorg/connectbot/service/TerminalManager;->setResizeAllowed(Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1052
    goto :goto_1

    .line 1054
    :cond_5
    const/16 v1, 0x8

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/16 v8, 0x400

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 270
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 271
    invoke-direct {p0}, Lorg/connectbot/ConsoleActivity;->configureStrictMode()V

    .line 272
    invoke-virtual {p0}, Lorg/connectbot/ConsoleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->keyboard:I

    .line 273
    const/4 v7, 0x2

    if-ne v4, v7, :cond_1

    move v4, v5

    .line 272
    :goto_0
    iput-boolean v4, p0, Lorg/connectbot/ConsoleActivity;->hardKeyboard:Z

    .line 275
    const v4, 0x7f030001

    invoke-virtual {p0, v4}, Lorg/connectbot/ConsoleActivity;->setContentView(I)V

    .line 277
    const-string v4, "clipboard"

    invoke-virtual {p0, v4}, Lorg/connectbot/ConsoleActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/ClipboardManager;

    iput-object v4, p0, Lorg/connectbot/ConsoleActivity;->clipboard:Landroid/text/ClipboardManager;

    .line 278
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lorg/connectbot/ConsoleActivity;->prefs:Landroid/content/SharedPreferences;

    .line 281
    iget-object v4, p0, Lorg/connectbot/ConsoleActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v7, "fullscreen"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 282
    invoke-virtual {p0}, Lorg/connectbot/ConsoleActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 287
    :cond_0
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lorg/connectbot/ConsoleActivity;->setVolumeControlStream(I)V

    .line 290
    invoke-virtual {p0}, Lorg/connectbot/ConsoleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lorg/connectbot/ConsoleActivity;->requested:Landroid/net/Uri;

    .line 292
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, p0, Lorg/connectbot/ConsoleActivity;->inflater:Landroid/view/LayoutInflater;

    .line 294
    const v4, 0x7f0b0004

    invoke-virtual {p0, v4}, Lorg/connectbot/ConsoleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ViewFlipper;

    iput-object v4, p0, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    .line 295
    const v4, 0x1020004

    invoke-virtual {p0, v4}, Lorg/connectbot/ConsoleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lorg/connectbot/ConsoleActivity;->empty:Landroid/widget/TextView;

    .line 297
    const v4, 0x7f0b0005

    invoke-virtual {p0, v4}, Lorg/connectbot/ConsoleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lorg/connectbot/ConsoleActivity;->stringPromptGroup:Landroid/widget/RelativeLayout;

    .line 298
    const v4, 0x7f0b0006

    invoke-virtual {p0, v4}, Lorg/connectbot/ConsoleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lorg/connectbot/ConsoleActivity;->stringPromptInstructions:Landroid/widget/TextView;

    .line 299
    const v4, 0x7f0b0007

    invoke-virtual {p0, v4}, Lorg/connectbot/ConsoleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lorg/connectbot/ConsoleActivity;->stringPrompt:Landroid/widget/EditText;

    .line 300
    iget-object v4, p0, Lorg/connectbot/ConsoleActivity;->stringPrompt:Landroid/widget/EditText;

    new-instance v6, Lorg/connectbot/ConsoleActivity$4;

    invoke-direct {v6, p0}, Lorg/connectbot/ConsoleActivity$4;-><init>(Lorg/connectbot/ConsoleActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 320
    const v4, 0x7f0b0008

    invoke-virtual {p0, v4}, Lorg/connectbot/ConsoleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lorg/connectbot/ConsoleActivity;->booleanPromptGroup:Landroid/widget/RelativeLayout;

    .line 321
    const v4, 0x7f0b0009

    invoke-virtual {p0, v4}, Lorg/connectbot/ConsoleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lorg/connectbot/ConsoleActivity;->booleanPrompt:Landroid/widget/TextView;

    .line 323
    const v4, 0x7f0b000b

    invoke-virtual {p0, v4}, Lorg/connectbot/ConsoleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lorg/connectbot/ConsoleActivity;->booleanYes:Landroid/widget/Button;

    .line 324
    iget-object v4, p0, Lorg/connectbot/ConsoleActivity;->booleanYes:Landroid/widget/Button;

    new-instance v6, Lorg/connectbot/ConsoleActivity$5;

    invoke-direct {v6, p0}, Lorg/connectbot/ConsoleActivity$5;-><init>(Lorg/connectbot/ConsoleActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    const v4, 0x7f0b000a

    invoke-virtual {p0, v4}, Lorg/connectbot/ConsoleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lorg/connectbot/ConsoleActivity;->booleanNo:Landroid/widget/Button;

    .line 334
    iget-object v4, p0, Lorg/connectbot/ConsoleActivity;->booleanNo:Landroid/widget/Button;

    new-instance v6, Lorg/connectbot/ConsoleActivity$6;

    invoke-direct {v6, p0}, Lorg/connectbot/ConsoleActivity$6;-><init>(Lorg/connectbot/ConsoleActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    const v4, 0x7f040004

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lorg/connectbot/ConsoleActivity;->slide_left_in:Landroid/view/animation/Animation;

    .line 345
    const v4, 0x7f040005

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lorg/connectbot/ConsoleActivity;->slide_left_out:Landroid/view/animation/Animation;

    .line 346
    const v4, 0x7f040006

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lorg/connectbot/ConsoleActivity;->slide_right_in:Landroid/view/animation/Animation;

    .line 347
    const v4, 0x7f040007

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lorg/connectbot/ConsoleActivity;->slide_right_out:Landroid/view/animation/Animation;

    .line 349
    const/high16 v4, 0x7f04

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lorg/connectbot/ConsoleActivity;->fade_out_delayed:Landroid/view/animation/Animation;

    .line 350
    const v4, 0x7f040001

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lorg/connectbot/ConsoleActivity;->fade_stay_hidden:Landroid/view/animation/Animation;

    .line 353
    const v4, 0x7f040002

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lorg/connectbot/ConsoleActivity;->keyboard_fade_in:Landroid/view/animation/Animation;

    .line 354
    const v4, 0x7f040003

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lorg/connectbot/ConsoleActivity;->keyboard_fade_out:Landroid/view/animation/Animation;

    .line 356
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lorg/connectbot/ConsoleActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lorg/connectbot/ConsoleActivity;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 358
    const v4, 0x7f0b000c

    invoke-virtual {p0, v4}, Lorg/connectbot/ConsoleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 360
    .local v3, keyboardGroup:Landroid/widget/RelativeLayout;
    const v4, 0x7f0b000d

    invoke-virtual {p0, v4}, Lorg/connectbot/ConsoleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lorg/connectbot/ConsoleActivity;->mKeyboardButton:Landroid/widget/ImageView;

    .line 361
    iget-object v4, p0, Lorg/connectbot/ConsoleActivity;->mKeyboardButton:Landroid/widget/ImageView;

    new-instance v6, Lorg/connectbot/ConsoleActivity$7;

    invoke-direct {v6, p0, v3}, Lorg/connectbot/ConsoleActivity$7;-><init>(Lorg/connectbot/ConsoleActivity;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    const v4, 0x7f0b000e

    invoke-virtual {p0, v4}, Lorg/connectbot/ConsoleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 373
    .local v0, ctrlButton:Landroid/widget/ImageView;
    new-instance v4, Lorg/connectbot/ConsoleActivity$8;

    invoke-direct {v4, p0, v3}, Lorg/connectbot/ConsoleActivity$8;-><init>(Lorg/connectbot/ConsoleActivity;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    const v4, 0x7f0b000f

    invoke-virtual {p0, v4}, Lorg/connectbot/ConsoleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 387
    .local v2, escButton:Landroid/widget/ImageView;
    new-instance v4, Lorg/connectbot/ConsoleActivity$9;

    invoke-direct {v4, p0, v3}, Lorg/connectbot/ConsoleActivity$9;-><init>(Lorg/connectbot/ConsoleActivity;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v4, Lorg/connectbot/ConsoleActivity$10;

    invoke-direct {v4, p0}, Lorg/connectbot/ConsoleActivity$10;-><init>(Lorg/connectbot/ConsoleActivity;)V

    invoke-direct {v1, v4}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    .line 489
    .local v1, detect:Landroid/view/GestureDetector;
    iget-object v4, p0, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v4, v5}, Landroid/widget/ViewFlipper;->setLongClickable(Z)V

    .line 490
    iget-object v4, p0, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    new-instance v5, Lorg/connectbot/ConsoleActivity$11;

    invoke-direct {v5, p0, v3, v1}, Lorg/connectbot/ConsoleActivity$11;-><init>(Lorg/connectbot/ConsoleActivity;Landroid/widget/RelativeLayout;Landroid/view/GestureDetector;)V

    invoke-virtual {v4, v5}, Landroid/widget/ViewFlipper;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 584
    return-void

    .end local v0           #ctrlButton:Landroid/widget/ImageView;
    .end local v1           #detect:Landroid/view/GestureDetector;
    .end local v2           #escButton:Landroid/widget/ImageView;
    .end local v3           #keyboardGroup:Landroid/widget/RelativeLayout;
    :cond_1
    move v4, v6

    .line 273
    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .parameter "menu"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 616
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 618
    const v6, 0x7f0b0004

    invoke-virtual {p0, v6}, Lorg/connectbot/ConsoleActivity;->findCurrentView(I)Landroid/view/View;

    move-result-object v5

    .line 619
    .local v5, view:Landroid/view/View;
    instance-of v0, v5, Lorg/connectbot/TerminalView;

    .line 620
    .local v0, activeTerminal:Z
    const/4 v4, 0x0

    .line 621
    .local v4, sessionOpen:Z
    const/4 v3, 0x0

    .line 622
    .local v3, disconnected:Z
    const/4 v2, 0x0

    .line 624
    .local v2, canForwardPorts:Z
    if-eqz v0, :cond_0

    .line 625
    check-cast v5, Lorg/connectbot/TerminalView;

    .end local v5           #view:Landroid/view/View;
    iget-object v1, v5, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    .line 626
    .local v1, bridge:Lorg/connectbot/service/TerminalBridge;
    invoke-virtual {v1}, Lorg/connectbot/service/TerminalBridge;->isSessionOpen()Z

    move-result v4

    .line 627
    invoke-virtual {v1}, Lorg/connectbot/service/TerminalBridge;->isDisconnected()Z

    move-result v3

    .line 628
    invoke-virtual {v1}, Lorg/connectbot/service/TerminalBridge;->canFowardPorts()Z

    move-result v2

    .line 631
    .end local v1           #bridge:Lorg/connectbot/service/TerminalBridge;
    :cond_0
    invoke-interface {p1, v7}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 633
    const v6, 0x7f0800a1

    invoke-interface {p1, v6}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lorg/connectbot/ConsoleActivity;->disconnect:Landroid/view/MenuItem;

    .line 634
    iget-boolean v6, p0, Lorg/connectbot/ConsoleActivity;->hardKeyboard:Z

    if-eqz v6, :cond_1

    .line 635
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->disconnect:Landroid/view/MenuItem;

    const/16 v9, 0x77

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 636
    :cond_1
    if-nez v4, :cond_2

    if-eqz v3, :cond_2

    .line 637
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->disconnect:Landroid/view/MenuItem;

    const v9, 0x7f080089

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 638
    :cond_2
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->disconnect:Landroid/view/MenuItem;

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 639
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->disconnect:Landroid/view/MenuItem;

    const v9, 0x1080038

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 640
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->disconnect:Landroid/view/MenuItem;

    new-instance v9, Lorg/connectbot/ConsoleActivity$12;

    invoke-direct {v9, p0}, Lorg/connectbot/ConsoleActivity$12;-><init>(Lorg/connectbot/ConsoleActivity;)V

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 651
    const v6, 0x7f08008a

    invoke-interface {p1, v6}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lorg/connectbot/ConsoleActivity;->copy:Landroid/view/MenuItem;

    .line 652
    iget-boolean v6, p0, Lorg/connectbot/ConsoleActivity;->hardKeyboard:Z

    if-eqz v6, :cond_3

    .line 653
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->copy:Landroid/view/MenuItem;

    const/16 v9, 0x63

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 654
    :cond_3
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->copy:Landroid/view/MenuItem;

    const v9, 0x1080051

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 655
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->copy:Landroid/view/MenuItem;

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 656
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->copy:Landroid/view/MenuItem;

    new-instance v9, Lorg/connectbot/ConsoleActivity$13;

    invoke-direct {v9, p0}, Lorg/connectbot/ConsoleActivity$13;-><init>(Lorg/connectbot/ConsoleActivity;)V

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 676
    const v6, 0x7f08008b

    invoke-interface {p1, v6}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lorg/connectbot/ConsoleActivity;->paste:Landroid/view/MenuItem;

    .line 677
    iget-boolean v6, p0, Lorg/connectbot/ConsoleActivity;->hardKeyboard:Z

    if-eqz v6, :cond_4

    .line 678
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->paste:Landroid/view/MenuItem;

    const/16 v9, 0x76

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 679
    :cond_4
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->paste:Landroid/view/MenuItem;

    const v9, 0x108003e

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 680
    iget-object v9, p0, Lorg/connectbot/ConsoleActivity;->paste:Landroid/view/MenuItem;

    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v6}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v4, :cond_9

    move v6, v7

    :goto_0
    invoke-interface {v9, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 681
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->paste:Landroid/view/MenuItem;

    new-instance v9, Lorg/connectbot/ConsoleActivity$14;

    invoke-direct {v9, p0}, Lorg/connectbot/ConsoleActivity$14;-><init>(Lorg/connectbot/ConsoleActivity;)V

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 695
    const v6, 0x7f08008c

    invoke-interface {p1, v6}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lorg/connectbot/ConsoleActivity;->portForward:Landroid/view/MenuItem;

    .line 696
    iget-boolean v6, p0, Lorg/connectbot/ConsoleActivity;->hardKeyboard:Z

    if-eqz v6, :cond_5

    .line 697
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->portForward:Landroid/view/MenuItem;

    const/16 v9, 0x66

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 698
    :cond_5
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->portForward:Landroid/view/MenuItem;

    const v9, 0x1080042

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 699
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->portForward:Landroid/view/MenuItem;

    if-eqz v4, :cond_6

    if-eqz v2, :cond_6

    move v8, v7

    :cond_6
    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 700
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->portForward:Landroid/view/MenuItem;

    new-instance v8, Lorg/connectbot/ConsoleActivity$15;

    invoke-direct {v8, p0}, Lorg/connectbot/ConsoleActivity$15;-><init>(Lorg/connectbot/ConsoleActivity;)V

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 712
    const v6, 0x7f08008e

    invoke-interface {p1, v6}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lorg/connectbot/ConsoleActivity;->urlscan:Landroid/view/MenuItem;

    .line 713
    iget-boolean v6, p0, Lorg/connectbot/ConsoleActivity;->hardKeyboard:Z

    if-eqz v6, :cond_7

    .line 714
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->urlscan:Landroid/view/MenuItem;

    const/16 v8, 0x75

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 715
    :cond_7
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->urlscan:Landroid/view/MenuItem;

    const v8, 0x108004f

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 716
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->urlscan:Landroid/view/MenuItem;

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 717
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->urlscan:Landroid/view/MenuItem;

    new-instance v8, Lorg/connectbot/ConsoleActivity$16;

    invoke-direct {v8, p0}, Lorg/connectbot/ConsoleActivity$16;-><init>(Lorg/connectbot/ConsoleActivity;)V

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 738
    const v6, 0x7f08008d

    invoke-interface {p1, v6}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lorg/connectbot/ConsoleActivity;->resize:Landroid/view/MenuItem;

    .line 739
    iget-boolean v6, p0, Lorg/connectbot/ConsoleActivity;->hardKeyboard:Z

    if-eqz v6, :cond_8

    .line 740
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->resize:Landroid/view/MenuItem;

    const/16 v8, 0x73

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 741
    :cond_8
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->resize:Landroid/view/MenuItem;

    const v8, 0x108003a

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 742
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->resize:Landroid/view/MenuItem;

    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 743
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->resize:Landroid/view/MenuItem;

    new-instance v8, Lorg/connectbot/ConsoleActivity$17;

    invoke-direct {v8, p0}, Lorg/connectbot/ConsoleActivity$17;-><init>(Lorg/connectbot/ConsoleActivity;)V

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 774
    return v7

    :cond_9
    move v6, v8

    .line 680
    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    .line 859
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 861
    const-string v4, "ConnectBot.ConsoleActivity"

    const-string v5, "onNewIntent called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lorg/connectbot/ConsoleActivity;->requested:Landroid/net/Uri;

    .line 865
    iget-object v4, p0, Lorg/connectbot/ConsoleActivity;->requested:Landroid/net/Uri;

    if-nez v4, :cond_0

    .line 866
    const-string v4, "ConnectBot.ConsoleActivity"

    const-string v5, "Got null intent data in onNewIntent()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :goto_0
    return-void

    .line 870
    :cond_0
    iget-object v4, p0, Lorg/connectbot/ConsoleActivity;->bound:Lorg/connectbot/service/TerminalManager;

    if-nez v4, :cond_1

    .line 871
    const-string v4, "ConnectBot.ConsoleActivity"

    const-string v5, "We\'re not bound in onNewIntent()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 875
    :cond_1
    iget-object v4, p0, Lorg/connectbot/ConsoleActivity;->bound:Lorg/connectbot/service/TerminalManager;

    iget-object v5, p0, Lorg/connectbot/ConsoleActivity;->requested:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/connectbot/service/TerminalManager;->getConnectedBridge(Ljava/lang/String;)Lorg/connectbot/service/TerminalBridge;

    move-result-object v2

    .line 876
    .local v2, requestedBridge:Lorg/connectbot/service/TerminalBridge;
    const/4 v3, 0x0

    .line 878
    .local v3, requestedIndex:I
    iget-object v5, p0, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    monitor-enter v5

    .line 879
    if-nez v2, :cond_3

    .line 883
    :try_start_0
    const-string v4, "ConnectBot.ConsoleActivity"

    const-string v6, "We couldnt find an existing bridge with URI=%s (nickname=%s),so creating one now"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 884
    iget-object v9, p0, Lorg/connectbot/ConsoleActivity;->requested:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lorg/connectbot/ConsoleActivity;->requested:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 883
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-object v4, p0, Lorg/connectbot/ConsoleActivity;->bound:Lorg/connectbot/service/TerminalManager;

    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->requested:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Lorg/connectbot/service/TerminalManager;->openConnection(Landroid/net/Uri;)Lorg/connectbot/service/TerminalBridge;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 892
    :try_start_1
    invoke-direct {p0, v2}, Lorg/connectbot/ConsoleActivity;->addNewTerminalView(Lorg/connectbot/service/TerminalBridge;)I

    move-result v3

    .line 900
    :cond_2
    :goto_1
    invoke-direct {p0, v3}, Lorg/connectbot/ConsoleActivity;->setDisplayedTerminal(I)V

    .line 878
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 886
    :catch_0
    move-exception v0

    .line 887
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "ConnectBot.ConsoleActivity"

    const-string v6, "Problem while trying to create new requested bridge from URI"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 889
    monitor-exit v5

    goto :goto_0

    .line 894
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    invoke-direct {p0, v2}, Lorg/connectbot/ConsoleActivity;->getFlipIndex(Lorg/connectbot/service/TerminalBridge;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    .line 895
    .local v1, flipIndex:I
    if-le v1, v3, :cond_2

    .line 896
    move v3, v1

    goto :goto_1
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 812
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 814
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/connectbot/ConsoleActivity;->setVolumeControlStream(I)V

    .line 815
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 828
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 829
    const-string v0, "ConnectBot.ConsoleActivity"

    const-string v1, "onPause called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-boolean v0, p0, Lorg/connectbot/ConsoleActivity;->forcedOrientation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/connectbot/ConsoleActivity;->bound:Lorg/connectbot/service/TerminalManager;

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lorg/connectbot/ConsoleActivity;->bound:Lorg/connectbot/service/TerminalManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/connectbot/service/TerminalManager;->setResizeAllowed(Z)V

    .line 833
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .parameter "menu"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 779
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 781
    const/4 v6, 0x5

    invoke-virtual {p0, v6}, Lorg/connectbot/ConsoleActivity;->setVolumeControlStream(I)V

    .line 783
    const v6, 0x7f0b0004

    invoke-virtual {p0, v6}, Lorg/connectbot/ConsoleActivity;->findCurrentView(I)Landroid/view/View;

    move-result-object v5

    .line 784
    .local v5, view:Landroid/view/View;
    instance-of v0, v5, Lorg/connectbot/TerminalView;

    .line 785
    .local v0, activeTerminal:Z
    const/4 v4, 0x0

    .line 786
    .local v4, sessionOpen:Z
    const/4 v3, 0x0

    .line 787
    .local v3, disconnected:Z
    const/4 v2, 0x0

    .line 789
    .local v2, canForwardPorts:Z
    if-eqz v0, :cond_0

    .line 790
    check-cast v5, Lorg/connectbot/TerminalView;

    .end local v5           #view:Landroid/view/View;
    iget-object v1, v5, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    .line 791
    .local v1, bridge:Lorg/connectbot/service/TerminalBridge;
    invoke-virtual {v1}, Lorg/connectbot/service/TerminalBridge;->isSessionOpen()Z

    move-result v4

    .line 792
    invoke-virtual {v1}, Lorg/connectbot/service/TerminalBridge;->isDisconnected()Z

    move-result v3

    .line 793
    invoke-virtual {v1}, Lorg/connectbot/service/TerminalBridge;->canFowardPorts()Z

    move-result v2

    .line 796
    .end local v1           #bridge:Lorg/connectbot/service/TerminalBridge;
    :cond_0
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->disconnect:Landroid/view/MenuItem;

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 797
    if-nez v4, :cond_1

    if-nez v3, :cond_3

    .line 798
    :cond_1
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->disconnect:Landroid/view/MenuItem;

    const v9, 0x7f0800a1

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 801
    :goto_0
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->copy:Landroid/view/MenuItem;

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 802
    iget-object v9, p0, Lorg/connectbot/ConsoleActivity;->paste:Landroid/view/MenuItem;

    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v6}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v4, :cond_4

    move v6, v7

    :goto_1
    invoke-interface {v9, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 803
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->portForward:Landroid/view/MenuItem;

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    move v8, v7

    :cond_2
    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 804
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->urlscan:Landroid/view/MenuItem;

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 805
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->resize:Landroid/view/MenuItem;

    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 807
    return v7

    .line 800
    :cond_3
    iget-object v6, p0, Lorg/connectbot/ConsoleActivity;->disconnect:Landroid/view/MenuItem;

    const v9, 0x7f080089

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_4
    move v6, v8

    .line 802
    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/16 v3, 0x80

    const/4 v2, 0x1

    .line 837
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 838
    const-string v0, "ConnectBot.ConsoleActivity"

    const-string v1, "onResume called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v0, p0, Lorg/connectbot/ConsoleActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "keepalive"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 843
    invoke-virtual {p0}, Lorg/connectbot/ConsoleActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 848
    :goto_0
    invoke-direct {p0}, Lorg/connectbot/ConsoleActivity;->configureOrientation()V

    .line 850
    iget-boolean v0, p0, Lorg/connectbot/ConsoleActivity;->forcedOrientation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/connectbot/ConsoleActivity;->bound:Lorg/connectbot/service/TerminalManager;

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lorg/connectbot/ConsoleActivity;->bound:Lorg/connectbot/service/TerminalManager;

    invoke-virtual {v0, v2}, Lorg/connectbot/service/TerminalManager;->setResizeAllowed(Z)V

    .line 852
    :cond_0
    return-void

    .line 845
    :cond_1
    invoke-virtual {p0}, Lorg/connectbot/ConsoleActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 819
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 823
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/connectbot/service/TerminalManager;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/connectbot/ConsoleActivity;->connection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/connectbot/ConsoleActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 824
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 906
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 908
    iget-object v0, p0, Lorg/connectbot/ConsoleActivity;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lorg/connectbot/ConsoleActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 909
    return-void
.end method

.method protected shiftCurrentTerminal(I)V
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v2, 0x1

    .line 913
    iget-object v3, p0, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    monitor-enter v3

    .line 914
    :try_start_0
    iget-object v4, p0, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v4}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v4

    if-le v4, v2, :cond_3

    move v1, v2

    .line 917
    .local v1, shouldAnimate:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 919
    const v4, 0x7f0b002a

    invoke-virtual {p0, v4}, Lorg/connectbot/ConsoleActivity;->findCurrentView(I)Landroid/view/View;

    move-result-object v0

    .line 920
    .local v0, overlay:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 921
    iget-object v4, p0, Lorg/connectbot/ConsoleActivity;->fade_stay_hidden:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 923
    :cond_0
    if-nez p1, :cond_4

    .line 924
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    iget-object v4, p0, Lorg/connectbot/ConsoleActivity;->slide_left_in:Landroid/view/animation/Animation;

    invoke-virtual {v2, v4}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 925
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    iget-object v4, p0, Lorg/connectbot/ConsoleActivity;->slide_left_out:Landroid/view/animation/Animation;

    invoke-virtual {v2, v4}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 926
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->showNext()V

    .line 934
    .end local v0           #overlay:Landroid/view/View;
    :cond_1
    :goto_1
    invoke-direct {p0}, Lorg/connectbot/ConsoleActivity;->updateDefault()V

    .line 936
    if-eqz v1, :cond_2

    .line 938
    const v2, 0x7f0b002a

    invoke-virtual {p0, v2}, Lorg/connectbot/ConsoleActivity;->findCurrentView(I)Landroid/view/View;

    move-result-object v0

    .line 939
    .restart local v0       #overlay:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 940
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity;->fade_out_delayed:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 943
    .end local v0           #overlay:Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lorg/connectbot/ConsoleActivity;->updatePromptVisible()V

    .line 913
    monitor-exit v3

    .line 945
    return-void

    .line 914
    .end local v1           #shouldAnimate:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 927
    .restart local v0       #overlay:Landroid/view/View;
    .restart local v1       #shouldAnimate:Z
    :cond_4
    if-ne p1, v2, :cond_1

    .line 928
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    iget-object v4, p0, Lorg/connectbot/ConsoleActivity;->slide_right_in:Landroid/view/animation/Animation;

    invoke-virtual {v2, v4}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 929
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    iget-object v4, p0, Lorg/connectbot/ConsoleActivity;->slide_right_out:Landroid/view/animation/Animation;

    invoke-virtual {v2, v4}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 930
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->showPrevious()V

    goto :goto_1

    .line 913
    .end local v0           #overlay:Landroid/view/View;
    .end local v1           #shouldAnimate:Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected updateEmptyVisible()V
    .locals 2

    .prologue
    .line 964
    iget-object v1, p0, Lorg/connectbot/ConsoleActivity;->empty:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/connectbot/ConsoleActivity;->flip:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 965
    return-void

    .line 964
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected updatePromptVisible()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 972
    const v3, 0x7f0b0004

    invoke-virtual {p0, v3}, Lorg/connectbot/ConsoleActivity;->findCurrentView(I)Landroid/view/View;

    move-result-object v2

    .line 975
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0}, Lorg/connectbot/ConsoleActivity;->hideAllPrompts()V

    .line 977
    instance-of v3, v2, Lorg/connectbot/TerminalView;

    if-nez v3, :cond_0

    .line 1005
    :goto_0
    return-void

    :cond_0
    move-object v3, v2

    .line 982
    check-cast v3, Lorg/connectbot/TerminalView;

    iget-object v3, v3, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v1, v3, Lorg/connectbot/service/TerminalBridge;->promptHelper:Lorg/connectbot/service/PromptHelper;

    .line 983
    .local v1, prompt:Lorg/connectbot/service/PromptHelper;
    const-class v3, Ljava/lang/String;

    iget-object v4, v1, Lorg/connectbot/service/PromptHelper;->promptRequested:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 984
    iget-object v3, p0, Lorg/connectbot/ConsoleActivity;->stringPromptGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 986
    iget-object v0, v1, Lorg/connectbot/service/PromptHelper;->promptInstructions:Ljava/lang/String;

    .line 987
    .local v0, instructions:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 988
    iget-object v3, p0, Lorg/connectbot/ConsoleActivity;->stringPromptInstructions:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 989
    iget-object v3, p0, Lorg/connectbot/ConsoleActivity;->stringPromptInstructions:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 992
    :goto_1
    iget-object v3, p0, Lorg/connectbot/ConsoleActivity;->stringPrompt:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 993
    iget-object v3, p0, Lorg/connectbot/ConsoleActivity;->stringPrompt:Landroid/widget/EditText;

    iget-object v4, v1, Lorg/connectbot/service/PromptHelper;->promptHint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 994
    iget-object v3, p0, Lorg/connectbot/ConsoleActivity;->stringPrompt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 991
    :cond_1
    iget-object v3, p0, Lorg/connectbot/ConsoleActivity;->stringPromptInstructions:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 996
    .end local v0           #instructions:Ljava/lang/String;
    :cond_2
    const-class v3, Ljava/lang/Boolean;

    iget-object v4, v1, Lorg/connectbot/service/PromptHelper;->promptRequested:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 997
    iget-object v3, p0, Lorg/connectbot/ConsoleActivity;->booleanPromptGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 998
    iget-object v3, p0, Lorg/connectbot/ConsoleActivity;->booleanPrompt:Landroid/widget/TextView;

    iget-object v4, v1, Lorg/connectbot/service/PromptHelper;->promptHint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    iget-object v3, p0, Lorg/connectbot/ConsoleActivity;->booleanYes:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0

    .line 1002
    :cond_3
    invoke-virtual {p0}, Lorg/connectbot/ConsoleActivity;->hideAllPrompts()V

    .line 1003
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method
