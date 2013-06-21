.class public Lcom/stickycoding/rokon/audio/RokonAudio;
.super Ljava/lang/Object;
.source "RokonAudio.java"


# static fields
.field public static final MAX_SOUNDS:I = 0x32

.field public static final MAX_STREAMS:I = 0x8

.field public static mute:Z

.field public static singleton:Lcom/stickycoding/rokon/audio/RokonAudio;


# instance fields
.field private i:I

.field private j:I

.field private masterVolume:F

.field private soundArr:[Lcom/stickycoding/rokon/audio/SoundFile;

.field private soundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/stickycoding/rokon/audio/RokonAudio;->mute:Z

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0x32

    new-array v0, v0, [Lcom/stickycoding/rokon/audio/SoundFile;

    iput-object v0, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->soundArr:[Lcom/stickycoding/rokon/audio/SoundFile;

    .line 33
    sput-object p0, Lcom/stickycoding/rokon/audio/RokonAudio;->singleton:Lcom/stickycoding/rokon/audio/RokonAudio;

    .line 34
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0x8

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->soundPool:Landroid/media/SoundPool;

    .line 35
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->masterVolume:F

    .line 36
    return-void
.end method


# virtual methods
.method public createSoundFile(Ljava/lang/String;)Lcom/stickycoding/rokon/audio/SoundFile;
    .locals 8
    .parameter "filename"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 83
    :try_start_0
    iget-object v3, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->soundPool:Landroid/media/SoundPool;

    invoke-static {}, Lcom/stickycoding/rokon/Rokon;->getActivity()Lcom/stickycoding/rokon/RokonActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/stickycoding/rokon/RokonActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v1

    .line 84
    .local v1, id:I
    new-instance v2, Lcom/stickycoding/rokon/audio/SoundFile;

    invoke-direct {v2, v1}, Lcom/stickycoding/rokon/audio/SoundFile;-><init>(I)V

    .line 85
    .local v2, soundFile:Lcom/stickycoding/rokon/audio/SoundFile;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SoundFile loaded as id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 86
    const/4 v3, -0x1

    iput v3, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->j:I

    .line 87
    const/4 v3, 0x0

    iput v3, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->i:I

    :goto_0
    iget v3, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->i:I

    const/16 v4, 0x32

    if-lt v3, v4, :cond_0

    .line 90
    iget v3, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->j:I

    if-ne v3, v6, :cond_2

    .line 91
    const-string v3, "TOO MANY SOUNDS"

    invoke-static {v3}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    move-object v3, v7

    .line 99
    .end local v1           #id:I
    .end local v2           #soundFile:Lcom/stickycoding/rokon/audio/SoundFile;
    :goto_1
    return-object v3

    .line 88
    .restart local v1       #id:I
    .restart local v2       #soundFile:Lcom/stickycoding/rokon/audio/SoundFile;
    :cond_0
    iget-object v3, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->soundArr:[Lcom/stickycoding/rokon/audio/SoundFile;

    iget v4, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->i:I

    aget-object v3, v3, v4

    if-nez v3, :cond_1

    .line 89
    iget v3, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->i:I

    iput v3, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->j:I

    .line 87
    :cond_1
    iget v3, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->i:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    .end local v1           #id:I
    .end local v2           #soundFile:Lcom/stickycoding/rokon/audio/SoundFile;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 97
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CANNOT FIND "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IN ASSETS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v7

    .line 99
    goto :goto_1

    .line 94
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #id:I
    .restart local v2       #soundFile:Lcom/stickycoding/rokon/audio/SoundFile;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->soundArr:[Lcom/stickycoding/rokon/audio/SoundFile;

    iget v4, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->j:I

    aput-object v2, v3, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v2

    .line 95
    goto :goto_1
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 55
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->i:I

    :goto_0
    iget v0, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->i:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->soundPool:Landroid/media/SoundPool;

    .line 60
    return-void

    .line 56
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->soundArr:[Lcom/stickycoding/rokon/audio/SoundFile;

    iget v1, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->i:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/stickycoding/rokon/audio/SoundFile;->unload()V

    .line 55
    iget v0, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->i:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getMasterVolume()F
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->masterVolume:F

    return v0
.end method

.method public getSoundPool()Landroid/media/SoundPool;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->soundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method public getSounds()[Lcom/stickycoding/rokon/audio/SoundFile;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->soundArr:[Lcom/stickycoding/rokon/audio/SoundFile;

    return-object v0
.end method

.method public isMuted()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/stickycoding/rokon/audio/RokonAudio;->mute:Z

    return v0
.end method

.method public mute()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/stickycoding/rokon/audio/RokonAudio;->mute:Z

    .line 40
    return-void
.end method

.method public removeAllSoundFiles()V
    .locals 3

    .prologue
    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->i:I

    :goto_0
    iget v0, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->i:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 121
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->soundArr:[Lcom/stickycoding/rokon/audio/SoundFile;

    iget v1, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->i:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 118
    iget v0, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->i:I

    goto :goto_0
.end method

.method public removeSoundFile(Lcom/stickycoding/rokon/audio/SoundFile;)V
    .locals 3
    .parameter "soundFile"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {p1}, Lcom/stickycoding/rokon/audio/SoundFile;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->i:I

    :goto_0
    iget v0, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->i:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 112
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->soundArr:[Lcom/stickycoding/rokon/audio/SoundFile;

    iget v1, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->i:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->soundArr:[Lcom/stickycoding/rokon/audio/SoundFile;

    iget v1, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->i:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->soundArr:[Lcom/stickycoding/rokon/audio/SoundFile;

    iget v1, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->i:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 108
    :cond_1
    iget v0, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->i:I

    goto :goto_0
.end method

.method public setMasterVolume(F)V
    .locals 0
    .parameter "masterVolume"

    .prologue
    .line 127
    iput p1, p0, Lcom/stickycoding/rokon/audio/RokonAudio;->masterVolume:F

    .line 128
    return-void
.end method

.method public unmute()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/stickycoding/rokon/audio/RokonAudio;->mute:Z

    .line 44
    return-void
.end method
