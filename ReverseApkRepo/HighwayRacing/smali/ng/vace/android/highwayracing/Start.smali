.class public Lng/vace/android/highwayracing/Start;
.super Landroid/app/Activity;
.source "Start.java"


# static fields
.field private static final EASY:I = 0x0

.field private static final HARD:I = 0x2

.field private static final MEDIUM:I = 0x1

.field private static final SELECT_CAR:I = 0x1

.field private static final START_GAME:I

.field static carButton:Landroid/widget/Button;

.field static difficultyGroup:Landroid/widget/RadioGroup;

.field static highestRank:Landroid/widget/TextView;

.field static highestScore:Landroid/widget/TextView;

.field static musicButton:Landroid/widget/ToggleButton;

.field static scoreButton:Landroid/widget/Button;

.field static scoreNinjaAdapter:Lcom/scoreninja/adapter/ScoreNinjaAdapter;

.field static soundButton:Landroid/widget/ToggleButton;

.field static startButton:Landroid/widget/Button;

.field static vibrationButton:Landroid/widget/ToggleButton;


# instance fields
.field config:Lng/vace/android/highwayracing/GameSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lng/vace/android/highwayracing/Start;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lng/vace/android/highwayracing/Start;->saveConfig()V

    return-void
.end method

.method private loadConfig()Lng/vace/android/highwayracing/GameSettings;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 174
    const-string v0, "highway-prefs"

    invoke-virtual {p0, v0, v9}, Lng/vace/android/highwayracing/Start;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 175
    .local v8, settings:Landroid/content/SharedPreferences;
    const-string v0, "highway-difficulty"

    invoke-interface {v8, v0, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 176
    .local v4, difficulty:I
    const-string v0, "highway-highestScore"

    invoke-interface {v8, v0, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 177
    .local v5, highestScore:I
    const-string v0, "highway-sound"

    invoke-interface {v8, v0, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 178
    .local v1, sound:Z
    const-string v0, "highway-music"

    invoke-interface {v8, v0, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 179
    .local v2, music:Z
    const-string v0, "highway-vibrate"

    invoke-interface {v8, v0, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 180
    .local v3, vibrate:Z
    const-string v0, "highway-car"

    invoke-interface {v8, v0, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 181
    .local v6, car:I
    const-string v0, "highway-unlock-level"

    invoke-interface {v8, v0, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 183
    .local v7, unlockLevel:I
    new-instance v0, Lng/vace/android/highwayracing/GameSettings;

    invoke-direct/range {v0 .. v7}, Lng/vace/android/highwayracing/GameSettings;-><init>(ZZZIIII)V

    return-object v0
.end method

.method private saveConfig()V
    .locals 4

    .prologue
    .line 193
    const-string v2, "highway-prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lng/vace/android/highwayracing/Start;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 194
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 195
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "highway-difficulty"

    iget-object v3, p0, Lng/vace/android/highwayracing/Start;->config:Lng/vace/android/highwayracing/GameSettings;

    invoke-virtual {v3}, Lng/vace/android/highwayracing/GameSettings;->getDifficulty()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 196
    const-string v2, "highway-highestScore"

    iget-object v3, p0, Lng/vace/android/highwayracing/Start;->config:Lng/vace/android/highwayracing/GameSettings;

    invoke-virtual {v3}, Lng/vace/android/highwayracing/GameSettings;->getHighestScore()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 197
    const-string v2, "highway-music"

    iget-object v3, p0, Lng/vace/android/highwayracing/Start;->config:Lng/vace/android/highwayracing/GameSettings;

    invoke-virtual {v3}, Lng/vace/android/highwayracing/GameSettings;->isMusic()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 198
    const-string v2, "highway-sound"

    iget-object v3, p0, Lng/vace/android/highwayracing/Start;->config:Lng/vace/android/highwayracing/GameSettings;

    invoke-virtual {v3}, Lng/vace/android/highwayracing/GameSettings;->isSound()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 199
    const-string v2, "highway-vibrate"

    iget-object v3, p0, Lng/vace/android/highwayracing/Start;->config:Lng/vace/android/highwayracing/GameSettings;

    invoke-virtual {v3}, Lng/vace/android/highwayracing/GameSettings;->isVibrate()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 200
    const-string v2, "highway-car"

    iget-object v3, p0, Lng/vace/android/highwayracing/Start;->config:Lng/vace/android/highwayracing/GameSettings;

    invoke-virtual {v3}, Lng/vace/android/highwayracing/GameSettings;->getCar()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 201
    const-string v2, "highway-unlock-level"

    iget-object v3, p0, Lng/vace/android/highwayracing/Start;->config:Lng/vace/android/highwayracing/GameSettings;

    invoke-virtual {v3}, Lng/vace/android/highwayracing/GameSettings;->getUnlockLevel()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 202
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 203
    return-void
.end method

.method private setupCarButton(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 94
    const v0, 0x7f07000e

    invoke-virtual {p0, v0}, Lng/vace/android/highwayracing/Start;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lng/vace/android/highwayracing/Start;->carButton:Landroid/widget/Button;

    .line 96
    sget-object v0, Lng/vace/android/highwayracing/Start;->carButton:Landroid/widget/Button;

    new-instance v1, Lng/vace/android/highwayracing/Start$2;

    invoke-direct {v1, p0, p1}, Lng/vace/android/highwayracing/Start$2;-><init>(Lng/vace/android/highwayracing/Start;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    return-void
.end method

.method private setupDifficultyRadioGroup()V
    .locals 3

    .prologue
    .line 151
    const v1, 0x7f070008

    invoke-virtual {p0, v1}, Lng/vace/android/highwayracing/Start;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    sput-object v1, Lng/vace/android/highwayracing/Start;->difficultyGroup:Landroid/widget/RadioGroup;

    .line 152
    iget-object v1, p0, Lng/vace/android/highwayracing/Start;->config:Lng/vace/android/highwayracing/GameSettings;

    invoke-virtual {v1}, Lng/vace/android/highwayracing/GameSettings;->getDifficulty()I

    move-result v0

    .line 154
    .local v0, difficulty:I
    if-nez v0, :cond_0

    .line 155
    sget-object v1, Lng/vace/android/highwayracing/Start;->difficultyGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f070009

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 156
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 157
    sget-object v1, Lng/vace/android/highwayracing/Start;->difficultyGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f07000a

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 158
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 159
    sget-object v1, Lng/vace/android/highwayracing/Start;->difficultyGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f07000b

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 161
    :cond_2
    sget-object v1, Lng/vace/android/highwayracing/Start;->difficultyGroup:Landroid/widget/RadioGroup;

    new-instance v2, Lng/vace/android/highwayracing/Start$7;

    invoke-direct {v2, p0}, Lng/vace/android/highwayracing/Start$7;-><init>(Lng/vace/android/highwayracing/Start;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 171
    return-void
.end method

.method private setupHighscoreText()V
    .locals 5

    .prologue
    const-string v4, " "

    .line 63
    iget-object v1, p0, Lng/vace/android/highwayracing/Start;->config:Lng/vace/android/highwayracing/GameSettings;

    invoke-virtual {v1}, Lng/vace/android/highwayracing/GameSettings;->getHighestScore()I

    move-result v0

    .line 65
    .local v0, score:I
    const v1, 0x7f07000c

    invoke-virtual {p0, v1}, Lng/vace/android/highwayracing/Start;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lng/vace/android/highwayracing/Start;->highestScore:Landroid/widget/TextView;

    .line 66
    sget-object v1, Lng/vace/android/highwayracing/Start;->highestScore:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f060022

    invoke-virtual {p0, v3}, Lng/vace/android/highwayracing/Start;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v1, 0x7f07000d

    invoke-virtual {p0, v1}, Lng/vace/android/highwayracing/Start;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lng/vace/android/highwayracing/Start;->highestRank:Landroid/widget/TextView;

    .line 68
    sget-object v1, Lng/vace/android/highwayracing/Start;->highestRank:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f060023

    invoke-virtual {p0, v3}, Lng/vace/android/highwayracing/Start;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, v0}, Lng/vace/android/highwayracing/util/TextUtil;->getRankFromScore(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method private setupMusicButton()V
    .locals 2

    .prologue
    .line 118
    const v0, 0x7f070005

    invoke-virtual {p0, v0}, Lng/vace/android/highwayracing/Start;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    sput-object v0, Lng/vace/android/highwayracing/Start;->musicButton:Landroid/widget/ToggleButton;

    .line 119
    sget-object v0, Lng/vace/android/highwayracing/Start;->musicButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lng/vace/android/highwayracing/Start;->config:Lng/vace/android/highwayracing/GameSettings;

    invoke-virtual {v1}, Lng/vace/android/highwayracing/GameSettings;->isMusic()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 121
    sget-object v0, Lng/vace/android/highwayracing/Start;->musicButton:Landroid/widget/ToggleButton;

    new-instance v1, Lng/vace/android/highwayracing/Start$4;

    invoke-direct {v1, p0}, Lng/vace/android/highwayracing/Start$4;-><init>(Lng/vace/android/highwayracing/Start;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void
.end method

.method private setupScoreButton()V
    .locals 2

    .prologue
    .line 108
    const v0, 0x7f07000f

    invoke-virtual {p0, v0}, Lng/vace/android/highwayracing/Start;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lng/vace/android/highwayracing/Start;->scoreButton:Landroid/widget/Button;

    .line 110
    sget-object v0, Lng/vace/android/highwayracing/Start;->scoreButton:Landroid/widget/Button;

    new-instance v1, Lng/vace/android/highwayracing/Start$3;

    invoke-direct {v1, p0}, Lng/vace/android/highwayracing/Start$3;-><init>(Lng/vace/android/highwayracing/Start;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void
.end method

.method private setupSoundButton()V
    .locals 2

    .prologue
    .line 129
    const v0, 0x7f070006

    invoke-virtual {p0, v0}, Lng/vace/android/highwayracing/Start;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    sput-object v0, Lng/vace/android/highwayracing/Start;->soundButton:Landroid/widget/ToggleButton;

    .line 130
    sget-object v0, Lng/vace/android/highwayracing/Start;->soundButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lng/vace/android/highwayracing/Start;->config:Lng/vace/android/highwayracing/GameSettings;

    invoke-virtual {v1}, Lng/vace/android/highwayracing/GameSettings;->isSound()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 132
    sget-object v0, Lng/vace/android/highwayracing/Start;->soundButton:Landroid/widget/ToggleButton;

    new-instance v1, Lng/vace/android/highwayracing/Start$5;

    invoke-direct {v1, p0}, Lng/vace/android/highwayracing/Start$5;-><init>(Lng/vace/android/highwayracing/Start;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    return-void
.end method

.method private setupStartButton(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 72
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lng/vace/android/highwayracing/Start;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lng/vace/android/highwayracing/Start;->startButton:Landroid/widget/Button;

    .line 74
    sget-object v0, Lng/vace/android/highwayracing/Start;->startButton:Landroid/widget/Button;

    new-instance v1, Lng/vace/android/highwayracing/Start$1;

    invoke-direct {v1, p0, p1}, Lng/vace/android/highwayracing/Start$1;-><init>(Lng/vace/android/highwayracing/Start;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method private setupVibrationButton()V
    .locals 2

    .prologue
    .line 140
    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lng/vace/android/highwayracing/Start;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    sput-object v0, Lng/vace/android/highwayracing/Start;->vibrationButton:Landroid/widget/ToggleButton;

    .line 141
    sget-object v0, Lng/vace/android/highwayracing/Start;->vibrationButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lng/vace/android/highwayracing/Start;->config:Lng/vace/android/highwayracing/GameSettings;

    invoke-virtual {v1}, Lng/vace/android/highwayracing/GameSettings;->isVibrate()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 143
    sget-object v0, Lng/vace/android/highwayracing/Start;->vibrationButton:Landroid/widget/ToggleButton;

    new-instance v1, Lng/vace/android/highwayracing/Start$6;

    invoke-direct {v1, p0}, Lng/vace/android/highwayracing/Start$6;-><init>(Lng/vace/android/highwayracing/Start;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    return-void
.end method


# virtual methods
.method public getConfig()Lng/vace/android/highwayracing/GameSettings;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lng/vace/android/highwayracing/Start;->config:Lng/vace/android/highwayracing/GameSettings;

    if-nez v0, :cond_0

    .line 188
    invoke-direct {p0}, Lng/vace/android/highwayracing/Start;->loadConfig()Lng/vace/android/highwayracing/GameSettings;

    move-result-object v0

    iput-object v0, p0, Lng/vace/android/highwayracing/Start;->config:Lng/vace/android/highwayracing/GameSettings;

    .line 189
    :cond_0
    iget-object v0, p0, Lng/vace/android/highwayracing/Start;->config:Lng/vace/android/highwayracing/GameSettings;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v0, -0x1

    .line 207
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 209
    if-nez p1, :cond_1

    .line 210
    if-eqz p3, :cond_0

    if-ne p2, v0, :cond_0

    .line 211
    iget-object v0, p0, Lng/vace/android/highwayracing/Start;->config:Lng/vace/android/highwayracing/GameSettings;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "highestscore"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lng/vace/android/highwayracing/GameSettings;->setHighestScore(I)V

    .line 212
    iget-object v0, p0, Lng/vace/android/highwayracing/Start;->config:Lng/vace/android/highwayracing/GameSettings;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "unlockLevel"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lng/vace/android/highwayracing/GameSettings;->setUnlockLevel(I)V

    .line 213
    invoke-direct {p0}, Lng/vace/android/highwayracing/Start;->saveConfig()V

    .line 214
    invoke-direct {p0}, Lng/vace/android/highwayracing/Start;->setupHighscoreText()V

    .line 216
    sget-object v0, Lng/vace/android/highwayracing/Start;->scoreNinjaAdapter:Lcom/scoreninja/adapter/ScoreNinjaAdapter;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "score"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/scoreninja/adapter/ScoreNinjaAdapter;->show(I)V

    .line 225
    :cond_0
    :goto_0
    sget-object v0, Lng/vace/android/highwayracing/Start;->scoreNinjaAdapter:Lcom/scoreninja/adapter/ScoreNinjaAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/scoreninja/adapter/ScoreNinjaAdapter;->onActivityResult(IILandroid/content/Intent;)V

    .line 226
    return-void

    .line 219
    :cond_1
    if-eqz p3, :cond_0

    if-ne p2, v0, :cond_0

    .line 220
    iget-object v0, p0, Lng/vace/android/highwayracing/Start;->config:Lng/vace/android/highwayracing/GameSettings;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "selectedCar"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lng/vace/android/highwayracing/GameSettings;->setCar(I)V

    .line 221
    invoke-direct {p0}, Lng/vace/android/highwayracing/Start;->saveConfig()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x400

    const/4 v2, 0x1

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0, v2}, Lng/vace/android/highwayracing/Start;->requestWindowFeature(I)Z

    .line 42
    invoke-virtual {p0}, Lng/vace/android/highwayracing/Start;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 43
    invoke-virtual {p0, v2}, Lng/vace/android/highwayracing/Start;->setRequestedOrientation(I)V

    .line 45
    move-object v0, p0

    .line 46
    .local v0, context:Landroid/content/Context;
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lng/vace/android/highwayracing/Start;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lng/vace/android/highwayracing/Start;->getConfig()Lng/vace/android/highwayracing/GameSettings;

    move-result-object v1

    iput-object v1, p0, Lng/vace/android/highwayracing/Start;->config:Lng/vace/android/highwayracing/GameSettings;

    .line 50
    invoke-direct {p0, v0}, Lng/vace/android/highwayracing/Start;->setupStartButton(Landroid/content/Context;)V

    .line 51
    invoke-direct {p0, v0}, Lng/vace/android/highwayracing/Start;->setupCarButton(Landroid/content/Context;)V

    .line 52
    invoke-direct {p0}, Lng/vace/android/highwayracing/Start;->setupScoreButton()V

    .line 53
    invoke-direct {p0}, Lng/vace/android/highwayracing/Start;->setupMusicButton()V

    .line 54
    invoke-direct {p0}, Lng/vace/android/highwayracing/Start;->setupSoundButton()V

    .line 55
    invoke-direct {p0}, Lng/vace/android/highwayracing/Start;->setupVibrationButton()V

    .line 56
    invoke-direct {p0}, Lng/vace/android/highwayracing/Start;->setupDifficultyRadioGroup()V

    .line 57
    invoke-direct {p0}, Lng/vace/android/highwayracing/Start;->setupHighscoreText()V

    .line 59
    new-instance v1, Lcom/scoreninja/adapter/ScoreNinjaAdapter;

    const-string v2, "highwaypatrol"

    const-string v3, "AFAAAD684AFF69E1C27DD06B973BD3FB"

    invoke-direct {v1, p0, v2, v3}, Lcom/scoreninja/adapter/ScoreNinjaAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lng/vace/android/highwayracing/Start;->scoreNinjaAdapter:Lcom/scoreninja/adapter/ScoreNinjaAdapter;

    .line 60
    return-void
.end method
