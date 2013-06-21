.class public Lcom/sugree/psychogun/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static final MAX_STREAMS:I = 0x4

.field private static final SOUND_CHARGE:I = 0x1

.field private static final SOUND_FIRE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Psychogun"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCharge:I

.field private mShake:Lcom/sugree/psychogun/ShakeListener;

.field private mSound:Landroid/media/SoundPool;

.field private mSoundMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected charge()V
    .locals 2

    .prologue
    .line 88
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sugree/psychogun/MainActivity;->play(II)I

    move-result v0

    iput v0, p0, Lcom/sugree/psychogun/MainActivity;->mCharge:I

    .line 89
    return-void
.end method

.method protected fire()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sugree/psychogun/MainActivity;->mSound:Landroid/media/SoundPool;

    iget v1, p0, Lcom/sugree/psychogun/MainActivity;->mCharge:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->pause(I)V

    .line 93
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sugree/psychogun/MainActivity;->play(II)I

    .line 94
    iget-object v0, p0, Lcom/sugree/psychogun/MainActivity;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 95
    return-void
.end method

.method protected initSounds()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 106
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sugree/psychogun/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sugree/psychogun/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 107
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/sugree/psychogun/MainActivity;->mSound:Landroid/media/SoundPool;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sugree/psychogun/MainActivity;->mSoundMap:Ljava/util/HashMap;

    .line 110
    iget-object v0, p0, Lcom/sugree/psychogun/MainActivity;->mSoundMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sugree/psychogun/MainActivity;->mSound:Landroid/media/SoundPool;

    const/high16 v3, 0x7f04

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/sugree/psychogun/MainActivity;->mSoundMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sugree/psychogun/MainActivity;->mSound:Landroid/media/SoundPool;

    const v3, 0x7f040001

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/16 v1, 0x400

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sugree/psychogun/MainActivity;->requestWindowFeature(I)Z

    .line 38
    invoke-virtual {p0}, Lcom/sugree/psychogun/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 42
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/sugree/psychogun/MainActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/sugree/psychogun/MainActivity;->initSounds()V

    .line 45
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/sugree/psychogun/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/sugree/psychogun/MainActivity;->mVibrator:Landroid/os/Vibrator;

    .line 47
    const/high16 v0, 0x7f06

    invoke-virtual {p0, v0}, Lcom/sugree/psychogun/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/sugree/psychogun/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/sugree/psychogun/MainActivity$1;-><init>(Lcom/sugree/psychogun/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 63
    new-instance v1, Lcom/sugree/psychogun/ShakeListener;

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/sugree/psychogun/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    invoke-direct {v1, v0}, Lcom/sugree/psychogun/ShakeListener;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v1, p0, Lcom/sugree/psychogun/MainActivity;->mShake:Lcom/sugree/psychogun/ShakeListener;

    .line 64
    iget-object v0, p0, Lcom/sugree/psychogun/MainActivity;->mShake:Lcom/sugree/psychogun/ShakeListener;

    const-wide v1, 0x3ffe666666666666L

    invoke-virtual {v0, v1, v2}, Lcom/sugree/psychogun/ShakeListener;->setForceThreshHold(D)V

    .line 65
    iget-object v0, p0, Lcom/sugree/psychogun/MainActivity;->mShake:Lcom/sugree/psychogun/ShakeListener;

    new-instance v1, Lcom/sugree/psychogun/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/sugree/psychogun/MainActivity$2;-><init>(Lcom/sugree/psychogun/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/sugree/psychogun/ShakeListener;->setOnShakeListener(Lcom/sugree/psychogun/ShakeListener$OnShakeListener;)V

    .line 71
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 83
    iget-object v0, p0, Lcom/sugree/psychogun/MainActivity;->mShake:Lcom/sugree/psychogun/ShakeListener;

    invoke-virtual {v0}, Lcom/sugree/psychogun/ShakeListener;->disable()V

    .line 84
    iget-object v0, p0, Lcom/sugree/psychogun/MainActivity;->mSound:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 85
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 76
    iget-object v0, p0, Lcom/sugree/psychogun/MainActivity;->mShake:Lcom/sugree/psychogun/ShakeListener;

    invoke-virtual {v0}, Lcom/sugree/psychogun/ShakeListener;->enable()V

    .line 77
    invoke-virtual {p0}, Lcom/sugree/psychogun/MainActivity;->initSounds()V

    .line 78
    return-void
.end method

.method protected play(II)I
    .locals 9
    .parameter "id"
    .parameter "loop"

    .prologue
    const/4 v1, 0x3

    .line 98
    iget-object v0, p0, Lcom/sugree/psychogun/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v7, v0

    .line 99
    .local v7, streamVolumeCurrent:F
    iget-object v0, p0, Lcom/sugree/psychogun/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v8, v0

    .line 100
    .local v8, streamVolumeMax:F
    div-float v2, v7, v8

    .line 102
    .local v2, volume:F
    iget-object v0, p0, Lcom/sugree/psychogun/MainActivity;->mSound:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/sugree/psychogun/MainActivity;->mSoundMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x1

    const/high16 v6, 0x3f80

    move v3, v2

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    return v0
.end method
