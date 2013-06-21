.class public final Lcom/mxtech/videoplayer/L;
.super Ljava/lang/Object;


# static fields
.field public static ㅼ꽑嫄:Lfh;

.field public static 弱밧:Ljava/lang/String;

.field public static 洹:Z

.field public static 癤욱븳援:Landroid/content/SharedPreferences;

.field public static 궗:Lgt;

.field public static 꾨뱾:Landroid/app/KeyguardManager;

.field public static 대쫫:Z

.field public static 뚮Ц:Landroid/media/AudioManager;

.field public static final 먮:Ljava/lang/StringBuilder;

.field static 먯껜蹂대떎:I

.field public static 먯꽌:I

.field public static 몃Ъ:I

.field public static 붿슧:Loe;

.field public static 쇰뒗:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/mxtech/videoplayer/L;->몃Ъ:I

    const/4 v0, 0x1

    sput v0, Lcom/mxtech/videoplayer/L;->먯껜蹂대떎:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static native hasOMXDecoder()Z
.end method

.method public static native native_init(Landroid/content/Context;IILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static ㅼ꽑嫄()V
    .locals 3

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "omxdecoder"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/mxtech/app/AppUtils;->癤욱븳援(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static 癤욱븳援()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/mxtech/videoplayer/L;->궗:Lgt;

    iget v0, v0, Lgt;->먯꽌:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/mxtech/videoplayer/L;->궗:Lgt;

    iget v0, v0, Lgt;->弱밧:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "v7_neon"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "v7_vfpv3d16"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/mxtech/videoplayer/L;->궗:Lgt;

    iget v0, v0, Lgt;->먯꽌:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/mxtech/videoplayer/L;->궗:Lgt;

    iget v0, v0, Lgt;->ㅼ꽑嫄:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const-string v0, "v6_vfp"

    goto :goto_0

    :cond_2
    const-string v0, "v6"

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/mxtech/videoplayer/L;->궗:Lgt;

    iget v0, v0, Lgt;->먯꽌:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    const-string v0, "v5te"

    goto :goto_0

    :cond_4
    const-string v0, ""

    goto :goto_0
.end method

.method public static 癤욱븳援(Landroid/content/Context;B)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget v0, Lnt;->decoder_abbr_default:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    sget v0, Lnt;->decoder_abbr_hw:I

    goto :goto_0

    :pswitch_2
    sget v0, Lnt;->decoder_abbr_omx:I

    goto :goto_0

    :pswitch_3
    sget v0, Lnt;->decoder_abbr_sw:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static 癤욱븳援(Landroid/app/Activity;Lfm;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mxtech/videoplayer/L;->癤욱븳援(Landroid/app/Activity;Lfm;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public static 癤욱븳援(Landroid/app/Activity;Lfm;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 4

    sget v0, Lns;->notice:I

    invoke-static {p0, v0}, Lrg;->癤욱븳援(Landroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    const v2, 0x104000a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    if-eqz p2, :cond_1

    new-instance v1, Llz;

    invoke-direct {v1, p1, p2}, Llz;-><init>(Lfm;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :goto_0
    invoke-virtual {p1, v0}, Lfm;->癤욱븳援(Landroid/content/DialogInterface;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method

.method public static 癤욱븳援(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lms;->뚮젮議뚮떎怨()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mxtech/videoplayer/L;->癤욱븳援(Landroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method

.method public static 癤욱븳援(Landroid/content/Context;I)V
    .locals 6

    const/4 v4, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    sput-object v0, Lcom/mxtech/videoplayer/L;->꾨뱾:Landroid/app/KeyguardManager;

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/mxtech/videoplayer/L;->뚮Ц:Landroid/media/AudioManager;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    invoke-static {}, Lgs;->궗()Lgt;

    move-result-object v0

    sput-object v0, Lcom/mxtech/videoplayer/L;->궗:Lgt;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput p1, Lcom/mxtech/videoplayer/L;->먯꽌:I

    sget-object v0, Lcom/mxtech/videoplayer/L;->궗:Lgt;

    iget v0, v0, Lgt;->弱밧:I

    if-ne v0, v4, :cond_0

    sget v0, Lcom/mxtech/videoplayer/L;->몃Ъ:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mxtech/videoplayer/L;->몃Ъ:I

    :cond_0
    invoke-static {p0}, Lee;->弱밧(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/mxtech/videoplayer/L;->대쫫:Z

    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    const-string v0, "/system/build.prop"

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v3, "com.ti.omap_enhancement"

    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lcom/mxtech/videoplayer/L;->몃Ъ:I

    or-int/lit8 v3, v3, 0x4

    sput v3, Lcom/mxtech/videoplayer/L;->몃Ъ:I

    :cond_1
    const-string v3, "ro.board.platform"

    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    :goto_1
    sget-object v3, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v4, "omxdecoder"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    sget v3, Lcom/mxtech/videoplayer/L;->몃Ъ:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_7

    sget v3, Lgr;->癤욱븳援:I

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_3

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v4, "2.3.6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_4

    :cond_3
    invoke-static {}, Lcom/mxtech/videoplayer/L;->ㅼ꽑嫄()V

    :cond_4
    :goto_2
    sget-boolean v3, Lcom/mxtech/videoplayer/L;->대쫫:Z

    if-nez v3, :cond_5

    sget v3, Lgr;->궗:I

    const/16 v4, 0x2756

    if-ne v3, v4, :cond_5

    const-string v3, "ro.build.characteristics"

    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v3, "[ ,\\t]"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    :goto_3
    if-lt v0, v4, :cond_a

    :cond_5
    :goto_4
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_5
    invoke-static {p0}, Lms;->癤욱븳援(Landroid/content/Context;)V

    sget v0, Lnt;->name_by_track:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mxtech/media/FFPlayer;->洹:Ljava/lang/String;

    sput-object v0, Lho;->癤욱븳援:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lgt;

    invoke-direct {v0}, Lgt;-><init>()V

    sput-object v0, Lcom/mxtech/videoplayer/L;->궗:Lgt;

    goto/16 :goto_0

    :sswitch_0
    :try_start_4
    const-string v4, "msm7x30"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lcom/mxtech/videoplayer/L;->몃Ъ:I

    or-int/lit8 v3, v3, 0x10

    sput v3, Lcom/mxtech/videoplayer/L;->몃Ъ:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :sswitch_1
    :try_start_6
    const-string v4, "qsd8k"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lcom/mxtech/videoplayer/L;->몃Ъ:I

    or-int/lit8 v3, v3, 0x8

    sput v3, Lcom/mxtech/videoplayer/L;->몃Ъ:I

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "omap3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget v3, Lcom/mxtech/videoplayer/L;->몃Ъ:I

    or-int/lit8 v3, v3, 0x20

    sput v3, Lcom/mxtech/videoplayer/L;->몃Ъ:I

    goto/16 :goto_1

    :cond_6
    const-string v4, "omap4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lcom/mxtech/videoplayer/L;->몃Ъ:I

    or-int/lit8 v3, v3, 0x40

    sput v3, Lcom/mxtech/videoplayer/L;->몃Ъ:I

    goto/16 :goto_1

    :sswitch_3
    const-string v4, "s5pc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lcom/mxtech/videoplayer/L;->몃Ъ:I

    or-int/lit16 v3, v3, 0x80

    sput v3, Lcom/mxtech/videoplayer/L;->몃Ъ:I

    goto/16 :goto_1

    :sswitch_4
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "exynos"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lcom/mxtech/videoplayer/L;->몃Ъ:I

    or-int/lit16 v3, v3, 0x100

    sput v3, Lcom/mxtech/videoplayer/L;->몃Ъ:I

    goto/16 :goto_1

    :sswitch_5
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tegra"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lcom/mxtech/videoplayer/L;->몃Ъ:I

    or-int/lit16 v3, v3, 0x200

    sput v3, Lcom/mxtech/videoplayer/L;->몃Ъ:I

    goto/16 :goto_1

    :cond_7
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-ge v3, v4, :cond_8

    invoke-static {}, Lcom/mxtech/videoplayer/L;->ㅼ꽑嫄()V

    goto/16 :goto_2

    :cond_8
    sget v3, Lgr;->癤욱븳援:I

    const/16 v4, 0xbe

    if-ne v3, v4, :cond_9

    invoke-static {}, Lcom/mxtech/videoplayer/L;->ㅼ꽑嫄()V

    goto/16 :goto_2

    :cond_9
    sget v3, Lgr;->癤욱븳援:I

    const/16 v4, 0xdc

    if-ne v3, v4, :cond_4

    invoke-static {}, Lcom/mxtech/videoplayer/L;->ㅼ꽑嫄()V

    goto/16 :goto_2

    :cond_a
    aget-object v1, v3, v0

    const-string v5, "tablet"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mxtech/videoplayer/L;->대쫫:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x45 -> :sswitch_4
        0x4d -> :sswitch_0
        0x4f -> :sswitch_2
        0x51 -> :sswitch_1
        0x53 -> :sswitch_3
        0x54 -> :sswitch_5
        0x65 -> :sswitch_4
        0x6d -> :sswitch_0
        0x6f -> :sswitch_2
        0x71 -> :sswitch_1
        0x73 -> :sswitch_3
        0x74 -> :sswitch_5
    .end sparse-switch
.end method

.method public static 癤욱븳援(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "font.conf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/mxtech/videoplayer/L;->궗(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<?xml version=\"1.0\"?><!DOCTYPE fontconfig SYSTEM \"fonts.dtd\"><fontconfig><dir>/system/fonts</dir><dir>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</dir>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<cachedir>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</cachedir>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</fontconfig>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    throw v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static 궗()I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0xe

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static 궗(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "font"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static 궗(Landroid/content/Context;B)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_1
    sget v0, Lnt;->decoder_hw:I

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget v0, Lnt;->decoder_omx:I

    goto :goto_1

    :pswitch_3
    sget v0, Lnt;->decoder_sw:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static 먯꽌()V
    .locals 2

    invoke-static {}, Lcom/mxtech/app/AppUtils;->getProcessorCount()I

    move-result v0

    sget v1, Lcom/mxtech/videoplayer/L;->먯껜蹂대떎:I

    if-le v0, v1, :cond_0

    sget-object v1, Lcom/mxtech/videoplayer/L;->ㅼ꽑嫄:Lfh;

    invoke-virtual {v1, v0}, Lfh;->癤욱븳援(I)V

    sput v0, Lcom/mxtech/videoplayer/L;->먯껜蹂대떎:I

    :cond_0
    return-void
.end method
