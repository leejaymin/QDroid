.class public abstract Lcom/mxtech/videoplayer/App;
.super Lcom/mxtech/app/MXApplication;


# instance fields
.field private 궗:Z

.field private 먯꽌:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/mxtech/app/MXApplication;-><init>()V

    iput-boolean v0, p0, Lcom/mxtech/videoplayer/App;->궗:Z

    iput-boolean v0, p0, Lcom/mxtech/videoplayer/App;->먯꽌:Z

    return-void
.end method

.method private 癤욱븳援(Ljava/lang/String;)J
    .locals 3

    new-instance v0, Leh;

    invoke-direct {v0}, Leh;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/libavcodec.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Leh;->癤욱븳援(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/libavformat.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Leh;->癤욱븳援(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/libavutil.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Leh;->癤욱븳援(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/libswresample.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Leh;->癤욱븳援(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/libswscale.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Leh;->癤욱븳援(Ljava/lang/String;)V

    invoke-virtual {v0}, Leh;->癤욱븳援()J

    move-result-wide v0

    return-wide v0
.end method

.method private 癤욱븳援(I)Ljava/lang/Boolean;
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v1, "neon_native_check_version"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v1, "neon_native_check_result"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private 癤욱븳援(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_0
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    check-cast p1, Ljava/lang/String;

    goto :goto_0
.end method

.method private 癤욱븳援(Landroid/app/Activity;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lkz;
    .locals 14

    sget-object v1, Lcom/mxtech/videoplayer/L;->궗:Lgt;

    iget v1, v1, Lgt;->癤욱븳援:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/mxtech/videoplayer/L;->궗:Lgt;

    iget v1, v1, Lgt;->먯꽌:I

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown CPU architecture : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/mxtech/videoplayer/L;->궗:Lgt;

    iget-object v3, v3, Lgt;->궗:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mxtech/videoplayer/L;->궗:Lgt;

    iget v3, v3, Lgt;->먯꽌:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lnt;->error_unsupported_architecture:I

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/mxtech/videoplayer/App;->癤욱븳援(Landroid/app/Activity;IZ)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :pswitch_0
    sget-object v1, Lcom/mxtech/videoplayer/L;->궗:Lgt;

    iget v1, v1, Lgt;->弱밧:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v4, "com.mxtech.ffmpeg.v7_neon"

    const-string v7, "ARMv7 NEON"

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "ffmpeg_required_version"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget v2, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v2, v1, :cond_5

    sget v1, Lnt;->error_codec_version:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v6, 0x104000a

    invoke-virtual {p0, v6}, Lcom/mxtech/videoplayer/App;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/mxtech/videoplayer/App;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p4

    invoke-virtual/range {v1 .. v8}, Lcom/mxtech/videoplayer/App;->癤욱븳援(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v4, "com.mxtech.ffmpeg.v7_vfpv3d16"

    const-string v7, "ARMv7"

    goto :goto_1

    :pswitch_1
    sget-object v1, Lcom/mxtech/videoplayer/L;->궗:Lgt;

    iget v1, v1, Lgt;->ㅼ꽑嫄:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const-string v4, "com.mxtech.ffmpeg.v6_vfp"

    const-string v7, "ARMv6 VFP"

    goto :goto_1

    :cond_1
    const-string v4, "com.mxtech.ffmpeg.v6"

    const-string v7, "ARMv6"

    goto :goto_1

    :pswitch_2
    const-string v4, "com.mxtech.ffmpeg.v5te"

    const-string v7, "ARMv5"

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/mxtech/videoplayer/L;->궗:Lgt;

    iget v1, v1, Lgt;->癤욱븳援:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const-string v4, "com.mxtech.ffmpeg.x86"

    const-string v7, "x86"

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/mxtech/videoplayer/L;->궗:Lgt;

    iget v1, v1, Lgt;->癤욱븳援:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    const-string v4, "com.mxtech.ffmpeg.mips32r2"

    const-string v7, "MIPS"

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown CPU vendor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/mxtech/videoplayer/L;->궗:Lgt;

    iget v3, v3, Lgt;->癤욱븳援:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lnt;->error_unsupported_architecture:I

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/mxtech/videoplayer/App;->癤욱븳援(Landroid/app/Activity;IZ)V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x80

    :try_start_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget-object v1, v11, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "player_required_version"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p2

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v2, v1, :cond_6

    sget v1, Lnt;->error_player_version:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v5, 0x104000a

    invoke-virtual {p0, v5}, Lcom/mxtech/videoplayer/App;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/mxtech/videoplayer/App;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    move-object v8, p0

    move-object v9, p1

    move-object/from16 v10, p2

    invoke-virtual/range {v8 .. v13}, Lcom/mxtech/videoplayer/App;->癤욱븳援(Landroid/app/Activity;Landroid/content/pm/PackageInfo;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_6
    new-instance v1, Lkz;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, v11, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v11, v2}, Lkz;-><init>(Landroid/content/pm/PackageInfo;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const/4 v5, 0x0

    sget v1, Lnt;->error_codec_not_found:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v6, 0x104000a

    invoke-virtual {p0, v6}, Lcom/mxtech/videoplayer/App;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/mxtech/videoplayer/App;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p4

    invoke-virtual/range {v1 .. v8}, Lcom/mxtech/videoplayer/App;->癤욱븳援(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private 癤욱븳援(IZ)V
    .locals 2

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "neon_native_check_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "neon_native_check_result"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/mxtech/app/AppUtils;->癤욱븳援(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method private 癤욱븳援(Landroid/text/Spannable;II)V
    .locals 3

    const/16 v2, 0x21

    new-instance v0, Landroid/text/style/BulletSpan;

    const/high16 v1, 0x4080

    invoke-static {v1}, Lee;->먯꽌(F)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v0, v1}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {p1, v0, p2, p3, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    const v1, 0x3f4ccccd

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {p1, v0, p2, p3, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private 癤욱븳援(Landroid/app/Activity;Z)Z
    .locals 21

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/mxtech/videoplayer/App;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/mxtech/videoplayer/App;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v4, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_1

    sget-object v6, Lcom/mxtech/videoplayer/L;->궗:Lgt;

    iget v6, v6, Lgt;->癤욱븳援:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    sget-object v6, Lcom/mxtech/videoplayer/L;->궗:Lgt;

    iget v6, v6, Lgt;->弱밧:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    iget v3, v15, Landroid/content/pm/PackageInfo;->versionCode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mxtech/videoplayer/App;->癤욱븳援(I)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    sput-object v16, Lcom/mxtech/videoplayer/L;->弱밧:Ljava/lang/String;

    move-object v13, v2

    move-object v14, v3

    :goto_0
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/mxtech/videoplayer/L;->弱밧:Ljava/lang/String;

    const-string v4, "libmxutil.so"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    sget-object v3, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Libraries are missed:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/mxtech/videoplayer/L;->弱밧:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v2, v0, :cond_3

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/mxtech/videoplayer/App;->癤욱븳援(Landroid/app/Activity;Z)Z

    move-result v2

    :goto_1
    return v2

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v4, v5}, Lcom/mxtech/videoplayer/App;->癤욱븳援(Landroid/app/Activity;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lkz;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget-object v4, v2, Lkz;->궗:Ljava/lang/String;

    sput-object v4, Lcom/mxtech/videoplayer/L;->弱밧:Ljava/lang/String;

    move-object v13, v2

    move-object v14, v3

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/mxtech/videoplayer/App;->쇰뒗()V

    sget-object v2, Lcom/mxtech/videoplayer/L;->弱밧:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v2, v0, :cond_4

    sget v2, Lnt;->error_reinstall_app:I

    :goto_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/mxtech/videoplayer/App;->癤욱븳援(Landroid/app/Activity;IZ)V

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    sget v2, Lnt;->error_reinstall_codec:I

    goto :goto_2

    :cond_5
    sget-object v3, Lcom/mxtech/videoplayer/L;->弱밧:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v3, v0, :cond_7

    if-nez v14, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mxtech/videoplayer/App;->癤욱븳援(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_6

    iget v2, v15, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/mxtech/videoplayer/App;->癤욱븳援(IZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/mxtech/videoplayer/App;->쇰뒗()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/mxtech/videoplayer/App;->癤욱븳援(Landroid/app/Activity;Z)Z

    move-result v2

    goto :goto_1

    :cond_6
    iget v3, v15, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/mxtech/videoplayer/App;->癤욱븳援(IZ)V

    :cond_7
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    sget-object v2, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v3, "custom_codec"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mxtech/videoplayer/L;->쇰뒗:Ljava/lang/String;

    sget-object v2, Lcom/mxtech/videoplayer/L;->쇰뒗:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/mxtech/videoplayer/App;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v3

    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mxtech/videoplayer/App;->癤욱븳援(Ljava/lang/String;)J

    move-result-wide v4

    sget-object v2, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v6, "custom_codec_checksum"

    const-wide/16 v7, 0x0

    invoke-interface {v2, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_c

    const/4 v2, 0x1

    :goto_3
    if-nez v2, :cond_8

    const/16 v2, 0x2000

    :try_start_2
    new-array v2, v2, [B

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/mxtech/videoplayer/L;->쇰뒗:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/libavutil.so"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/libavutil.so"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/mxtech/FileUtils;->癤욱븳援(Ljava/lang/String;Ljava/lang/String;[B)V

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/mxtech/videoplayer/L;->쇰뒗:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/libavcodec.so"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/libavcodec.so"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/mxtech/FileUtils;->癤욱븳援(Ljava/lang/String;Ljava/lang/String;[B)V

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/mxtech/videoplayer/L;->쇰뒗:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/libswresample.so"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/libswresample.so"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/mxtech/FileUtils;->癤욱븳援(Ljava/lang/String;Ljava/lang/String;[B)V

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/mxtech/videoplayer/L;->쇰뒗:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/libswscale.so"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/libswscale.so"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/mxtech/FileUtils;->癤욱븳援(Ljava/lang/String;Ljava/lang/String;[B)V

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/mxtech/videoplayer/L;->쇰뒗:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/libavformat.so"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/libavformat.so"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/mxtech/FileUtils;->癤욱븳援(Ljava/lang/String;Ljava/lang/String;[B)V

    sget-object v2, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "custom_codec_checksum"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mxtech/videoplayer/App;->癤욱븳援(Ljava/lang/String;)J

    move-result-wide v5

    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v2}, Lcom/mxtech/app/AppUtils;->癤욱븳援(Landroid/content/SharedPreferences$Editor;)V

    :cond_8
    sput-object v3, Lcom/mxtech/videoplayer/L;->쇰뒗:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/mxtech/videoplayer/L;->쇰뒗:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/libavutil.so"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/mxtech/videoplayer/L;->쇰뒗:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/libavcodec.so"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/mxtech/videoplayer/L;->쇰뒗:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/libswresample.so"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/mxtech/videoplayer/L;->쇰뒗:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/libswscale.so"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/mxtech/videoplayer/L;->쇰뒗:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/libavformat.so"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :cond_9
    :goto_4
    :try_start_3
    sget-object v2, Lcom/mxtech/videoplayer/L;->쇰뒗:Ljava/lang/String;

    if-nez v2, :cond_d

    new-instance v5, Ljava/io/File;

    sget-object v2, Lcom/mxtech/videoplayer/L;->弱밧:Ljava/lang/String;

    const-string v3, "libavutil.so"

    invoke-direct {v5, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    sget-object v2, Lcom/mxtech/videoplayer/L;->弱밧:Ljava/lang/String;

    const-string v4, "libavcodec.so"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    sget-object v2, Lcom/mxtech/videoplayer/L;->弱밧:Ljava/lang/String;

    const-string v4, "libswresample.so"

    invoke-direct {v6, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    sget-object v2, Lcom/mxtech/videoplayer/L;->弱밧:Ljava/lang/String;

    const-string v4, "libswscale.so"

    invoke-direct {v7, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    sget-object v2, Lcom/mxtech/videoplayer/L;->弱밧:Ljava/lang/String;

    const-string v8, "libavformat.so"

    invoke-direct {v4, v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    new-instance v8, Ljava/io/File;

    sget-object v2, Lcom/mxtech/videoplayer/L;->弱밧:Ljava/lang/String;

    const-string v9, "libmxvp.so"

    invoke-direct {v8, v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    sget-object v2, Lcom/mxtech/videoplayer/L;->弱밧:Ljava/lang/String;

    const-string v10, "libft2.so"

    invoke-direct {v9, v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    sget-object v2, Lcom/mxtech/videoplayer/L;->弱밧:Ljava/lang/String;

    const-string v11, "libmxass.so"

    invoke-direct {v10, v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mxtech/videoplayer/L;->궗()I

    move-result v12

    new-instance v11, Ljava/io/File;

    sget-object v2, Lcom/mxtech/videoplayer/L;->弱밧:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "libmxsysdec."

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".so"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v11, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/mxtech/videoplayer/L;->쇰뒗:Ljava/lang/String;

    if-nez v2, :cond_a

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v2, v17, v19

    if-eqz v2, :cond_b

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v2, v17, v19

    if-eqz v2, :cond_b

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v2, v17, v19

    if-eqz v2, :cond_b

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v2, v17, v19

    if-eqz v2, :cond_b

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v2, v17, v19

    if-eqz v2, :cond_b

    :cond_a
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v2, v17, v19

    if-eqz v2, :cond_b

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v2, v17, v19

    if-eqz v2, :cond_b

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v2, v17, v19

    if-nez v2, :cond_11

    :cond_b
    sget-object v12, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v2, "Libraries are missed:"

    invoke-direct {v13, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/mxtech/videoplayer/L;->쇰뒗:Ljava/lang/String;

    if-nez v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v14, 0x3d

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v5, 0x3d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (codec path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mxtech/videoplayer/L;->弱밧:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/mxtech/videoplayer/L;->弱밧:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v2, v0, :cond_f

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/mxtech/videoplayer/App;->癤욱븳援(Landroid/app/Activity;Z)Z

    move-result v2

    goto/16 :goto_1

    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_3

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    goto/16 :goto_3

    :catch_1
    move-exception v2

    sget-object v4, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    sput-object v2, Lcom/mxtech/videoplayer/L;->쇰뒗:Ljava/lang/String;

    sget-object v2, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "custom_codec"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v2}, Lcom/mxtech/app/AppUtils;->癤욱븳援(Landroid/content/SharedPreferences$Editor;)V

    new-instance v2, Ljava/io/File;

    const-string v4, "libavutil.so"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    new-instance v2, Ljava/io/File;

    const-string v4, "libavcodec.so"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    new-instance v2, Ljava/io/File;

    const-string v4, "libswresample.so"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    new-instance v2, Ljava/io/File;

    const-string v4, "libswscale.so"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    new-instance v2, Ljava/io/File;

    const-string v4, "libavformat.so"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_4

    :catch_2
    move-exception v2

    sget-object v3, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget v2, Lnt;->error_unexpected:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/mxtech/videoplayer/App;->癤욱븳援(Landroid/app/Activity;IZ)V

    :goto_7
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_d
    const/4 v4, 0x0

    move-object v7, v4

    move-object v6, v4

    move-object v3, v4

    move-object v5, v4

    goto/16 :goto_5

    :cond_e
    :try_start_4
    const-string v2, ""

    goto/16 :goto_6

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/mxtech/videoplayer/App;->쇰뒗()V

    sget-object v2, Lcom/mxtech/videoplayer/L;->弱밧:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v2, v0, :cond_10

    sget v2, Lnt;->error_reinstall_app:I

    :goto_8
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/mxtech/videoplayer/App;->癤욱븳援(Landroid/app/Activity;IZ)V

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_10
    sget v2, Lnt;->error_reinstall_codec:I

    goto :goto_8

    :cond_11
    sget-object v2, Lcom/mxtech/videoplayer/L;->弱밧:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v2, v0, :cond_13

    if-nez v14, :cond_13

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v12}, Lcom/mxtech/videoplayer/App;->癤욱븳援(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;I)Z

    move-result v2

    if-nez v2, :cond_12

    iget v2, v15, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/mxtech/videoplayer/App;->癤욱븳援(IZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/mxtech/videoplayer/App;->쇰뒗()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/mxtech/videoplayer/App;->癤욱븳援(Landroid/app/Activity;Z)Z

    move-result v2

    goto/16 :goto_1

    :cond_12
    iget v2, v15, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/mxtech/videoplayer/App;->癤욱븳援(IZ)V

    :cond_13
    sget-object v2, Lcom/mxtech/videoplayer/L;->쇰뒗:Ljava/lang/String;

    if-nez v2, :cond_14

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mxtech/videoplayer/L;->弱밧:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/libavutil.so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mxtech/videoplayer/L;->弱밧:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/libavcodec.so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mxtech/videoplayer/L;->弱밧:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/libswresample.so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mxtech/videoplayer/L;->弱밧:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/libswscale.so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mxtech/videoplayer/L;->弱밧:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/libavformat.so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    sget v3, Lcom/mxtech/videoplayer/L;->몃Ъ:I

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v5, Lcom/mxtech/videoplayer/L;->弱밧:Ljava/lang/String;

    if-eqz v13, :cond_1e

    iget-object v6, v13, Lkz;->癤욱븳援:Landroid/content/pm/PackageInfo;

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/mxtech/videoplayer/App;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v2, "stats"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mxtech/videoplayer/App;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/mxtech/videoplayer/L;->native_init(Landroid/content/Context;IILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/mxtech/videoplayer/L;->hasOMXDecoder()Z

    move-result v2

    sput-boolean v2, Lcom/mxtech/videoplayer/L;->洹:Z

    sget-boolean v2, Lcom/mxtech/videoplayer/L;->洹:Z

    if-nez v2, :cond_1d

    const/4 v2, 0x0

    sget-object v3, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v4, "omxdecoder"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    if-nez v2, :cond_15

    sget-object v2, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    :cond_15
    const-string v3, "omxdecoder"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_16
    sget-object v3, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v4, "omxdecoder_local"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    if-nez v2, :cond_17

    sget-object v2, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    :cond_17
    const-string v3, "omxdecoder_local"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_18
    sget-object v3, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v4, "omxdecoder_net"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    if-nez v2, :cond_19

    sget-object v2, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    :cond_19
    const-string v3, "omxdecoder_net"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1a
    sget-object v3, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v4, "omxdecoder_10bit"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    if-nez v2, :cond_1b

    sget-object v2, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    :cond_1b
    const-string v3, "omxdecoder_10bit"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1c
    if-eqz v2, :cond_1d

    invoke-static {v2}, Lcom/mxtech/app/AppUtils;->癤욱븳援(Landroid/content/SharedPreferences$Editor;)V

    :cond_1d
    new-instance v2, Lfh;

    const/16 v3, 0x32c8

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lfh;-><init>(Landroid/content/Context;I)V

    sput-object v2, Lcom/mxtech/videoplayer/L;->ㅼ꽑嫄:Lfh;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mxtech/videoplayer/App;->궗:Z

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_1e
    const/4 v6, 0x0

    goto/16 :goto_9

    :pswitch_1
    sget v2, Lnt;->error_api_version:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/mxtech/videoplayer/App;->癤욱븳援(Landroid/app/Activity;IZ)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    const/4 v2, 0x0

    goto/16 :goto_1

    :catch_3
    move-exception v2

    sget-object v3, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget v2, Lnt;->error_unexpected:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/mxtech/videoplayer/App;->癤욱븳援(Landroid/app/Activity;IZ)V

    goto/16 :goto_7

    :catch_4
    move-exception v2

    sget-object v3, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual/range {p0 .. p0}, Lcom/mxtech/videoplayer/App;->쇰뒗()V

    sget v2, Lnt;->error_load_components:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/mxtech/videoplayer/App;->癤욱븳援(Landroid/app/Activity;IZ)V

    goto/16 :goto_7

    :catch_5
    move-exception v2

    sget-object v3, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual/range {p0 .. p0}, Lcom/mxtech/videoplayer/App;->쇰뒗()V

    sget v2, Lnt;->error_load_components:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/mxtech/videoplayer/App;->癤욱븳援(Landroid/app/Activity;IZ)V

    goto/16 :goto_7

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private 癤욱븳援(Ljava/io/File;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x9408

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mxutil file size mismatch. expected=37896 installed="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private 癤욱븳援(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;I)Z
    .locals 5

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x2f0d2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "avutil file size mismatch. expected=192722 installed="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0xf86f7

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "avformat file size mismatch. expected=1017591 installed="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x542c55

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    sget-object v0, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "avcodec file size mismatch. expected=5516373 installed="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x17e7e

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    sget-object v0, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swresample file size mismatch. expected=97918 installed="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    if-eqz p5, :cond_4

    invoke-virtual {p5}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x45a9c

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    sget-object v0, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "swscale file size mismatch. expected=285340 installed="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    if-eqz p6, :cond_5

    invoke-virtual {p6}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0xcc590

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    sget-object v0, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mxvp file size mismatch. expected=837008 installed="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_5
    if-eqz p7, :cond_6

    invoke-virtual {p7}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x6243c

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    sget-object v0, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ft2 file size mismatch. expected=402492 installed="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p7}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_6
    if-eqz p8, :cond_7

    invoke-virtual {p8}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x69838

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    sget-object v0, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mxass file size mismatch. expected=432184 installed="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p8}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_7
    packed-switch p10, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid sysdec version."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const-wide/32 v0, 0x2a4dc

    :goto_1
    if-eqz p9, :cond_8

    invoke-virtual {p9}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_8

    sget-object v2, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mxsysdec."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " file size mismatch. expected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " installed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p9}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_2
    const-wide/32 v0, 0x2a4dc

    goto :goto_1

    :pswitch_3
    const-wide/32 v0, 0x2a4dc

    goto :goto_1

    :pswitch_4
    const-wide/32 v0, 0x2a4dc

    goto :goto_1

    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private 궗(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " is not exists."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\t"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " date="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    const v3, 0xa0091

    invoke-static {p0, v6, v7, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public abstract ㅼ꽑嫄()Z
.end method

.method public abstract 弱밧()Ljava/lang/Boolean;
.end method

.method public 癤욱븳援(Landroid/app/Activity;IZ)V
    .locals 0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p2}, Lcom/mxtech/videoplayer/ActivityMessenger;->癤욱븳援(Landroid/app/Activity;I)V

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public final 癤욱븳援(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lfu;->癤욱븳援(Landroid/content/Context;)Lft;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1, p3}, Lft;->癤욱븳援(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/App;->ㅼ꽑嫄()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lnt;->direct_download_url:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Lcom/mxtech/videoplayer/L;->癤욱븳援()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/mxtech/videoplayer/App;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    sget v4, Lnt;->type:I

    invoke-virtual {p0, v4}, Lcom/mxtech/videoplayer/App;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/mxtech/videoplayer/App;->癤욱븳援(Landroid/text/Spannable;II)V

    if-eqz p4, :cond_3

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    sget v4, Lnt;->installed_version:I

    invoke-virtual {p0, v4}, Lcom/mxtech/videoplayer/App;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    iget-object v5, p4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/mxtech/videoplayer/App;->癤욱븳援(Landroid/text/Spannable;II)V

    :cond_3
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    sget v4, Lnt;->required_version:I

    invoke-virtual {p0, v4}, Lcom/mxtech/videoplayer/App;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    iget-object v5, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "ffmpeg_required_version_name"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mxtech/videoplayer/App;->癤욱븳援(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    sget v5, Lnt;->or_later:I

    invoke-virtual {p0, v5}, Lcom/mxtech/videoplayer/App;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/mxtech/videoplayer/App;->癤욱븳援(Landroid/text/Spannable;II)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sget v3, Lnt;->market_not_found:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v1, p0}, Lft;->癤욱븳援(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/mxtech/videoplayer/App;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v2, v0, v1}, Lcom/mxtech/videoplayer/ActivityMessenger;->癤욱븳援(Landroid/app/Activity;Ljava/lang/CharSequence;[Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method

.method public final 癤욱븳援(Landroid/app/Activity;Landroid/content/pm/PackageInfo;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)V
    .locals 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/mxtech/videoplayer/App;->ㅼ꽑嫄()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lnt;->direct_download_url:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/App;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {}, Lcom/mxtech/videoplayer/L;->癤욱븳援()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/mxtech/videoplayer/App;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v0, Lnt;->cannot_open_downloader:I

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/App;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, p4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_5

    const-string v2, "\n\n"

    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    sget v6, Lnt;->installed_version:I

    invoke-virtual {p0, v6}, Lcom/mxtech/videoplayer/App;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    iget-object v7, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-direct {p0, v5, v2, v6}, Lcom/mxtech/videoplayer/App;->癤욱븳援(Landroid/text/Spannable;II)V

    move v2, v3

    :goto_2
    if-eqz p3, :cond_3

    iget-object v6, p3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "player_required_version_name"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mxtech/videoplayer/App;->癤욱븳援(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    if-nez v2, :cond_2

    const-string v2, "\n\n"

    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    sget v7, Lnt;->required_version:I

    invoke-virtual {p0, v7}, Lcom/mxtech/videoplayer/App;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    sget v7, Lnt;->or_later:I

    invoke-virtual {p0, v7}, Lcom/mxtech/videoplayer/App;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-direct {p0, v5, v2, v6}, Lcom/mxtech/videoplayer/App;->癤욱븳援(Landroid/text/Spannable;II)V

    :cond_3
    new-array v2, v3, [Ljava/lang/String;

    aput-object v1, v2, v4

    invoke-static {p1, v5, v2, v0}, Lcom/mxtech/videoplayer/ActivityMessenger;->癤욱븳援(Landroid/app/Activity;Ljava/lang/CharSequence;[Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_4
    invoke-static {p0}, Lfu;->癤욱븳援(Landroid/content/Context;)Lft;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/App;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lft;->癤욱븳援(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lnt;->market_not_found:I

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v0, p0}, Lft;->癤욱븳援(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-virtual {p0, v2, v5}, Lcom/mxtech/videoplayer/App;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    move v2, v4

    goto :goto_2
.end method

.method public 癤욱븳援(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public 癤욱븳援(Lcom/mxtech/app/ActivityBase;I)Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    sget v1, Lno;->checkVersion:I

    if-ne p2, v1, :cond_0

    new-instance v1, Lla;

    iget-object v2, p1, Lcom/mxtech/app/ActivityBase;->癤욱븳援:Lfm;

    invoke-direct {v1, p0, p1, v2}, Lla;-><init>(Lcom/mxtech/videoplayer/App;Landroid/app/Activity;Lfm;)V

    :goto_0
    return v0

    :cond_0
    sget v1, Lno;->send_bug_report:I

    if-ne p2, v1, :cond_1

    new-instance v1, Llk;

    invoke-direct {v1, p1}, Llk;-><init>(Lcom/mxtech/app/ActivityBase;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    :try_start_1
    sget v1, Lno;->whats_new:I

    if-ne p2, v1, :cond_2

    iget-object v1, p1, Lcom/mxtech/app/ActivityBase;->癤욱븳援:Lfm;

    invoke-static {p1, v1}, Lcom/mxtech/videoplayer/L;->癤욱븳援(Landroid/app/Activity;Lfm;)V

    goto :goto_0

    :cond_2
    sget v1, Lno;->features:I

    if-ne p2, v1, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    sget v3, Lnt;->features_url:I

    invoke-virtual {p0, v3}, Lcom/mxtech/videoplayer/App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Lcom/mxtech/app/ActivityBase;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    sget v1, Lno;->faq:I

    if-ne p2, v1, :cond_4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    sget v3, Lnt;->faq_url:I

    invoke-virtual {p0, v3}, Lcom/mxtech/videoplayer/App;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Lcom/mxtech/app/ActivityBase;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    sget v1, Lno;->about:I

    if-ne p2, v1, :cond_5

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mxtech/videoplayer/ActivityAbout;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1}, Lcom/mxtech/app/ActivityBase;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 궗(Landroid/app/Activity;)Z
    .locals 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/mxtech/videoplayer/App;->궗:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/mxtech/videoplayer/App;->먯꽌:Z

    if-nez v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mxtech/videoplayer/service/PlayService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/mxtech/videoplayer/App;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    iput-boolean v0, p0, Lcom/mxtech/videoplayer/App;->먯꽌:Z

    :cond_1
    :goto_1
    sget-object v1, Lcom/mxtech/videoplayer/L;->붿슧:Loe;

    if-nez v1, :cond_2

    new-instance v1, Loe;

    invoke-direct {v1, p0}, Loe;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mxtech/videoplayer/L;->붿슧:Loe;

    :try_start_0
    sget-object v1, Lcom/mxtech/videoplayer/L;->붿슧:Loe;

    invoke-static {p0, v1}, Lql;->癤욱븳援(Landroid/content/Context;Loe;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    invoke-static {p0}, Lcom/mxtech/videoplayer/L;->癤욱븳援(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mxtech/videoplayer/App;->癤욱븳援(Landroid/app/Activity;Z)Z

    move-result v0

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, "Failed to start the Play Service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget v1, Lnt;->error_cannot_open_writable_database:I

    invoke-virtual {p0, p1, v1, v0}, Lcom/mxtech/videoplayer/App;->癤욱븳援(Landroid/app/Activity;IZ)V

    goto :goto_2
.end method

.method public 먯꽌()V
    .locals 2

    const-string v0, "MX.Player"

    sput-object v0, Lcom/mxtech/app/MXApplication;->癤욱븳援:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lnm;->thumb_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lqp;->궗:I

    sget v1, Lnm;->thumb_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lqp;->먯꽌:I

    return-void
.end method

.method public final 쇰뒗()V
    .locals 4

    const-string v0, "java.library.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "java.library.path: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/mxtech/videoplayer/App;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nativeLibraryDir: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/lib"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mxtech/videoplayer/App;->궗(Ljava/lang/String;)V

    sget-object v1, Lcom/mxtech/videoplayer/L;->弱밧:Ljava/lang/String;

    if-nez v1, :cond_4

    sget-object v0, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v1, "codec path is not specified."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    :cond_3
    aget-object v3, v1, v0

    invoke-direct {p0, v3}, Lcom/mxtech/videoplayer/App;->궗(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/mxtech/videoplayer/L;->弱밧:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/mxtech/videoplayer/L;->弱밧:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mxtech/videoplayer/App;->궗(Ljava/lang/String;)V

    goto :goto_1
.end method
