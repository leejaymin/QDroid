.class public Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;
.super Ljava/lang/Object;
.source "DrawRace2ScoreLoop.java"


# static fields
.field private static ENABLED:Z

.field private static INITED:Z

.field private static USER_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    sput-boolean v0, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->ENABLED:Z

    .line 34
    sput-boolean v0, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->INITED:Z

    .line 35
    const-string v0, ""

    sput-object v0, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->USER_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->INITED:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    sput-boolean p0, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->INITED:Z

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->ENABLED:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    sput-boolean p0, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->ENABLED:Z

    return p0
.end method

.method static synthetic access$200()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->internalShowProfile()V

    return-void
.end method

.method static synthetic access$300(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-static {p0}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->internalShowLeaderBoard(I)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-static {p0}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->showAchievementPopup(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    sput-object p0, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->USER_NAME:Ljava/lang/String;

    return-object p0
.end method

.method private static checkTerms()Z
    .locals 3

    .prologue
    .line 105
    invoke-static {}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->get()Lcom/scoreloop/client/android/ui/ScoreloopManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/scoreloop/client/android/ui/ScoreloopManager;->userRejectedTermsOfService(Lcom/scoreloop/client/android/core/model/Continuation;)Z

    move-result v0

    .line 106
    .local v0, rejected:Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static deinit()V
    .locals 2

    .prologue
    .line 61
    sget-boolean v0, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->INITED:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 63
    invoke-static {}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->destroy()V

    .line 65
    :cond_0
    return-void
.end method

.method public static getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->USER_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 41
    sget-boolean v0, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->INITED:Z

    if-nez v0, :cond_0

    .line 43
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2Native;->appActivity:Landroid/app/Activity;

    new-instance v1, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$1;

    invoke-direct {v1}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 57
    :cond_0
    return-void
.end method

.method private static internalShowLeaderBoard(I)V
    .locals 3
    .parameter "boardId"

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/redlynx/drawrace2/DrawRace2Native;->appActivity:Landroid/app/Activity;

    const-class v2, Lcom/scoreloop/client/android/ui/LeaderboardsScreenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "mode"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    sget-object v1, Lcom/redlynx/drawrace2/DrawRace2Native;->appActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 155
    return-void
.end method

.method private static internalShowProfile()V
    .locals 4

    .prologue
    .line 111
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2Native;->appActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/redlynx/drawrace2/DrawRace2Native;->appActivity:Landroid/app/Activity;

    const-class v3, Lcom/scoreloop/client/android/ui/EntryScreenActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method

.method public static loadUserName()V
    .locals 2

    .prologue
    .line 230
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2Native;->appActivity:Landroid/app/Activity;

    new-instance v1, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$6;

    invoke-direct {v1}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$6;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method

.method public static postAchievement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "achievementId"
    .parameter "description"

    .prologue
    .line 192
    move-object v0, p1

    .line 193
    .local v0, desc:Ljava/lang/String;
    move-object v1, p0

    .line 194
    .local v1, id:Ljava/lang/String;
    sget-object v2, Lcom/redlynx/drawrace2/DrawRace2Native;->appActivity:Landroid/app/Activity;

    new-instance v3, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$5;

    invoke-direct {v3, v1, v0}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 205
    return-void
.end method

.method public static postResult(ID)V
    .locals 5
    .parameter "levelIndex"
    .parameter "value"

    .prologue
    .line 159
    sget-boolean v3, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->INITED:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 162
    move v0, p0

    .line 163
    .local v0, index:I
    move-wide v1, p1

    .line 170
    .local v1, val:D
    sget-object v3, Lcom/redlynx/drawrace2/DrawRace2Native;->appActivity:Landroid/app/Activity;

    new-instance v4, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$4;

    invoke-direct {v4, v1, v2, v0}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$4;-><init>(DI)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 188
    .end local v0           #index:I
    .end local v1           #val:D
    :cond_0
    return-void
.end method

.method public static native scoreLoopNameReceived()V
.end method

.method public static native scoreLoopRejected()V
.end method

.method private static showAchievementPopup(Ljava/lang/String;)V
    .locals 9
    .parameter "content"

    .prologue
    const/4 v8, 0x0

    .line 209
    sget-object v5, Lcom/redlynx/drawrace2/DrawRace2Native;->appActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 210
    .local v1, inflater:Landroid/view/LayoutInflater;
    const/high16 v6, 0x7f03

    sget-object v5, Lcom/redlynx/drawrace2/DrawRace2Native;->appActivity:Landroid/app/Activity;

    const/high16 v7, 0x7f0c

    invoke-virtual {v5, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v1, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 213
    .local v2, layout:Landroid/view/View;
    const v5, 0x7f0c0001

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 214
    .local v0, image:Landroid/widget/ImageView;
    const v5, 0x7f020061

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    const v5, 0x7f0c0002

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 216
    .local v3, text:Landroid/widget/TextView;
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    new-instance v4, Landroid/widget/Toast;

    sget-object v5, Lcom/redlynx/drawrace2/DrawRace2Native;->appActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 219
    .local v4, toast:Landroid/widget/Toast;
    const/16 v5, 0x10

    invoke-virtual {v4, v5, v8, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 220
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setDuration(I)V

    .line 221
    invoke-virtual {v4, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 222
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 223
    return-void
.end method

.method public static showLeaderBoard(I)V
    .locals 3
    .parameter "boardId"

    .prologue
    .line 116
    sget-boolean v1, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->INITED:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 118
    move v0, p0

    .line 122
    .local v0, id:I
    sget-object v1, Lcom/redlynx/drawrace2/DrawRace2Native;->appActivity:Landroid/app/Activity;

    new-instance v2, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$3;

    invoke-direct {v2, v0}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$3;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 146
    .end local v0           #id:I
    :cond_0
    return-void
.end method

.method public static showProfile()V
    .locals 2

    .prologue
    .line 69
    sget-boolean v0, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->INITED:Z

    if-nez v0, :cond_0

    .line 71
    invoke-static {}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop;->scoreLoopRejected()V

    .line 102
    :goto_0
    return-void

    .line 75
    :cond_0
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2Native;->appActivity:Landroid/app/Activity;

    new-instance v1, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$2;

    invoke-direct {v1}, Lcom/redlynx/drawrace2/DrawRace2ScoreLoop$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
