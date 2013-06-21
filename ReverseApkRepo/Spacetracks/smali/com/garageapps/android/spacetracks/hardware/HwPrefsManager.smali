.class public Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;
.super Ljava/lang/Object;
.source "HwPrefsManager.java"


# instance fields
.field private PREFS_NAME:Ljava/lang/String;

.field private PREFS_VERSION:I

.field public controlsKeys:I

.field public controlsScreen:I

.field public controlsSensors:I

.field public controlsVibration:I

.field public hashMap_1:I

.field public hashMap_2:I

.field public hashMap_3:I

.field public languageID:I

.field private mContext:Landroid/content/Context;

.field private mPrefs:Landroid/content/SharedPreferences;

.field public prefsVersion:I

.field public soundFX:I

.field public soundMusic:I

.field public soundVolume:I

.field public videoDetails:I

.field public videoDistance:I

.field public videoTextures:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 19
    const-string v0, "SpaceTracksPrefs"

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->PREFS_NAME:Ljava/lang/String;

    .line 20
    const/16 v0, 0x68

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->PREFS_VERSION:I

    .line 24
    iput v1, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->hashMap_1:I

    .line 25
    iput v1, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->hashMap_2:I

    .line 26
    iput v1, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->hashMap_3:I

    .line 27
    iput v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundMusic:I

    .line 28
    iput v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundFX:I

    .line 29
    iput v3, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundVolume:I

    .line 30
    iput v3, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->videoDistance:I

    .line 31
    iput v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->videoDetails:I

    .line 32
    iput v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->videoTextures:I

    .line 33
    iput v1, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->controlsKeys:I

    .line 34
    iput v1, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->controlsScreen:I

    .line 35
    iput v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->controlsSensors:I

    .line 36
    iput v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->controlsVibration:I

    .line 37
    iput v1, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->languageID:I

    .line 41
    iput-object p1, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method private switchValue(I)I
    .locals 0
    .parameter "value"

    .prologue
    .line 192
    if-nez p1, :cond_0

    .line 193
    const/4 p1, 0x1

    .line 198
    :goto_0
    return p1

    .line 196
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private updateValue(III)I
    .locals 0
    .parameter "value"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 203
    add-int/lit8 p1, p1, 0x1

    .line 205
    if-le p1, p3, :cond_0

    .line 206
    move p1, p2

    .line 208
    :cond_0
    return p1
.end method


# virtual methods
.method public decSoundVolume()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundVolume:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundVolume:I

    .line 136
    iget v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundVolume:I

    if-gez v0, :cond_0

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundVolume:I

    .line 139
    :cond_0
    iget v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundVolume:I

    return v0
.end method

.method public get()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 47
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->PREFS_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 50
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "prefsVersion"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->set()V

    .line 81
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "prefsVersion"

    iget v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->PREFS_VERSION:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->prefsVersion:I

    .line 60
    iget v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->prefsVersion:I

    iget v1, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->PREFS_VERSION:I

    if-eq v0, v1, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->set()V

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "hashMap_1"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->hashMap_1:I

    .line 67
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "hashMap_2"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->hashMap_2:I

    .line 68
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "hashMap_3"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->hashMap_3:I

    .line 69
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "soundMusic"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundMusic:I

    .line 70
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "soundFX"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundFX:I

    .line 71
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "soundVolume"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundVolume:I

    .line 72
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "videoDistance"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->videoDistance:I

    .line 73
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "videoDetails"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->videoDetails:I

    .line 74
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "videoTextures"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->videoTextures:I

    .line 75
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "controlsKeys"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->controlsKeys:I

    .line 76
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "controlsScreen"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->controlsScreen:I

    .line 77
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "controlsSensors"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->controlsSensors:I

    .line 78
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "controlsVibration"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->controlsVibration:I

    .line 79
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "languageID"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->languageID:I

    goto/16 :goto_0
.end method

.method public incSoundVolume()I
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 126
    iget v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundVolume:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundVolume:I

    .line 127
    iget v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundVolume:I

    if-le v0, v1, :cond_0

    .line 128
    iput v1, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundVolume:I

    .line 130
    :cond_0
    iget v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundVolume:I

    return v0
.end method

.method public set()V
    .locals 4

    .prologue
    .line 86
    iget-object v1, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->PREFS_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 87
    iget-object v1, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 88
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "prefsVersion"

    iget v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->PREFS_VERSION:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 89
    const-string v1, "hashMap_1"

    iget v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->hashMap_1:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 90
    const-string v1, "hashMap_2"

    iget v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->hashMap_2:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 91
    const-string v1, "hashMap_3"

    iget v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->hashMap_3:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 92
    const-string v1, "soundMusic"

    iget v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundMusic:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 93
    const-string v1, "soundFX"

    iget v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundFX:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 94
    const-string v1, "soundVolume"

    iget v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundVolume:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 95
    const-string v1, "videoDistance"

    iget v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->videoDistance:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 96
    const-string v1, "videoDetails"

    iget v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->videoDetails:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 97
    const-string v1, "videoTextures"

    iget v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->videoTextures:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 98
    const-string v1, "controlsKeys"

    iget v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->controlsKeys:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 99
    const-string v1, "controlsScreen"

    iget v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->controlsScreen:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 100
    const-string v1, "controlsSensors"

    iget v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->controlsSensors:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 101
    const-string v1, "controlsVibration"

    iget v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->controlsVibration:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 102
    const-string v1, "languageID"

    iget v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->languageID:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    return-void
.end method

.method public updateControlsKeys()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->controlsKeys:I

    invoke-direct {p0, v0}, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->switchValue(I)I

    move-result v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->controlsKeys:I

    .line 163
    iget v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->controlsKeys:I

    return v0
.end method

.method public updateControlsScreen()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->controlsScreen:I

    invoke-direct {p0, v0}, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->switchValue(I)I

    move-result v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->controlsScreen:I

    .line 169
    iget v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->controlsScreen:I

    return v0
.end method

.method public updateControlsSensors()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->controlsSensors:I

    invoke-direct {p0, v0}, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->switchValue(I)I

    move-result v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->controlsSensors:I

    .line 175
    iget v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->controlsSensors:I

    return v0
.end method

.method public updateControlsVibration()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->controlsVibration:I

    invoke-direct {p0, v0}, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->switchValue(I)I

    move-result v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->controlsVibration:I

    .line 181
    iget v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->controlsVibration:I

    return v0
.end method

.method public updateLanguage()I
    .locals 3

    .prologue
    .line 186
    iget v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->languageID:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, v0, v1, v2}, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->updateValue(III)I

    move-result v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->languageID:I

    .line 187
    iget v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->languageID:I

    return v0
.end method

.method public updateSoundFX()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundFX:I

    invoke-direct {p0, v0}, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->switchValue(I)I

    move-result v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundFX:I

    .line 115
    iget v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundFX:I

    return v0
.end method

.method public updateSoundMusic()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundMusic:I

    invoke-direct {p0, v0}, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->switchValue(I)I

    move-result v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundMusic:I

    .line 109
    iget v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundMusic:I

    return v0
.end method

.method public updateSoundVolume()I
    .locals 3

    .prologue
    .line 120
    iget v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundVolume:I

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-direct {p0, v0, v1, v2}, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->updateValue(III)I

    move-result v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundVolume:I

    .line 121
    iget v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundVolume:I

    return v0
.end method

.method public updateVideoDetails()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->videoDetails:I

    invoke-direct {p0, v0}, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->switchValue(I)I

    move-result v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->videoDetails:I

    .line 151
    iget v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->videoDetails:I

    return v0
.end method

.method public updateVideoDistance()I
    .locals 3

    .prologue
    .line 144
    iget v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->videoDistance:I

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-direct {p0, v0, v1, v2}, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->updateValue(III)I

    move-result v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->videoDistance:I

    .line 145
    iget v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->videoDistance:I

    return v0
.end method

.method public updateVideoTextures()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->videoTextures:I

    invoke-direct {p0, v0}, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->switchValue(I)I

    move-result v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->videoTextures:I

    .line 157
    iget v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->videoTextures:I

    return v0
.end method
