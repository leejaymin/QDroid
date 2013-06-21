.class public Lng/vace/android/highwayracing/HighwayPatrol;
.super Landroid/app/Activity;
.source "HighwayPatrol.java"


# instance fields
.field audioManager:Landroid/media/AudioManager;

.field carLevel:I

.field difficulty:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

.field highestRank:I

.field highestScore:I

.field midi:Landroid/media/MediaPlayer;

.field private music:Z

.field final random:Ljava/util/Random;

.field score:I

.field private sound:Z

.field private soundMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lng/vace/android/highwayracing/game/GameEnums$SoundType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field soundPool:Landroid/media/SoundPool;

.field private sounds:[I

.field unlockLevel:I

.field private vibrate:Z

.field vibrator:Landroid/os/Vibrator;

.field view:Lng/vace/android/highwayracing/game/GameView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    sget-object v0, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;->MEDIUM:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    iput-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->difficulty:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    .line 25
    iput-boolean v1, p0, Lng/vace/android/highwayracing/HighwayPatrol;->sound:Z

    .line 26
    iput-boolean v1, p0, Lng/vace/android/highwayracing/HighwayPatrol;->music:Z

    .line 27
    iput-boolean v1, p0, Lng/vace/android/highwayracing/HighwayPatrol;->vibrate:Z

    .line 32
    iput v2, p0, Lng/vace/android/highwayracing/HighwayPatrol;->carLevel:I

    .line 33
    iput v2, p0, Lng/vace/android/highwayracing/HighwayPatrol;->unlockLevel:I

    .line 41
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->random:Ljava/util/Random;

    .line 43
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->sounds:[I

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->soundMap:Ljava/util/HashMap;

    return-void
.end method

.method private setupDifficulty(Landroid/os/Bundle;)V
    .locals 3
    .parameter "prefs"

    .prologue
    .line 94
    const-string v1, "difficulty"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 96
    .local v0, diff:I
    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;->EASY:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    iput-object v1, p0, Lng/vace/android/highwayracing/HighwayPatrol;->difficulty:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    .line 98
    if-nez v0, :cond_0

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;->EASY:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    iput-object v1, p0, Lng/vace/android/highwayracing/HighwayPatrol;->difficulty:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    .line 99
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;->MEDIUM:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    iput-object v1, p0, Lng/vace/android/highwayracing/HighwayPatrol;->difficulty:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    .line 100
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;->HARD:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    iput-object v1, p0, Lng/vace/android/highwayracing/HighwayPatrol;->difficulty:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    .line 102
    :cond_2
    iget-object v1, p0, Lng/vace/android/highwayracing/HighwayPatrol;->view:Lng/vace/android/highwayracing/game/GameView;

    iget-object v2, p0, Lng/vace/android/highwayracing/HighwayPatrol;->difficulty:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    invoke-virtual {v1, v2}, Lng/vace/android/highwayracing/game/GameView;->setDifficulty(Lng/vace/android/highwayracing/game/GameEnums$Difficulty;)V

    .line 103
    return-void
.end method

.method private setupGameFromIntent(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 70
    invoke-virtual {p0}, Lng/vace/android/highwayracing/HighwayPatrol;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    .local v0, extras:Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lng/vace/android/highwayracing/HighwayPatrol;->setupDifficulty(Landroid/os/Bundle;)V

    .line 74
    const-string v1, "music"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lng/vace/android/highwayracing/HighwayPatrol;->setMusic(Z)V

    .line 75
    const-string v1, "sound"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lng/vace/android/highwayracing/HighwayPatrol;->setSound(Z)V

    .line 76
    const-string v1, "vibrate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lng/vace/android/highwayracing/HighwayPatrol;->setVibrate(Z)V

    .line 78
    const-string v1, "highestrank"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lng/vace/android/highwayracing/HighwayPatrol;->setHighestRank(I)V

    .line 79
    const-string v1, "highestscore"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lng/vace/android/highwayracing/HighwayPatrol;->setHighestScore(I)V

    .line 80
    const-string v1, "selectedCar"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lng/vace/android/highwayracing/HighwayPatrol;->carLevel:I

    .line 81
    const-string v1, "unlockLevel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lng/vace/android/highwayracing/HighwayPatrol;->unlockLevel:I

    .line 83
    iget-boolean v1, p0, Lng/vace/android/highwayracing/HighwayPatrol;->vibrate:Z

    if-eqz v1, :cond_0

    .line 84
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lng/vace/android/highwayracing/HighwayPatrol;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lng/vace/android/highwayracing/HighwayPatrol;->vibrator:Landroid/os/Vibrator;

    .line 86
    :cond_0
    iget-boolean v1, p0, Lng/vace/android/highwayracing/HighwayPatrol;->sound:Z

    if-eqz v1, :cond_1

    .line 87
    invoke-direct {p0, p1}, Lng/vace/android/highwayracing/HighwayPatrol;->setupSounds(Landroid/content/Context;)V

    .line 89
    :cond_1
    iget-boolean v1, p0, Lng/vace/android/highwayracing/HighwayPatrol;->music:Z

    if-eqz v1, :cond_2

    .line 90
    invoke-direct {p0}, Lng/vace/android/highwayracing/HighwayPatrol;->setupMusic()V

    .line 91
    :cond_2
    return-void
.end method

.method private setupMusic()V
    .locals 2

    .prologue
    .line 149
    const v0, 0x7f040007

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->midi:Landroid/media/MediaPlayer;

    .line 150
    iget-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->midi:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 151
    return-void
.end method

.method private setupSounds(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 136
    iget-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->soundMap:Ljava/util/HashMap;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->CRASHBIG:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    iget-object v2, p0, Lng/vace/android/highwayracing/HighwayPatrol;->soundPool:Landroid/media/SoundPool;

    const v3, 0x7f040001

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->soundMap:Ljava/util/HashMap;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->CRASH2:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    iget-object v2, p0, Lng/vace/android/highwayracing/HighwayPatrol;->soundPool:Landroid/media/SoundPool;

    const v3, 0x7f040002

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->soundMap:Ljava/util/HashMap;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->CRASH3:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    iget-object v2, p0, Lng/vace/android/highwayracing/HighwayPatrol;->soundPool:Landroid/media/SoundPool;

    const v3, 0x7f040003

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->soundMap:Ljava/util/HashMap;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->HORN:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    iget-object v2, p0, Lng/vace/android/highwayracing/HighwayPatrol;->soundPool:Landroid/media/SoundPool;

    const v3, 0x7f040004

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->soundMap:Ljava/util/HashMap;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->HORN2:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    iget-object v2, p0, Lng/vace/android/highwayracing/HighwayPatrol;->soundPool:Landroid/media/SoundPool;

    const v3, 0x7f040005

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->soundMap:Ljava/util/HashMap;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->HORN3:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    iget-object v2, p0, Lng/vace/android/highwayracing/HighwayPatrol;->soundPool:Landroid/media/SoundPool;

    const v3, 0x7f040006

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->soundMap:Ljava/util/HashMap;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->SPLAT:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    iget-object v2, p0, Lng/vace/android/highwayracing/HighwayPatrol;->soundPool:Landroid/media/SoundPool;

    const v3, 0x7f040008

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->soundMap:Ljava/util/HashMap;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->BONUS:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    iget-object v2, p0, Lng/vace/android/highwayracing/HighwayPatrol;->soundPool:Landroid/media/SoundPool;

    const/high16 v3, 0x7f04

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->audioManager:Landroid/media/AudioManager;

    .line 146
    return-void
.end method

.method private stopMusic()V
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->music:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->midi:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanupAndExit()V
    .locals 3

    .prologue
    .line 220
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 221
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "score"

    iget v2, p0, Lng/vace/android/highwayracing/HighwayPatrol;->score:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    const-string v1, "highestscore"

    iget v2, p0, Lng/vace/android/highwayracing/HighwayPatrol;->highestScore:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    const-string v1, "highestrank"

    iget v2, p0, Lng/vace/android/highwayracing/HighwayPatrol;->highestRank:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    const-string v1, "unlockLevel"

    iget v2, p0, Lng/vace/android/highwayracing/HighwayPatrol;->unlockLevel:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lng/vace/android/highwayracing/HighwayPatrol;->setResult(ILandroid/content/Intent;)V

    .line 226
    invoke-virtual {p0}, Lng/vace/android/highwayracing/HighwayPatrol;->finish()V

    .line 227
    return-void
.end method

.method public getCarLevel()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->carLevel:I

    return v0
.end method

.method public getHighestScore()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->highestScore:I

    return v0
.end method

.method public getUnlockLevel()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->unlockLevel:I

    return v0
.end method

.method public isMusic()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->music:Z

    return v0
.end method

.method public isSound()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->sound:Z

    return v0
.end method

.method public isVibrate()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->vibrate:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 132
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 133
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstance"

    .prologue
    const/16 v2, 0x400

    const/4 v1, 0x1

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0, v1}, Lng/vace/android/highwayracing/HighwayPatrol;->requestWindowFeature(I)Z

    .line 51
    invoke-virtual {p0}, Lng/vace/android/highwayracing/HighwayPatrol;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 52
    invoke-virtual {p0, v1}, Lng/vace/android/highwayracing/HighwayPatrol;->setRequestedOrientation(I)V

    .line 54
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lng/vace/android/highwayracing/HighwayPatrol;->setContentView(I)V

    .line 56
    const v0, 0x7f070004

    invoke-virtual {p0, v0}, Lng/vace/android/highwayracing/HighwayPatrol;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lng/vace/android/highwayracing/game/GameView;

    iput-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->view:Lng/vace/android/highwayracing/game/GameView;

    .line 57
    iget-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->view:Lng/vace/android/highwayracing/game/GameView;

    invoke-virtual {v0, p0}, Lng/vace/android/highwayracing/game/GameView;->setApplication(Lng/vace/android/highwayracing/HighwayPatrol;)V

    .line 62
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->soundPool:Landroid/media/SoundPool;

    .line 64
    invoke-virtual {p0}, Lng/vace/android/highwayracing/HighwayPatrol;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lng/vace/android/highwayracing/HighwayPatrol;->setupGameFromIntent(Landroid/content/Context;)V

    .line 66
    invoke-virtual {p0}, Lng/vace/android/highwayracing/HighwayPatrol;->startMusic()V

    .line 67
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 231
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 232
    iput-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->view:Lng/vace/android/highwayracing/game/GameView;

    .line 234
    iput-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->soundPool:Landroid/media/SoundPool;

    .line 235
    iput-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->audioManager:Landroid/media/AudioManager;

    .line 236
    iput-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->midi:Landroid/media/MediaPlayer;

    .line 237
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 238
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Lng/vace/android/highwayracing/HighwayPatrol;->stopMusic()V

    .line 109
    iget-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->view:Lng/vace/android/highwayracing/game/GameView;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/GameView;->pauseGame()V

    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 112
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->view:Lng/vace/android/highwayracing/game/GameView;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/game/GameView;->resumeGame()V

    .line 124
    iget-boolean v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->music:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lng/vace/android/highwayracing/HighwayPatrol;->startMusic()V

    .line 127
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 128
    return-void
.end method

.method public playRandomCrashSound()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->random:Ljava/util/Random;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 247
    :goto_0
    return-void

    .line 243
    :pswitch_0
    sget-object v0, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->CRASH2:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    invoke-virtual {p0, v0}, Lng/vace/android/highwayracing/HighwayPatrol;->playSound(Lng/vace/android/highwayracing/game/GameEnums$SoundType;)V

    .line 245
    :pswitch_1
    sget-object v0, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->CRASH3:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    invoke-virtual {p0, v0}, Lng/vace/android/highwayracing/HighwayPatrol;->playSound(Lng/vace/android/highwayracing/game/GameEnums$SoundType;)V

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public playRandomHornSound()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->random:Ljava/util/Random;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 258
    :goto_0
    return-void

    .line 252
    :pswitch_0
    sget-object v0, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->HORN:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    invoke-virtual {p0, v0}, Lng/vace/android/highwayracing/HighwayPatrol;->playSound(Lng/vace/android/highwayracing/game/GameEnums$SoundType;)V

    .line 254
    :pswitch_1
    sget-object v0, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->HORN2:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    invoke-virtual {p0, v0}, Lng/vace/android/highwayracing/HighwayPatrol;->playSound(Lng/vace/android/highwayracing/game/GameEnums$SoundType;)V

    .line 256
    :pswitch_2
    sget-object v0, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->HORN3:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    invoke-virtual {p0, v0}, Lng/vace/android/highwayracing/HighwayPatrol;->playSound(Lng/vace/android/highwayracing/game/GameEnums$SoundType;)V

    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public playSound(Lng/vace/android/highwayracing/game/GameEnums$SoundType;)V
    .locals 9
    .parameter "soundType"

    .prologue
    const/4 v1, 0x3

    .line 154
    iget-boolean v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->sound:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v7, v0

    .line 156
    .local v7, streamVolumeCurrent:F
    iget-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v8, v0

    .line 157
    .local v8, streamVolumeMax:F
    div-float v2, v7, v8

    .line 158
    .local v2, volume:F
    iget-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lng/vace/android/highwayracing/HighwayPatrol;->soundMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 160
    .end local v2           #volume:F
    .end local v7           #streamVolumeCurrent:F
    .end local v8           #streamVolumeMax:F
    :cond_0
    return-void
.end method

.method public setHighestRank(I)V
    .locals 0
    .parameter "highestRank"

    .prologue
    .line 196
    iput p1, p0, Lng/vace/android/highwayracing/HighwayPatrol;->highestRank:I

    .line 197
    return-void
.end method

.method public setHighestScore(I)V
    .locals 0
    .parameter "highestScore"

    .prologue
    .line 200
    iput p1, p0, Lng/vace/android/highwayracing/HighwayPatrol;->highestScore:I

    .line 201
    return-void
.end method

.method public setMusic(Z)V
    .locals 0
    .parameter "music"

    .prologue
    .line 178
    iput-boolean p1, p0, Lng/vace/android/highwayracing/HighwayPatrol;->music:Z

    .line 179
    return-void
.end method

.method public setScore(I)V
    .locals 0
    .parameter "score"

    .prologue
    .line 265
    iput p1, p0, Lng/vace/android/highwayracing/HighwayPatrol;->score:I

    .line 266
    return-void
.end method

.method public setSound(Z)V
    .locals 0
    .parameter "sound"

    .prologue
    .line 170
    iput-boolean p1, p0, Lng/vace/android/highwayracing/HighwayPatrol;->sound:Z

    .line 171
    return-void
.end method

.method public setUnlockLevel(I)V
    .locals 0
    .parameter "unlockLevel"

    .prologue
    .line 192
    iput p1, p0, Lng/vace/android/highwayracing/HighwayPatrol;->unlockLevel:I

    .line 193
    return-void
.end method

.method public setVibrate(Z)V
    .locals 0
    .parameter "vibrate"

    .prologue
    .line 174
    iput-boolean p1, p0, Lng/vace/android/highwayracing/HighwayPatrol;->vibrate:Z

    .line 175
    return-void
.end method

.method public startMusic()V
    .locals 2

    .prologue
    .line 163
    iget-boolean v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->music:Z

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->midi:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 165
    iget-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->midi:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 167
    :cond_0
    return-void
.end method

.method public vibrate()V
    .locals 3

    .prologue
    .line 186
    iget-boolean v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->vibrate:Z

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lng/vace/android/highwayracing/HighwayPatrol;->vibrator:Landroid/os/Vibrator;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 189
    :cond_0
    return-void

    .line 187
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
