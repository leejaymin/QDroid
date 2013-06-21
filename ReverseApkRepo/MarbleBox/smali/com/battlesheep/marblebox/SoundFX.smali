.class public Lcom/battlesheep/marblebox/SoundFX;
.super Ljava/lang/Object;
.source "SoundFX.java"


# static fields
.field public static final SFX_CRASH:I = 0x2

.field public static final SFX_CRYSTAL:I = 0x1

.field public static final SFX_GLASS:I

.field private static smContext:Landroid/content/Context;

.field private static smIsInitialized:Z

.field private static smSfxLibrary:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/stickycoding/rokon/audio/SoundFile;",
            ">;"
        }
    .end annotation
.end field

.field private static smSoundFxOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-boolean v0, Lcom/battlesheep/marblebox/SoundFX;->smIsInitialized:Z

    .line 25
    sput-boolean v0, Lcom/battlesheep/marblebox/SoundFX;->smSoundFxOn:Z

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/battlesheep/marblebox/SoundFX;->smSfxLibrary:Ljava/util/Map;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 37
    sget-boolean v0, Lcom/battlesheep/marblebox/SoundFX;->smIsInitialized:Z

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/stickycoding/rokon/audio/RokonAudio;

    invoke-direct {v0}, Lcom/stickycoding/rokon/audio/RokonAudio;-><init>()V

    sput-object v0, Lcom/stickycoding/rokon/audio/RokonAudio;->singleton:Lcom/stickycoding/rokon/audio/RokonAudio;

    .line 41
    sget-object v0, Lcom/battlesheep/marblebox/SoundFX;->smSfxLibrary:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/stickycoding/rokon/audio/RokonAudio;->singleton:Lcom/stickycoding/rokon/audio/RokonAudio;

    const-string v3, "sfx/glass.ogg"

    invoke-virtual {v2, v3}, Lcom/stickycoding/rokon/audio/RokonAudio;->createSoundFile(Ljava/lang/String;)Lcom/stickycoding/rokon/audio/SoundFile;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/battlesheep/marblebox/SoundFX;->smSfxLibrary:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/stickycoding/rokon/audio/RokonAudio;->singleton:Lcom/stickycoding/rokon/audio/RokonAudio;

    const-string v3, "sfx/crash.ogg"

    invoke-virtual {v2, v3}, Lcom/stickycoding/rokon/audio/RokonAudio;->createSoundFile(Ljava/lang/String;)Lcom/stickycoding/rokon/audio/SoundFile;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/battlesheep/marblebox/SoundFX;->smSfxLibrary:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/stickycoding/rokon/audio/RokonAudio;->singleton:Lcom/stickycoding/rokon/audio/RokonAudio;

    const-string v3, "sfx/crystal.ogg"

    invoke-virtual {v2, v3}, Lcom/stickycoding/rokon/audio/RokonAudio;->createSoundFile(Ljava/lang/String;)Lcom/stickycoding/rokon/audio/SoundFile;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sput-object p0, Lcom/battlesheep/marblebox/SoundFX;->smContext:Landroid/content/Context;

    .line 46
    sput-boolean v4, Lcom/battlesheep/marblebox/SoundFX;->smIsInitialized:Z

    .line 49
    :cond_0
    invoke-static {}, Lcom/battlesheep/marblebox/SoundFX;->refreshPreferences()V

    .line 50
    return-void
.end method

.method public static play(I)V
    .locals 2
    .parameter "sfxId"

    .prologue
    .line 57
    sget-boolean v0, Lcom/battlesheep/marblebox/SoundFX;->smSoundFxOn:Z

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/battlesheep/marblebox/SoundFX;->smSfxLibrary:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/stickycoding/rokon/audio/SoundFile;

    invoke-virtual {p0}, Lcom/stickycoding/rokon/audio/SoundFile;->play()Lcom/stickycoding/rokon/audio/AudioStream;

    .line 60
    :cond_0
    return-void
.end method

.method public static refreshPreferences()V
    .locals 3

    .prologue
    .line 67
    sget-object v1, Lcom/battlesheep/marblebox/SoundFX;->smContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 68
    .local v0, preferences:Landroid/content/SharedPreferences;
    sget-object v1, Lcom/battlesheep/marblebox/SoundFX;->smContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/battlesheep/marblebox/SoundFX;->smSoundFxOn:Z

    .line 69
    return-void
.end method
