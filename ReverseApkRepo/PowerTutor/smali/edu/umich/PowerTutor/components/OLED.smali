.class public Ledu/umich/PowerTutor/components/OLED;
.super Ledu/umich/PowerTutor/components/PowerComponent;
.source "OLED.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/umich/PowerTutor/components/OLED$OledData;
    }
.end annotation


# static fields
.field private static final BACKLIGHT_BRIGHTNESS_FILES:[Ljava/lang/String; = null

.field private static final NUMBER_OF_SAMPLES:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "OLED"


# instance fields
.field private bcoef:D

.field private brightnessFile:Ljava/lang/String;

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private context:Landroid/content/Context;

.field private foregroundDetector:Ledu/umich/PowerTutor/util/ForegroundDetector;

.field private frameBufferFile:Ljava/io/File;

.field private gcoef:D

.field private modul_coef:D

.field private rcoef:D

.field private samples:[I

.field private screenHeight:I

.field private screenOn:Z

.field private screenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 97
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 98
    const-string v2, "/sys/class/leds/lcd-backlight/brightness"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 99
    const-string v2, "/sys/devices/virtual/leds/lcd-backlight/brightness"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 100
    const-string v2, "/sys/devices/platform/trout-backlight.0/leds/lcd-backlight/brightness"

    aput-object v2, v0, v1

    .line 97
    sput-object v0, Ledu/umich/PowerTutor/components/OLED;->BACKLIGHT_BRIGHTNESS_FILES:[Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ledu/umich/PowerTutor/phone/PhoneConstants;)V
    .locals 19
    .parameter "context"
    .parameter "constants"

    .prologue
    .line 125
    invoke-direct/range {p0 .. p0}, Ledu/umich/PowerTutor/components/PowerComponent;-><init>()V

    .line 126
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Ledu/umich/PowerTutor/components/OLED;->context:Landroid/content/Context;

    .line 127
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Ledu/umich/PowerTutor/components/OLED;->screenOn:Z

    .line 129
    new-instance v16, Ledu/umich/PowerTutor/util/ForegroundDetector;

    .line 130
    const-string v15, "activity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 129
    check-cast v15, Landroid/app/ActivityManager;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ledu/umich/PowerTutor/util/ForegroundDetector;-><init>(Landroid/app/ActivityManager;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Ledu/umich/PowerTutor/components/OLED;->foregroundDetector:Ledu/umich/PowerTutor/util/ForegroundDetector;

    .line 131
    new-instance v15, Ledu/umich/PowerTutor/components/OLED$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Ledu/umich/PowerTutor/components/OLED$1;-><init>(Ledu/umich/PowerTutor/components/OLED;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Ledu/umich/PowerTutor/components/OLED;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 142
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    .local v8, intentFilter:Landroid/content/IntentFilter;
    const-string v15, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v8, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v15, "android.intent.action.SCREEN_ON"

    invoke-virtual {v8, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/umich/PowerTutor/components/OLED;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    new-instance v15, Ljava/io/File;

    const-string v16, "/dev/fb0"

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Ledu/umich/PowerTutor/components/OLED;->frameBufferFile:Ljava/io/File;

    .line 148
    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/umich/PowerTutor/components/OLED;->frameBufferFile:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_0

    .line 149
    new-instance v15, Ljava/io/File;

    const-string v16, "/dev/graphics/fb0"

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Ledu/umich/PowerTutor/components/OLED;->frameBufferFile:Ljava/io/File;

    .line 151
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/umich/PowerTutor/components/OLED;->frameBufferFile:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 153
    const/4 v13, 0x0

    .line 155
    .local v13, readOk:Z
    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/umich/PowerTutor/components/OLED;->frameBufferFile:Ljava/io/File;

    const-string v16, "r"

    move-object/from16 v0, v16

    invoke-direct {v6, v15, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 156
    .local v6, fin:Ljava/io/RandomAccessFile;
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    .line 157
    .local v3, b:I
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    const/4 v13, 0x1

    .line 162
    .end local v3           #b:I
    .end local v6           #fin:Ljava/io/RandomAccessFile;
    :goto_0
    if-nez v13, :cond_1

    .line 163
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v15

    const-string v16, "su"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v11

    .line 164
    .local v11, p:Ljava/lang/Process;
    new-instance v10, Ljava/io/DataOutputStream;

    invoke-virtual {v11}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    invoke-direct {v10, v15}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 165
    .local v10, os:Ljava/io/DataOutputStream;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "chown "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 166
    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/umich/PowerTutor/components/OLED;->frameBufferFile:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 165
    invoke-virtual {v10, v15}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 167
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "chown app_"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v16

    .line 168
    move/from16 v0, v16

    add-int/lit16 v0, v0, -0x2710

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 169
    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/umich/PowerTutor/components/OLED;->frameBufferFile:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 167
    invoke-virtual {v10, v15}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 170
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "chmod 660 "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/umich/PowerTutor/components/OLED;->frameBufferFile:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 171
    const-string v15, "exit\n"

    invoke-virtual {v10, v15}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 173
    invoke-virtual {v11}, Ljava/lang/Process;->waitFor()I

    .line 174
    invoke-virtual {v11}, Ljava/lang/Process;->exitValue()I

    move-result v15

    if-eqz v15, :cond_1

    .line 175
    const-string v15, "OLED"

    const-string v16, "failed to change permissions on frame buffer"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    .end local v10           #os:Ljava/io/DataOutputStream;
    .end local v11           #p:Ljava/lang/Process;
    .end local v13           #readOk:Z
    :cond_1
    :goto_1
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .line 188
    .local v9, metrics:Landroid/util/DisplayMetrics;
    const-string v15, "window"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager;

    .line 189
    .local v14, windowManager:Landroid/view/WindowManager;
    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 190
    iget v15, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iput v15, v0, Ledu/umich/PowerTutor/components/OLED;->screenWidth:I

    .line 191
    iget v15, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, p0

    iput v15, v0, Ledu/umich/PowerTutor/components/OLED;->screenHeight:I

    .line 193
    new-instance v12, Ljava/util/Random;

    invoke-direct {v12}, Ljava/util/Random;-><init>()V

    .line 194
    .local v12, r:Ljava/util/Random;
    const/16 v15, 0x1f4

    new-array v15, v15, [I

    move-object/from16 v0, p0

    iput-object v15, v0, Ledu/umich/PowerTutor/components/OLED;->samples:[I

    .line 195
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    const/16 v15, 0x1f4

    if-lt v7, v15, :cond_2

    .line 201
    invoke-interface/range {p2 .. p2}, Ledu/umich/PowerTutor/phone/PhoneConstants;->oledChannelPower()[D

    move-result-object v4

    .line 202
    .local v4, channel:[D
    const/4 v15, 0x0

    aget-wide v15, v4, v15

    const-wide v17, 0x406fe00000000000L

    div-double v15, v15, v17

    const-wide v17, 0x406fe00000000000L

    div-double v15, v15, v17

    move-object/from16 v0, p0

    iput-wide v15, v0, Ledu/umich/PowerTutor/components/OLED;->rcoef:D

    .line 203
    const/4 v15, 0x1

    aget-wide v15, v4, v15

    const-wide v17, 0x406fe00000000000L

    div-double v15, v15, v17

    const-wide v17, 0x406fe00000000000L

    div-double v15, v15, v17

    move-object/from16 v0, p0

    iput-wide v15, v0, Ledu/umich/PowerTutor/components/OLED;->gcoef:D

    .line 204
    const/4 v15, 0x2

    aget-wide v15, v4, v15

    const-wide v17, 0x406fe00000000000L

    div-double v15, v15, v17

    const-wide v17, 0x406fe00000000000L

    div-double v15, v15, v17

    move-object/from16 v0, p0

    iput-wide v15, v0, Ledu/umich/PowerTutor/components/OLED;->bcoef:D

    .line 205
    invoke-interface/range {p2 .. p2}, Ledu/umich/PowerTutor/phone/PhoneConstants;->oledModulation()D

    move-result-wide v15

    const-wide v17, 0x406fe00000000000L

    div-double v15, v15, v17

    const-wide v17, 0x406fe00000000000L

    div-double v15, v15, v17

    const-wide/high16 v17, 0x4008

    div-double v15, v15, v17

    const-wide/high16 v17, 0x4008

    div-double v15, v15, v17

    move-object/from16 v0, p0

    iput-wide v15, v0, Ledu/umich/PowerTutor/components/OLED;->modul_coef:D

    .line 207
    const/4 v7, 0x0

    :goto_3
    sget-object v15, Ledu/umich/PowerTutor/components/OLED;->BACKLIGHT_BRIGHTNESS_FILES:[Ljava/lang/String;

    array-length v15, v15

    if-lt v7, v15, :cond_3

    .line 212
    return-void

    .line 178
    .end local v4           #channel:[D
    .end local v7           #i:I
    .end local v9           #metrics:Landroid/util/DisplayMetrics;
    .end local v12           #r:Ljava/util/Random;
    .end local v14           #windowManager:Landroid/view/WindowManager;
    .restart local v13       #readOk:Z
    :catch_0
    move-exception v5

    .line 179
    .local v5, e:Ljava/lang/InterruptedException;
    const-string v15, "OLED"

    const-string v16, "changing permissions on frame buffer interrupted"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 180
    .end local v5           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v5

    .line 181
    .local v5, e:Ljava/io/IOException;
    const-string v15, "OLED"

    const-string v16, "unexpected exception while changing permission on frame buffer"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 196
    .end local v5           #e:Ljava/io/IOException;
    .end local v13           #readOk:Z
    .restart local v7       #i:I
    .restart local v9       #metrics:Landroid/util/DisplayMetrics;
    .restart local v12       #r:Ljava/util/Random;
    .restart local v14       #windowManager:Landroid/view/WindowManager;
    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Ledu/umich/PowerTutor/components/OLED;->screenWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Ledu/umich/PowerTutor/components/OLED;->screenHeight:I

    move/from16 v16, v0

    mul-int v15, v15, v16

    mul-int/2addr v15, v7

    div-int/lit16 v2, v15, 0x1f4

    .line 197
    .local v2, a:I
    move-object/from16 v0, p0

    iget v15, v0, Ledu/umich/PowerTutor/components/OLED;->screenWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Ledu/umich/PowerTutor/components/OLED;->screenHeight:I

    move/from16 v16, v0

    mul-int v15, v15, v16

    add-int/lit8 v16, v7, 0x1

    mul-int v15, v15, v16

    div-int/lit16 v3, v15, 0x1f4

    .line 198
    .restart local v3       #b:I
    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/umich/PowerTutor/components/OLED;->samples:[I

    sub-int v16, v3, v2

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v16

    add-int v16, v16, v2

    aput v16, v15, v7

    .line 195
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 208
    .end local v2           #a:I
    .end local v3           #b:I
    .restart local v4       #channel:[D
    :cond_3
    new-instance v15, Ljava/io/File;

    sget-object v16, Ledu/umich/PowerTutor/components/OLED;->BACKLIGHT_BRIGHTNESS_FILES:[Ljava/lang/String;

    aget-object v16, v16, v7

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 209
    sget-object v15, Ledu/umich/PowerTutor/components/OLED;->BACKLIGHT_BRIGHTNESS_FILES:[Ljava/lang/String;

    aget-object v15, v15, v7

    move-object/from16 v0, p0

    iput-object v15, v0, Ledu/umich/PowerTutor/components/OLED;->brightnessFile:Ljava/lang/String;

    .line 207
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 159
    .end local v4           #channel:[D
    .end local v7           #i:I
    .end local v9           #metrics:Landroid/util/DisplayMetrics;
    .end local v12           #r:Ljava/util/Random;
    .end local v14           #windowManager:Landroid/view/WindowManager;
    .restart local v13       #readOk:Z
    :catch_2
    move-exception v15

    goto/16 :goto_0
.end method

.method static synthetic access$0(Ledu/umich/PowerTutor/components/OLED;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 106
    iput-boolean p1, p0, Ledu/umich/PowerTutor/components/OLED;->screenOn:Z

    return-void
.end method

.method public static native getScreenPixPower(DDDD)D
.end method


# virtual methods
.method public calculateIteration(J)Ledu/umich/PowerTutor/service/IterationData;
    .locals 29
    .parameter "iteration"

    .prologue
    .line 222
    invoke-static {}, Ledu/umich/PowerTutor/service/IterationData;->obtain()Ledu/umich/PowerTutor/service/IterationData;

    move-result-object v23

    .line 225
    .local v23, result:Ledu/umich/PowerTutor/service/IterationData;
    monitor-enter p0

    .line 226
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ledu/umich/PowerTutor/components/OLED;->screenOn:Z

    move/from16 v24, v0

    .line 225
    .local v24, screen:Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/umich/PowerTutor/components/OLED;->brightnessFile:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 231
    invoke-static {}, Ledu/umich/PowerTutor/util/SystemInfo;->getInstance()Ledu/umich/PowerTutor/util/SystemInfo;

    move-result-object v3

    .line 232
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/components/OLED;->brightnessFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ledu/umich/PowerTutor/util/SystemInfo;->readLongFromFile(Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v12, v3

    .line 242
    .local v12, brightness:I
    :goto_0
    if-ltz v12, :cond_0

    const/16 v3, 0xff

    if-ge v3, v12, :cond_3

    .line 243
    :cond_0
    const-string v3, "OLED"

    const-string v4, "Could not retrieve brightness information"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .end local v12           #brightness:I
    :cond_1
    :goto_1
    return-object v23

    .line 225
    .end local v24           #screen:Z
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 235
    .restart local v24       #screen:Z
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/umich/PowerTutor/components/OLED;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 236
    const-string v4, "screen_brightness"

    .line 235
    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v12

    .restart local v12       #brightness:I
    goto :goto_0

    .line 237
    .end local v12           #brightness:I
    :catch_0
    move-exception v15

    .line 238
    .local v15, ex:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "OLED"

    const-string v4, "Could not retrieve brightness information"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 247
    .end local v15           #ex:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v12       #brightness:I
    :cond_3
    const-wide/16 v19, 0x0

    .line 248
    .local v19, pixPower:D
    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/umich/PowerTutor/components/OLED;->frameBufferFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 249
    invoke-static {}, Ledu/umich/PowerTutor/util/NativeLoader;->jniLoaded()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 250
    move-object/from16 v0, p0

    iget-wide v3, v0, Ledu/umich/PowerTutor/components/OLED;->rcoef:D

    move-object/from16 v0, p0

    iget-wide v5, v0, Ledu/umich/PowerTutor/components/OLED;->gcoef:D

    move-object/from16 v0, p0

    iget-wide v7, v0, Ledu/umich/PowerTutor/components/OLED;->bcoef:D

    move-object/from16 v0, p0

    iget-wide v9, v0, Ledu/umich/PowerTutor/components/OLED;->modul_coef:D

    invoke-static/range {v3 .. v10}, Ledu/umich/PowerTutor/components/OLED;->getScreenPixPower(DDDD)D

    move-result-wide v19

    .line 277
    :goto_2
    const-wide/16 v3, 0x0

    cmpl-double v3, v19, v3

    if-ltz v3, :cond_4

    .line 278
    const-wide/high16 v3, 0x3ff0

    move-object/from16 v0, p0

    iget v5, v0, Ledu/umich/PowerTutor/components/OLED;->screenWidth:I

    int-to-double v5, v5

    mul-double/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Ledu/umich/PowerTutor/components/OLED;->screenHeight:I

    int-to-double v5, v5

    mul-double/2addr v3, v5

    const-wide v5, 0x407f400000000000L

    div-double/2addr v3, v5

    mul-double v19, v19, v3

    .line 282
    :cond_4
    invoke-static {}, Ledu/umich/PowerTutor/components/OLED$OledData;->obtain()Ledu/umich/PowerTutor/components/OLED$OledData;

    move-result-object v13

    .line 283
    .local v13, data:Ledu/umich/PowerTutor/components/OLED$OledData;
    if-nez v24, :cond_7

    .line 284
    invoke-virtual {v13}, Ledu/umich/PowerTutor/components/OLED$OledData;->init()V

    .line 288
    :goto_3
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ledu/umich/PowerTutor/service/IterationData;->setPowerData(Ledu/umich/PowerTutor/service/PowerData;)V

    .line 290
    if-eqz v24, :cond_1

    .line 291
    invoke-static {}, Ledu/umich/PowerTutor/components/OLED$OledData;->obtain()Ledu/umich/PowerTutor/components/OLED$OledData;

    move-result-object v25

    .line 292
    .local v25, uidData:Ledu/umich/PowerTutor/components/OLED$OledData;
    move-object/from16 v0, v25

    move-wide/from16 v1, v19

    invoke-virtual {v0, v12, v1, v2}, Ledu/umich/PowerTutor/components/OLED$OledData;->init(ID)V

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/umich/PowerTutor/components/OLED;->foregroundDetector:Ledu/umich/PowerTutor/util/ForegroundDetector;

    invoke-virtual {v3}, Ledu/umich/PowerTutor/util/ForegroundDetector;->getForegroundUid()I

    move-result v3

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Ledu/umich/PowerTutor/service/IterationData;->addUidPowerData(ILedu/umich/PowerTutor/service/PowerData;)V

    goto/16 :goto_1

    .line 252
    .end local v13           #data:Ledu/umich/PowerTutor/components/OLED$OledData;
    .end local v25           #uidData:Ledu/umich/PowerTutor/components/OLED$OledData;
    :cond_5
    :try_start_3
    new-instance v16, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/umich/PowerTutor/components/OLED;->frameBufferFile:Ljava/io/File;

    const-string v4, "r"

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 254
    .local v16, fin:Ljava/io/RandomAccessFile;
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/umich/PowerTutor/components/OLED;->samples:[I

    array-length v5, v4

    const/4 v3, 0x0

    :goto_4
    if-lt v3, v5, :cond_6

    .line 270
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_2

    .line 271
    .end local v16           #fin:Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v14

    .line 272
    .local v14, e:Ljava/io/FileNotFoundException;
    const-wide/high16 v19, -0x4010

    goto :goto_2

    .line 254
    .end local v14           #e:Ljava/io/FileNotFoundException;
    .restart local v16       #fin:Ljava/io/RandomAccessFile;
    :cond_6
    aget v26, v4, v3

    .line 255
    .local v26, x:I
    mul-int/lit8 v6, v26, 0x4

    int-to-long v6, v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 256
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v21

    .line 257
    .local v21, px:I
    shr-int/lit8 v6, v21, 0x8

    and-int/lit16 v11, v6, 0xff

    .line 258
    .local v11, b:I
    shr-int/lit8 v6, v21, 0x10

    and-int/lit16 v0, v6, 0xff

    move/from16 v17, v0

    .line 259
    .local v17, g:I
    shr-int/lit8 v6, v21, 0x18

    and-int/lit16 v0, v6, 0xff

    move/from16 v22, v0

    .line 266
    .local v22, r:I
    add-int v6, v22, v17

    add-int v18, v6, v11

    .line 267
    .local v18, modul_val:I
    move-object/from16 v0, p0

    iget-wide v6, v0, Ledu/umich/PowerTutor/components/OLED;->rcoef:D

    mul-int v8, v22, v22

    int-to-double v8, v8

    mul-double/2addr v6, v8

    move-object/from16 v0, p0

    iget-wide v8, v0, Ledu/umich/PowerTutor/components/OLED;->gcoef:D

    mul-int v10, v17, v17

    int-to-double v0, v10

    move-wide/from16 v27, v0

    mul-double v8, v8, v27

    add-double/2addr v6, v8

    move-object/from16 v0, p0

    iget-wide v8, v0, Ledu/umich/PowerTutor/components/OLED;->bcoef:D

    mul-int v10, v11, v11

    int-to-double v0, v10

    move-wide/from16 v27, v0

    mul-double v8, v8, v27

    add-double/2addr v6, v8

    .line 268
    move-object/from16 v0, p0

    iget-wide v8, v0, Ledu/umich/PowerTutor/components/OLED;->modul_coef:D
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    mul-int v10, v18, v18

    int-to-double v0, v10

    move-wide/from16 v27, v0

    mul-double v8, v8, v27

    sub-double/2addr v6, v8

    add-double v19, v19, v6

    .line 254
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 273
    .end local v11           #b:I
    .end local v16           #fin:Ljava/io/RandomAccessFile;
    .end local v17           #g:I
    .end local v18           #modul_val:I
    .end local v21           #px:I
    .end local v22           #r:I
    .end local v26           #x:I
    :catch_2
    move-exception v14

    .line 274
    .local v14, e:Ljava/io/IOException;
    const-wide/high16 v19, -0x4010

    .line 275
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 286
    .end local v14           #e:Ljava/io/IOException;
    .restart local v13       #data:Ledu/umich/PowerTutor/components/OLED$OledData;
    :cond_7
    move-wide/from16 v0, v19

    invoke-virtual {v13, v12, v0, v1}, Ledu/umich/PowerTutor/components/OLED$OledData;->init(ID)V

    goto/16 :goto_3
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    const-string v0, "OLED"

    return-object v0
.end method

.method public hasUidInformation()Z
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x1

    return v0
.end method

.method protected onExit()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Ledu/umich/PowerTutor/components/OLED;->context:Landroid/content/Context;

    iget-object v1, p0, Ledu/umich/PowerTutor/components/OLED;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 217
    invoke-super {p0}, Ledu/umich/PowerTutor/components/PowerComponent;->onExit()V

    .line 218
    return-void
.end method
