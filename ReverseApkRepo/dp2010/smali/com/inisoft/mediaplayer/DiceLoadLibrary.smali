.class public Lcom/inisoft/mediaplayer/DiceLoadLibrary;
.super Ljava/lang/Object;


# static fields
.field private static final CUSTOM_DATA_PATH:Ljava/lang/String; = "/data/data/com.inisoft.mediaplayer.a/files/libffmpeg_dice.so"

.field private static final CUSTOM_SDCARD_PATH:Ljava/lang/String; = "/sdcard/libffmpeg.so"

.field private static final TEGRA2_SO_PATH:Ljava/lang/String; = "/data/data/com.inisoft.mediaplayer.tegra2/lib/libffmpeg_dice.so"

.field private static final TSTORE_SO_PATH:Ljava/lang/String; = "/data/data/com.inisoft.mediaplayer.tstore/files/libffmpeg_dice.so"

.field static bLoadLibrary:Z

.field static bSoftwareLoadLibrary:Z

.field static bUseCustomLibrary:Z

.field private static mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->bLoadLibrary:Z

    sput-boolean v0, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->bSoftwareLoadLibrary:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->bUseCustomLibrary:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static LoadLibrary()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {}, Ljava/lang/System;->gc()V

    :try_start_0
    const-string v3, "dice_loadlibrary"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v3, "SoundTouch"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->f()Z

    move-result v3

    sget-boolean v4, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->bUseCustomLibrary:Z

    if-eqz v4, :cond_b

    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->getCustomDataPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v4}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    cmp-long v4, v4, v6

    if-lez v4, :cond_b

    :try_start_1
    invoke-static {}, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->getCustomDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->load(Ljava/lang/String;)V

    const-string v4, "MediaPlayer"

    const-string v5, "Use CustomCodec"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    if-nez v0, :cond_0

    :try_start_2
    invoke-static {}, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->isNeon()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ffmpeg_dice"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :goto_1
    const-string v0, "MediaPlayer"

    const-string v3, "Use Dice Codec"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x8

    if-ne v2, v0, :cond_3

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MODEL="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaPlayer"

    const-string v2, "load dice_froyo.so"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "dice_froyo"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :goto_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->bLoadLibrary:Z
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    sget-boolean v0, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->bLoadLibrary:Z

    return v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    const-string v0, "/data/data/com.inisoft.mediaplayer.tstore/files/libffmpeg_dice.so"

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    sput-boolean v1, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->bLoadLibrary:Z

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_3

    :cond_2
    :try_start_4
    const-string v0, "/data/data/com.inisoft.mediaplayer.tegra2/lib/libffmpeg_dice.so"

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    sput-boolean v1, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->bLoadLibrary:Z

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_3

    :cond_3
    const/16 v0, 0x9

    if-eq v2, v0, :cond_4

    const/16 v0, 0xa

    if-ne v2, v0, :cond_5

    :cond_4
    :try_start_5
    const-string v0, "MediaPlayer"

    const-string v2, "load libdice_gingerbread.so"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "dice_gingerbread"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "MediaPlayer"

    const-string v2, "Successfully loaded"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const/16 v0, 0xb

    if-eq v2, v0, :cond_6

    const/16 v0, 0xc

    if-eq v2, v0, :cond_6

    const/16 v0, 0xd

    if-ne v2, v0, :cond_7

    :cond_6
    const-string v0, "MediaPlayer"

    const-string v2, "load libdice_honeycomb.so"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "dice_honeycomb"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "MediaPlayer"

    const-string v2, "Successfully loaded"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    const/16 v0, 0xe

    if-eq v2, v0, :cond_8

    const/16 v0, 0xf

    if-ne v2, v0, :cond_9

    :cond_8
    const-string v0, "MediaPlayer"

    const-string v2, "load libdice_ics.so"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "dice_ics"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "MediaPlayer"

    const-string v2, "Successfully loaded"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    const/16 v0, 0x10

    if-ne v2, v0, :cond_a

    const-string v0, "MediaPlayer"

    const-string v2, "load libdice_jb.so"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "dice_jb"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "MediaPlayer"

    const-string v2, "Successfully loaded"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_a
    const-string v0, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid sdk version "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    :cond_b
    move v0, v1

    goto/16 :goto_0
.end method

.method public static checkCustomLibrary()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/libffmpeg.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static checkFFMpeg(Landroid/content/Context;)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->mPackageName:Ljava/lang/String;

    const-string v0, "dice_loadlibrary"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->isNeon()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-nez v0, :cond_3

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.inisoft.mediaplayer.tstore/files/libffmpeg_dice.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/32 v7, 0x5d52bc

    cmp-long v1, v5, v7

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    :goto_1
    return v2

    :catch_0
    move-exception v0

    move v0, v4

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    const-string v7, "TEST"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.inisoft.mediaplayer.tegra2"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_1
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2
.end method

.method private static createCustomPath(Landroid/content/Context;)Z
    .locals 10

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->getCustomDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    const-string v4, "/sdcard/libffmpeg.so"

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2
    const-string v3, "libffmpeg_dice.so"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    const v2, 0x19000

    :try_start_2
    new-array v2, v2, [B

    :cond_3
    invoke-virtual {v4, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_4

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    :cond_4
    if-gtz v5, :cond_3

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :goto_1
    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v2

    :goto_2
    if-eqz v2, :cond_5

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_5
    :goto_3
    if-eqz v0, :cond_8

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move v0, v1

    goto :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v2

    :goto_4
    if-eqz v4, :cond_6

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_6
    :goto_5
    if-eqz v2, :cond_7

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_7
    :goto_6
    throw v0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v4, v2

    move-object v2, v3

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v0, v3

    goto :goto_2

    :catch_8
    move-exception v0

    move-object v0, v3

    move-object v2, v4

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method public static getBuildProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "dice_loadlibrary"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->getBuildProperty0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final native getBuildProperty0(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static getCustomDataPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/data/data/com.inisoft.mediaplayer.a/files/libffmpeg_dice.so"

    return-object v0
.end method

.method public static getUseCustomLibrary(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x0

    const-string v0, "DICE_SETTINGS"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "use_custom_codec"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->bUseCustomLibrary:Z

    return v0
.end method

.method protected static final native isNeon()Z
.end method

.method private static final native isTegra()Z
.end method

.method public static reloadLibrary(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->setUseCustomLibrary(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/inisoft/mediaplayer/MediaPlayer;->reLoadLibrary()V

    invoke-static {}, Lcom/inisoft/mediaplayer/SoftwarePlayer;->reLoadLibrary()V

    invoke-static {}, Lcom/inisoft/mediaplayer/MediaMetadataRetriever;->reLoadLibrary()V

    return-void
.end method

.method private static setUseCustomLibrary(Landroid/content/Context;Z)V
    .locals 2

    if-nez p1, :cond_1

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.inisoft.mediaplayer.a/files/libffmpeg_dice.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    :goto_0
    const-string v0, "DICE_SETTINGS"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-boolean p1, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->bUseCustomLibrary:Z

    const-string v1, "use_custom_codec"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_1
    return-void

    :cond_1
    invoke-static {p0}, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->createCustomPath(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static softwareLoadLibrary()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->f()Z

    move-result v2

    const-string v3, "dice_loadlibrary"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v3, "SoundTouch"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget-boolean v3, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->bUseCustomLibrary:Z

    if-eqz v3, :cond_7

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->getCustomDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v3

    const-wide/32 v5, 0x493e0

    cmp-long v3, v3, v5

    if-lez v3, :cond_7

    :try_start_1
    invoke-static {}, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->getCustomDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V

    const-string v3, "MediaPlayer"

    const-string v4, "Use CustomCodec"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    if-nez v0, :cond_0

    :try_start_2
    invoke-static {}, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->isNeon()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ffmpeg_dice"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :goto_1
    const-string v0, "MediaPlayer"

    const-string v2, "Use Dice Codec"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    const-string v0, "dice_software_froyo"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :goto_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->bSoftwareLoadLibrary:Z
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    sget-boolean v0, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->bSoftwareLoadLibrary:Z

    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    :try_start_3
    const-string v0, "/data/data/com.inisoft.mediaplayer.tstore/files/libffmpeg_dice.so"

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    sput-boolean v1, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->bSoftwareLoadLibrary:Z

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_3

    :cond_2
    :try_start_4
    const-string v0, "/data/data/com.inisoft.mediaplayer.tegra2/lib/libffmpeg_dice.so"

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    sput-boolean v1, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->bSoftwareLoadLibrary:Z

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_3

    :cond_3
    const/16 v2, 0xe

    if-eq v0, v2, :cond_4

    const/16 v2, 0xf

    if-ne v0, v2, :cond_5

    :cond_4
    :try_start_5
    const-string v0, "dice_software_ics"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/16 v2, 0x10

    if-ne v0, v2, :cond_6

    const-string v0, "dice_software_jb"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v0, "dice_software"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_0
.end method
