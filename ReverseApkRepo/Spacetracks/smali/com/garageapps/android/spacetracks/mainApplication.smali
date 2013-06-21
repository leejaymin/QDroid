.class public Lcom/garageapps/android/spacetracks/mainApplication;
.super Ljava/lang/Object;
.source "mainApplication.java"


# instance fields
.field final FILE_RECORDS:Ljava/lang/String;

.field public currentKey:I

.field public currentTouchEvent:I

.field public currentTouchX:F

.field public currentTouchY:F

.field public currentTrackEvent:I

.field public currentTrackX:F

.field public currentTrackY:F

.field public debugLevel:I

.field public gameMode:I

.field public lockLevel:I

.field public mContext:Landroid/content/Context;

.field public mKeyguard:Lcom/garageapps/android/spacetracks/hardware/HwKeyguardManager;

.field public mPower:Lcom/garageapps/android/spacetracks/hardware/HwPowerManager;

.field public mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

.field public mSensor:Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;

.field public mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

.field public mVibrate:Lcom/garageapps/android/spacetracks/hardware/HwVibrationManager;

.field public records:[J

.field public screenHeight:I

.field public screenMode:I

.field public screenWidth:I

.field public singleLevel:I

.field public startLevel:I

.field public startPoints:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "records.dat"

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/mainApplication;->FILE_RECORDS:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/garageapps/android/spacetracks/mainApplication;->debugLevel:I

    .line 68
    sput-object p1, Lcom/garageapps/android/spacetracks/glSpec;->_CTX:Landroid/content/Context;

    .line 69
    iput-object p1, p0, Lcom/garageapps/android/spacetracks/mainApplication;->mContext:Landroid/content/Context;

    .line 70
    const/16 v0, 0x28

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/mainApplication;->records:[J

    .line 71
    new-instance v0, Lcom/garageapps/android/spacetracks/hardware/HwKeyguardManager;

    invoke-direct {v0, p1}, Lcom/garageapps/android/spacetracks/hardware/HwKeyguardManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/mainApplication;->mKeyguard:Lcom/garageapps/android/spacetracks/hardware/HwKeyguardManager;

    .line 72
    new-instance v0, Lcom/garageapps/android/spacetracks/hardware/HwPowerManager;

    invoke-direct {v0, p1}, Lcom/garageapps/android/spacetracks/hardware/HwPowerManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/mainApplication;->mPower:Lcom/garageapps/android/spacetracks/hardware/HwPowerManager;

    .line 73
    new-instance v0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    invoke-direct {v0, p1}, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    .line 74
    new-instance v0, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;

    invoke-virtual {p0}, Lcom/garageapps/android/spacetracks/mainApplication;->isTabletDevice()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/mainApplication;->mSensor:Lcom/garageapps/android/spacetracks/hardware/HwSensorManager;

    .line 75
    new-instance v0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    invoke-direct {v0, p1}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    .line 76
    new-instance v0, Lcom/garageapps/android/spacetracks/hardware/HwVibrationManager;

    invoke-direct {v0, p1}, Lcom/garageapps/android/spacetracks/hardware/HwVibrationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/mainApplication;->mVibrate:Lcom/garageapps/android/spacetracks/hardware/HwVibrationManager;

    .line 78
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/mainApplication;->mKeyguard:Lcom/garageapps/android/spacetracks/hardware/HwKeyguardManager;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/hardware/HwKeyguardManager;->turnOff()V

    .line 79
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/mainApplication;->mPower:Lcom/garageapps/android/spacetracks/hardware/HwPowerManager;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/hardware/HwPowerManager;->turnOn()V

    .line 80
    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v1, p0, Lcom/garageapps/android/spacetracks/mainApplication;->lockLevel:I

    iput v1, v0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->hashMap_1:I

    .line 99
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v1, p0, Lcom/garageapps/android/spacetracks/mainApplication;->startLevel:I

    iput v1, v0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->hashMap_2:I

    .line 100
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v1, p0, Lcom/garageapps/android/spacetracks/mainApplication;->startPoints:I

    iput v1, v0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->hashMap_3:I

    .line 101
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->set()V

    .line 102
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/mainApplication;->mKeyguard:Lcom/garageapps/android/spacetracks/hardware/HwKeyguardManager;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/hardware/HwKeyguardManager;->turnOn()V

    .line 103
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/mainApplication;->mPower:Lcom/garageapps/android/spacetracks/hardware/HwPowerManager;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/hardware/HwPowerManager;->turnOff()V

    .line 104
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/mainApplication;->mSound:Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->stopAll()V

    .line 106
    invoke-virtual {p0}, Lcom/garageapps/android/spacetracks/mainApplication;->recordsDelete()V

    .line 107
    invoke-virtual {p0}, Lcom/garageapps/android/spacetracks/mainApplication;->recordsSave()V

    .line 108
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    invoke-virtual {v0}, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->get()V

    .line 85
    const/4 v0, 0x2

    iput v0, p0, Lcom/garageapps/android/spacetracks/mainApplication;->gameMode:I

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/garageapps/android/spacetracks/mainApplication;->singleLevel:I

    .line 87
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v0, v0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->hashMap_1:I

    iput v0, p0, Lcom/garageapps/android/spacetracks/mainApplication;->lockLevel:I

    .line 88
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v0, v0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->hashMap_2:I

    iput v0, p0, Lcom/garageapps/android/spacetracks/mainApplication;->startLevel:I

    .line 89
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v0, v0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->hashMap_3:I

    iput v0, p0, Lcom/garageapps/android/spacetracks/mainApplication;->startPoints:I

    .line 93
    invoke-virtual {p0}, Lcom/garageapps/android/spacetracks/mainApplication;->recordsLoad()V

    .line 94
    return-void
.end method

.method public isTabletDevice()Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 112
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_0

    .line 113
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/mainApplication;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 115
    .local v0, con:Landroid/content/res/Configuration;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "isLayoutSizeAtLeast"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 116
    .local v2, mIsLayoutSizeAtLeast:Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 117
    .local v3, r:Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 122
    .end local v0           #con:Landroid/content/res/Configuration;
    .end local v2           #mIsLayoutSizeAtLeast:Ljava/lang/reflect/Method;
    .end local v3           #r:Ljava/lang/Boolean;
    :cond_0
    :goto_0
    return v4

    .line 118
    .restart local v0       #con:Landroid/content/res/Configuration;
    :catch_0
    move-exception v1

    .line 119
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public recordsCreate()V
    .locals 4

    .prologue
    .line 127
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x28

    if-lt v0, v1, :cond_0

    .line 129
    return-void

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/garageapps/android/spacetracks/mainApplication;->records:[J

    const-wide/32 v2, 0x493e0

    aput-wide v2, v1, v0

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public recordsDelete()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/mainApplication;->mContext:Landroid/content/Context;

    const-string v1, "records.dat"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 220
    return-void
.end method

.method public recordsFromString(Ljava/lang/String;)V
    .locals 7
    .parameter "r"

    .prologue
    .line 146
    const/4 v2, 0x0

    .line 149
    .local v2, offset:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v4, 0x28

    if-lt v0, v4, :cond_0

    .line 155
    return-void

    .line 150
    :cond_0
    const/16 v4, 0x7c

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 151
    .local v1, index:I
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, value:Ljava/lang/String;
    iget-object v4, p0, Lcom/garageapps/android/spacetracks/mainApplication;->records:[J

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v4, v0

    .line 153
    add-int/lit8 v2, v1, 0x1

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public recordsLoad()V
    .locals 7

    .prologue
    .line 166
    :try_start_0
    iget-object v5, p0, Lcom/garageapps/android/spacetracks/mainApplication;->mContext:Landroid/content/Context;

    const-string v6, "records.dat"

    invoke-virtual {v5, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 167
    .local v1, fin:Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 168
    .local v3, isr:Ljava/io/InputStreamReader;
    const/16 v5, 0x400

    new-array v2, v5, [C
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 171
    .local v2, inputBuffer:[C
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/io/InputStreamReader;->read([C)I

    .line 172
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    .line 175
    .local v4, readString:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/garageapps/android/spacetracks/mainApplication;->recordsFromString(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 189
    .end local v1           #fin:Ljava/io/FileInputStream;
    .end local v2           #inputBuffer:[C
    .end local v3           #isr:Ljava/io/InputStreamReader;
    .end local v4           #readString:Ljava/lang/String;
    :goto_0
    return-void

    .line 178
    .restart local v1       #fin:Ljava/io/FileInputStream;
    .restart local v2       #inputBuffer:[C
    .restart local v3       #isr:Ljava/io/InputStreamReader;
    :catch_0
    move-exception v0

    .line 180
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 183
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fin:Ljava/io/FileInputStream;
    .end local v2           #inputBuffer:[C
    .end local v3           #isr:Ljava/io/InputStreamReader;
    :catch_1
    move-exception v0

    .line 185
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 186
    invoke-virtual {p0}, Lcom/garageapps/android/spacetracks/mainApplication;->recordsCreate()V

    .line 187
    invoke-virtual {p0}, Lcom/garageapps/android/spacetracks/mainApplication;->recordsSave()V

    goto :goto_0
.end method

.method public recordsSave()V
    .locals 6

    .prologue
    .line 198
    :try_start_0
    iget-object v3, p0, Lcom/garageapps/android/spacetracks/mainApplication;->mContext:Landroid/content/Context;

    const-string v4, "records.dat"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 199
    .local v1, fout:Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 202
    .local v2, osw:Ljava/io/OutputStreamWriter;
    :try_start_1
    invoke-virtual {p0}, Lcom/garageapps/android/spacetracks/mainApplication;->recordsToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 204
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 215
    .end local v1           #fout:Ljava/io/FileOutputStream;
    .end local v2           #osw:Ljava/io/OutputStreamWriter;
    :goto_0
    return-void

    .line 206
    .restart local v1       #fout:Ljava/io/FileOutputStream;
    .restart local v2       #osw:Ljava/io/OutputStreamWriter;
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 211
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fout:Ljava/io/FileOutputStream;
    .end local v2           #osw:Ljava/io/OutputStreamWriter;
    :catch_1
    move-exception v0

    .line 213
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public recordsToString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 133
    const-string v1, ""

    .line 135
    .local v1, s:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x28

    if-lt v0, v2, :cond_0

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    return-object v1

    .line 136
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/garageapps/android/spacetracks/mainApplication;->records:[J

    aget-wide v3, v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
