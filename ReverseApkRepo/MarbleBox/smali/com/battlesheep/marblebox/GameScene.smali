.class public Lcom/battlesheep/marblebox/GameScene;
.super Lcom/stickycoding/rokon/Scene;
.source "GameScene.java"

# interfaces
.implements Lcom/stickycoding/rokon/device/OnAccelerometerChange;


# static fields
.field private static final BACKGROUND_INTERVAL:I = 0xea60

.field public static final ENTITIES_LAYER:I = 0x1

.field public static final MISC_LAYER:I = 0x2

.field public static final MSG_LAYER:I = 0x3

.field private static final SHAKE_DROP_INTERVAL:J = 0x1f4L

.field private static final SHAKE_FORCE:F = -2.5f

.field private static final SHAKE_INTERVAL:J = 0x5dcL

.field private static final SHAKE_NEXT_INTERVAL:J = 0x5dcL

.field private static final SHAKE_THRESHOLD:F = 1000.0f

.field private static final START_LIVES:I = 0x3

.field private static final TILT_FACTOR:F = 0.25f

.field private static final TILT_THRESHOLD:F = 2.8f

.field private static final VIBRATE_LENGTH:J = 0xc8L


# instance fields
.field private mGameOver:Z

.field private mIdleDrop:Ljava/lang/Runnable;

.field private mInputMarble:Lcom/battlesheep/marblebox/entities/Marble;

.field private mInputSyncRoot:Ljava/lang/Object;

.field private mLives:I

.field private mMinSequenceSize:I

.field private mOwner:Lcom/battlesheep/marblebox/activities/GameActivity;

.field private mProcessInput:Ljava/lang/Runnable;

.field private mRotateBackground:Ljava/lang/Runnable;

.field private mScore:J

.field private mShake:Ljava/lang/Runnable;

.field private mShakeDrop:Ljava/lang/Runnable;

.field private mShakeSyncRoot:Ljava/lang/Object;

.field private mShakes:I

.field private mSpriteFactory:Lcom/battlesheep/marblebox/SpriteFactory;

.field private mUpdateUI:Ljava/lang/Runnable;

.field private mUseVibration:Z


# direct methods
.method public constructor <init>(Lcom/battlesheep/marblebox/activities/GameActivity;)V
    .locals 3
    .parameter "owner"

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 83
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v1, v0}, Lcom/stickycoding/rokon/Scene;-><init>(I[I)V

    .line 52
    iput-boolean v2, p0, Lcom/battlesheep/marblebox/GameScene;->mUseVibration:Z

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/battlesheep/marblebox/GameScene;->mScore:J

    .line 56
    const/4 v0, 0x3

    iput v0, p0, Lcom/battlesheep/marblebox/GameScene;->mLives:I

    .line 59
    iput v2, p0, Lcom/battlesheep/marblebox/GameScene;->mShakes:I

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/battlesheep/marblebox/GameScene;->mShakeSyncRoot:Ljava/lang/Object;

    .line 63
    const/4 v0, 0x2

    iput v0, p0, Lcom/battlesheep/marblebox/GameScene;->mMinSequenceSize:I

    .line 66
    new-instance v0, Lcom/battlesheep/marblebox/SpriteFactory;

    invoke-direct {v0}, Lcom/battlesheep/marblebox/SpriteFactory;-><init>()V

    iput-object v0, p0, Lcom/battlesheep/marblebox/GameScene;->mSpriteFactory:Lcom/battlesheep/marblebox/SpriteFactory;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/battlesheep/marblebox/GameScene;->mInputMarble:Lcom/battlesheep/marblebox/entities/Marble;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/battlesheep/marblebox/GameScene;->mInputSyncRoot:Ljava/lang/Object;

    .line 76
    iput-boolean v2, p0, Lcom/battlesheep/marblebox/GameScene;->mGameOver:Z

    .line 125
    new-instance v0, Lcom/battlesheep/marblebox/GameScene$1;

    invoke-direct {v0, p0}, Lcom/battlesheep/marblebox/GameScene$1;-><init>(Lcom/battlesheep/marblebox/GameScene;)V

    iput-object v0, p0, Lcom/battlesheep/marblebox/GameScene;->mUpdateUI:Ljava/lang/Runnable;

    .line 133
    new-instance v0, Lcom/battlesheep/marblebox/GameScene$2;

    invoke-direct {v0, p0}, Lcom/battlesheep/marblebox/GameScene$2;-><init>(Lcom/battlesheep/marblebox/GameScene;)V

    iput-object v0, p0, Lcom/battlesheep/marblebox/GameScene;->mRotateBackground:Ljava/lang/Runnable;

    .line 141
    new-instance v0, Lcom/battlesheep/marblebox/GameScene$3;

    invoke-direct {v0, p0}, Lcom/battlesheep/marblebox/GameScene$3;-><init>(Lcom/battlesheep/marblebox/GameScene;)V

    iput-object v0, p0, Lcom/battlesheep/marblebox/GameScene;->mIdleDrop:Ljava/lang/Runnable;

    .line 237
    new-instance v0, Lcom/battlesheep/marblebox/GameScene$4;

    invoke-direct {v0, p0}, Lcom/battlesheep/marblebox/GameScene$4;-><init>(Lcom/battlesheep/marblebox/GameScene;)V

    iput-object v0, p0, Lcom/battlesheep/marblebox/GameScene;->mShake:Ljava/lang/Runnable;

    .line 270
    new-instance v0, Lcom/battlesheep/marblebox/GameScene$5;

    invoke-direct {v0, p0}, Lcom/battlesheep/marblebox/GameScene$5;-><init>(Lcom/battlesheep/marblebox/GameScene;)V

    iput-object v0, p0, Lcom/battlesheep/marblebox/GameScene;->mShakeDrop:Ljava/lang/Runnable;

    .line 283
    new-instance v0, Lcom/battlesheep/marblebox/GameScene$6;

    invoke-direct {v0, p0}, Lcom/battlesheep/marblebox/GameScene$6;-><init>(Lcom/battlesheep/marblebox/GameScene;)V

    iput-object v0, p0, Lcom/battlesheep/marblebox/GameScene;->mProcessInput:Ljava/lang/Runnable;

    .line 84
    iput-object p1, p0, Lcom/battlesheep/marblebox/GameScene;->mOwner:Lcom/battlesheep/marblebox/activities/GameActivity;

    .line 85
    return-void

    .line 83
    nop

    :array_0
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$0(Lcom/battlesheep/marblebox/GameScene;)Lcom/battlesheep/marblebox/activities/GameActivity;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene;->mOwner:Lcom/battlesheep/marblebox/activities/GameActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/battlesheep/marblebox/GameScene;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/battlesheep/marblebox/GameScene;->mLives:I

    return v0
.end method

.method static synthetic access$10(Lcom/battlesheep/marblebox/GameScene;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene;->mInputSyncRoot:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$11(Lcom/battlesheep/marblebox/GameScene;)Lcom/battlesheep/marblebox/entities/Marble;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene;->mInputMarble:Lcom/battlesheep/marblebox/entities/Marble;

    return-object v0
.end method

.method static synthetic access$12(Lcom/battlesheep/marblebox/GameScene;Lcom/battlesheep/marblebox/entities/Marble;)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lcom/battlesheep/marblebox/GameScene;->removeSequence(Lcom/battlesheep/marblebox/entities/Marble;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$13(Lcom/battlesheep/marblebox/GameScene;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/battlesheep/marblebox/GameScene;->mScore:J

    return-void
.end method

.method static synthetic access$14(Lcom/battlesheep/marblebox/GameScene;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene;->mUpdateUI:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$15(Lcom/battlesheep/marblebox/GameScene;ILjava/util/Collection;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/battlesheep/marblebox/GameScene;->add(ILjava/util/Collection;)V

    return-void
.end method

.method static synthetic access$16(Lcom/battlesheep/marblebox/GameScene;Lcom/battlesheep/marblebox/entities/Marble;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/battlesheep/marblebox/GameScene;->mInputMarble:Lcom/battlesheep/marblebox/entities/Marble;

    return-void
.end method

.method static synthetic access$2(Lcom/battlesheep/marblebox/GameScene;)J
    .locals 2
    .parameter

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/battlesheep/marblebox/GameScene;->mScore:J

    return-wide v0
.end method

.method static synthetic access$3(Lcom/battlesheep/marblebox/GameScene;)Lcom/battlesheep/marblebox/SpriteFactory;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene;->mSpriteFactory:Lcom/battlesheep/marblebox/SpriteFactory;

    return-object v0
.end method

.method static synthetic access$4(Lcom/battlesheep/marblebox/GameScene;)I
    .locals 1
    .parameter

    .prologue
    .line 59
    iget v0, p0, Lcom/battlesheep/marblebox/GameScene;->mShakes:I

    return v0
.end method

.method static synthetic access$5(Lcom/battlesheep/marblebox/GameScene;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene;->mShakeSyncRoot:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6(Lcom/battlesheep/marblebox/GameScene;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput p1, p0, Lcom/battlesheep/marblebox/GameScene;->mShakes:I

    return-void
.end method

.method static synthetic access$7(Lcom/battlesheep/marblebox/GameScene;)Lcom/badlogic/gdx/physics/box2d/World;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene;->world:Lcom/badlogic/gdx/physics/box2d/World;

    return-object v0
.end method

.method static synthetic access$8(Lcom/battlesheep/marblebox/GameScene;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 270
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene;->mShakeDrop:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9(Lcom/battlesheep/marblebox/GameScene;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene;->mShake:Ljava/lang/Runnable;

    return-object v0
.end method

.method private add(ILjava/util/Collection;)V
    .locals 3
    .parameter "layerIndex"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/stickycoding/rokon/GameObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p2, objects:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/stickycoding/rokon/GameObject;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    return-void

    .line 163
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stickycoding/rokon/GameObject;

    .line 164
    .local v0, gameObject:Lcom/stickycoding/rokon/GameObject;
    invoke-virtual {p0, p1, v0}, Lcom/battlesheep/marblebox/GameScene;->add(ILcom/stickycoding/rokon/GameObject;)V

    goto :goto_0
.end method

.method private blockTouch()V
    .locals 6

    .prologue
    const/high16 v4, 0x447a

    const/4 v2, 0x0

    .line 220
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene;->world:Lcom/badlogic/gdx/physics/box2d/World;

    new-instance v1, Lcom/battlesheep/marblebox/GameScene$8;

    invoke-direct {v1, p0}, Lcom/battlesheep/marblebox/GameScene$8;-><init>(Lcom/battlesheep/marblebox/GameScene;)V

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/World;->QueryAABB(Lcom/badlogic/gdx/physics/box2d/QueryCallback;FFFF)V

    .line 232
    return-void
.end method

.method private removeSequence(Lcom/battlesheep/marblebox/entities/Marble;)J
    .locals 6
    .parameter "start"

    .prologue
    .line 331
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 333
    .local v1, toRemove:Ljava/util/Set;,"Ljava/util/Set<Lcom/battlesheep/marblebox/entities/Marble;>;"
    invoke-virtual {p1, v1}, Lcom/battlesheep/marblebox/entities/Marble;->aggregateSequence(Ljava/util/Set;)V

    .line 336
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    iget v3, p0, Lcom/battlesheep/marblebox/GameScene;->mMinSequenceSize:I

    if-lt v2, v3, :cond_1

    .line 337
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 340
    const-wide/high16 v2, 0x4000

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    sget-object v4, Lcom/battlesheep/marblebox/LevelParameters;->current:Lcom/battlesheep/marblebox/LevelParameters;

    iget v4, v4, Lcom/battlesheep/marblebox/LevelParameters;->scoreMultiplier:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    .line 343
    :goto_1
    return-wide v2

    .line 337
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/battlesheep/marblebox/entities/Marble;

    .line 338
    .local v0, marble:Lcom/battlesheep/marblebox/entities/Marble;
    invoke-virtual {v0}, Lcom/battlesheep/marblebox/entities/Marble;->remove()V

    goto :goto_0

    .line 343
    .end local v0           #marble:Lcom/battlesheep/marblebox/entities/Marble;
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public affectLives(I)V
    .locals 1
    .parameter "delta"

    .prologue
    .line 364
    iget v0, p0, Lcom/battlesheep/marblebox/GameScene;->mLives:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/battlesheep/marblebox/GameScene;->mLives:I

    .line 365
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene;->mUpdateUI:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/battlesheep/marblebox/GameScene;->queueUI(Ljava/lang/Runnable;)Z

    .line 366
    return-void
.end method

.method public affectScore(I)V
    .locals 4
    .parameter "effect"

    .prologue
    .line 359
    iget-wide v0, p0, Lcom/battlesheep/marblebox/GameScene;->mScore:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/battlesheep/marblebox/GameScene;->mScore:J

    .line 360
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene;->mUpdateUI:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/battlesheep/marblebox/GameScene;->queueUI(Ljava/lang/Runnable;)Z

    .line 361
    return-void
.end method

.method public death()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 182
    iget v0, p0, Lcom/battlesheep/marblebox/GameScene;->mLives:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/battlesheep/marblebox/GameScene;->mLives:I

    .line 184
    iget v0, p0, Lcom/battlesheep/marblebox/GameScene;->mLives:I

    if-ltz v0, :cond_1

    .line 186
    iget-boolean v0, p0, Lcom/battlesheep/marblebox/GameScene;->mUseVibration:Z

    if-eqz v0, :cond_0

    .line 187
    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Lcom/stickycoding/rokon/device/Vibrator;->vibrate(J)V

    .line 191
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/battlesheep/marblebox/SoundFX;->play(I)V

    .line 194
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene;->mUpdateUI:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/battlesheep/marblebox/GameScene;->queueUI(Ljava/lang/Runnable;)Z

    .line 197
    iget v0, p0, Lcom/battlesheep/marblebox/GameScene;->mLives:I

    if-nez v0, :cond_1

    .line 198
    iput-boolean v2, p0, Lcom/battlesheep/marblebox/GameScene;->mGameOver:Z

    .line 200
    invoke-direct {p0}, Lcom/battlesheep/marblebox/GameScene;->blockTouch()V

    .line 202
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene;->mInputSyncRoot:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/battlesheep/marblebox/GameScene;->mInputMarble:Lcom/battlesheep/marblebox/entities/Marble;

    .line 202
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    new-instance v0, Lcom/battlesheep/marblebox/GameScene$7;

    invoke-direct {v0, p0}, Lcom/battlesheep/marblebox/GameScene$7;-><init>(Lcom/battlesheep/marblebox/GameScene;)V

    invoke-virtual {p0, v0}, Lcom/battlesheep/marblebox/GameScene;->queueUI(Ljava/lang/Runnable;)Z

    .line 214
    :cond_1
    return-void

    .line 202
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dropMarbles(I)V
    .locals 2
    .parameter "nMarbles"

    .prologue
    .line 355
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/battlesheep/marblebox/GameScene;->mSpriteFactory:Lcom/battlesheep/marblebox/SpriteFactory;

    invoke-virtual {v1, p1}, Lcom/battlesheep/marblebox/SpriteFactory;->createMarbles(I)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/battlesheep/marblebox/GameScene;->add(ILjava/util/Collection;)V

    .line 356
    return-void
.end method

.method public getOwner()Lcom/battlesheep/marblebox/activities/GameActivity;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene;->mOwner:Lcom/battlesheep/marblebox/activities/GameActivity;

    return-object v0
.end method

.method public getScore()J
    .locals 2

    .prologue
    .line 351
    iget-wide v0, p0, Lcom/battlesheep/marblebox/GameScene;->mScore:J

    return-wide v0
.end method

.method public multiShake(I)V
    .locals 2
    .parameter "numShakes"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene;->mShakeSyncRoot:Ljava/lang/Object;

    monitor-enter v0

    .line 370
    :try_start_0
    iget v1, p0, Lcom/battlesheep/marblebox/GameScene;->mShakes:I

    if-nez v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/battlesheep/marblebox/GameScene;->mShake:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/battlesheep/marblebox/GameScene;->queueGame(Ljava/lang/Runnable;)Z

    .line 373
    :cond_0
    iget v1, p0, Lcom/battlesheep/marblebox/GameScene;->mShakes:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/battlesheep/marblebox/GameScene;->mShakes:I

    .line 369
    monitor-exit v0

    .line 375
    return-void

    .line 369
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAccelerometerChange(FFF)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene;->mShakeSyncRoot:Ljava/lang/Object;

    monitor-enter v0

    .line 381
    :try_start_0
    iget v1, p0, Lcom/battlesheep/marblebox/GameScene;->mShakes:I

    if-lez v1, :cond_0

    .line 382
    monitor-exit v0

    .line 403
    :goto_0
    return-void

    .line 379
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    new-instance v0, Lcom/battlesheep/marblebox/GameScene$9;

    invoke-direct {v0, p0}, Lcom/battlesheep/marblebox/GameScene$9;-><init>(Lcom/battlesheep/marblebox/GameScene;)V

    invoke-virtual {p0, v0}, Lcom/battlesheep/marblebox/GameScene;->queueGame(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onGameLoop()V
    .locals 0

    .prologue
    .line 424
    return-void
.end method

.method public onKeyDown(I)V
    .locals 0
    .parameter "keyCode"

    .prologue
    .line 418
    return-void
.end method

.method public onKeyUp(I)V
    .locals 0
    .parameter "keyCode"

    .prologue
    .line 421
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public onReady()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 95
    invoke-static {}, Lcom/stickycoding/rokon/Time;->pause()V

    .line 96
    invoke-static {}, Lcom/stickycoding/rokon/Time;->resume()V

    .line 99
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/World;

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    const/4 v2, 0x0

    const v3, 0x411ccccd

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/World;-><init>(Lcom/badlogic/gdx/math/Vector2;Z)V

    sput-object v0, Lcom/stickycoding/rokon/Physics;->world:Lcom/badlogic/gdx/physics/box2d/World;

    .line 100
    sget-object v0, Lcom/stickycoding/rokon/Physics;->world:Lcom/badlogic/gdx/physics/box2d/World;

    invoke-virtual {p0, v0}, Lcom/battlesheep/marblebox/GameScene;->setWorld(Lcom/badlogic/gdx/physics/box2d/World;)V

    .line 103
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/GameScene;->getOwner()Lcom/battlesheep/marblebox/activities/GameActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/battlesheep/marblebox/activities/GameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/battlesheep/marblebox/SoundFX;->initialize(Landroid/content/Context;)V

    .line 106
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/GameScene;->refreshPreferences()V

    .line 110
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene;->mRotateBackground:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/battlesheep/marblebox/GameScene;->queueGame(Ljava/lang/Runnable;)Z

    .line 113
    sget-object v0, Lcom/battlesheep/marblebox/LevelParameters;->current:Lcom/battlesheep/marblebox/LevelParameters;

    iget v0, v0, Lcom/battlesheep/marblebox/LevelParameters;->idleTimeout:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/battlesheep/marblebox/GameScene;->mIdleDrop:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v1, v2}, Lcom/battlesheep/marblebox/GameScene;->queueGame(JLjava/lang/Runnable;)Z

    .line 115
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene;->mSpriteFactory:Lcom/battlesheep/marblebox/SpriteFactory;

    invoke-virtual {v0}, Lcom/battlesheep/marblebox/SpriteFactory;->createBox()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/battlesheep/marblebox/GameScene;->add(ILjava/util/Collection;)V

    .line 116
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene;->mSpriteFactory:Lcom/battlesheep/marblebox/SpriteFactory;

    sget-object v1, Lcom/battlesheep/marblebox/LevelParameters;->current:Lcom/battlesheep/marblebox/LevelParameters;

    iget v1, v1, Lcom/battlesheep/marblebox/LevelParameters;->startingMarbles:I

    invoke-virtual {v0, v1}, Lcom/battlesheep/marblebox/SpriteFactory;->createMarbles(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/battlesheep/marblebox/GameScene;->add(ILjava/util/Collection;)V

    .line 118
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene;->mUpdateUI:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/battlesheep/marblebox/GameScene;->queueUI(Ljava/lang/Runnable;)Z

    .line 120
    const/high16 v0, 0x447a

    sput v0, Lcom/stickycoding/rokon/device/Accelerometer;->shakeThreshold:F

    .line 121
    const-wide/16 v0, 0x5dc

    sput-wide v0, Lcom/stickycoding/rokon/device/Accelerometer;->minShakeInterval:J

    .line 122
    invoke-static {p0}, Lcom/stickycoding/rokon/device/Accelerometer;->startListening(Lcom/stickycoding/rokon/device/OnAccelerometerChange;)Z

    .line 123
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public onShake(F)V
    .locals 2
    .parameter "speed"

    .prologue
    .line 407
    const/high16 v0, 0x7f80

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/battlesheep/marblebox/GameScene;->mShakeSyncRoot:Ljava/lang/Object;

    monitor-enter v0

    .line 409
    :try_start_0
    iget v1, p0, Lcom/battlesheep/marblebox/GameScene;->mShakes:I

    if-nez v1, :cond_0

    .line 410
    iget v1, p0, Lcom/battlesheep/marblebox/GameScene;->mShakes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/battlesheep/marblebox/GameScene;->mShakes:I

    .line 411
    iget-object v1, p0, Lcom/battlesheep/marblebox/GameScene;->mShake:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/battlesheep/marblebox/GameScene;->queueGame(Ljava/lang/Runnable;)Z

    .line 408
    :cond_0
    monitor-exit v0

    .line 415
    :cond_1
    return-void

    .line 408
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onTouchDown(Lcom/stickycoding/rokon/Drawable;FFIII)V
    .locals 3
    .parameter "object"
    .parameter "x"
    .parameter "y"
    .parameter "action"
    .parameter "pointerCount"
    .parameter "pointerId"

    .prologue
    .line 314
    iget-boolean v1, p0, Lcom/battlesheep/marblebox/GameScene;->mGameOver:Z

    if-eqz v1, :cond_0

    .line 328
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-static {}, Lcom/stickycoding/rokon/GameThread;->getPaused()Z

    move-result v1

    if-nez v1, :cond_1

    .line 318
    instance-of v1, p1, Lcom/battlesheep/marblebox/entities/Marble;

    if-eqz v1, :cond_1

    .line 320
    iget-object v2, p0, Lcom/battlesheep/marblebox/GameScene;->mInputSyncRoot:Ljava/lang/Object;

    monitor-enter v2

    .line 322
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/battlesheep/marblebox/entities/Marble;

    move-object v1, v0

    iput-object v1, p0, Lcom/battlesheep/marblebox/GameScene;->mInputMarble:Lcom/battlesheep/marblebox/entities/Marble;

    .line 320
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    iget-object v1, p0, Lcom/battlesheep/marblebox/GameScene;->mProcessInput:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/battlesheep/marblebox/GameScene;->queueGame(Ljava/lang/Runnable;)Z

    .line 327
    :cond_1
    invoke-super/range {p0 .. p6}, Lcom/stickycoding/rokon/Scene;->onTouch(Lcom/stickycoding/rokon/Drawable;FFIII)V

    goto :goto_0

    .line 320
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public outOfScene(Lcom/battlesheep/marblebox/entities/Marble;)Z
    .locals 2
    .parameter "marble"

    .prologue
    .line 175
    invoke-virtual {p1}, Lcom/battlesheep/marblebox/entities/Marble;->getY()F

    move-result v0

    invoke-static {}, Lcom/battlesheep/marblebox/activities/GameActivity;->getGameHeight()F

    move-result v1

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 176
    invoke-virtual {p1}, Lcom/battlesheep/marblebox/entities/Marble;->getY()F

    move-result v0

    invoke-static {}, Lcom/battlesheep/marblebox/activities/GameActivity;->getGameHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 177
    invoke-virtual {p1}, Lcom/battlesheep/marblebox/entities/Marble;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/battlesheep/marblebox/GameScene;->mSpriteFactory:Lcom/battlesheep/marblebox/SpriteFactory;

    invoke-virtual {v1}, Lcom/battlesheep/marblebox/SpriteFactory;->getMarbleSize()F

    move-result v1

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 178
    invoke-virtual {p1}, Lcom/battlesheep/marblebox/entities/Marble;->getX()F

    move-result v0

    invoke-static {}, Lcom/battlesheep/marblebox/activities/GameActivity;->getGameWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 174
    goto :goto_0
.end method

.method public refreshPreferences()V
    .locals 3

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/GameScene;->getOwner()Lcom/battlesheep/marblebox/activities/GameActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/battlesheep/marblebox/activities/GameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 154
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/battlesheep/marblebox/GameScene;->getOwner()Lcom/battlesheep/marblebox/activities/GameActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/battlesheep/marblebox/activities/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/battlesheep/marblebox/GameScene;->mUseVibration:Z

    .line 155
    return-void
.end method
