.class public final Lnb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lgg;
.implements Lgk;
.implements Lhi;


# static fields
.field private static final ㅼ젣濡:[F

.field private static final 癤욱븳援:Ljava/lang/String;

.field private static final 궗:Ljava/lang/String;


# instance fields
.field private final ㅼ꽑嫄:Landroid/os/Handler;

.field private ㅼ꽑嫄곗쓽:Lcom/mxtech/media/FFPlayer;

.field private ㅼ쬆:I

.field private 寃껋씠:I

.field private 弱밧:Lnc;

.field private 弱방떙:Z

.field private final 怨:Ljava/util/List;

.field private 洹:Z

.field private 洹멸:I

.field private 洹몄쓽:Lnf;

.field private 湲고빐:Lcom/mxtech/subtitle/SubStationAlphaMedia;

.field private 꾨뱾:Lne;

.field private 꾩:I

.field private 꾩떎:Lng;

.field private 대떎:Lgi;

.field private 대쫫:Ljava/io/File;

.field private 덉넚:I

.field private 덉쓣:I

.field private 덉쓬:Lqn;

.field private 듦낵:Z

.field private 떎:Z

.field private 뚮Ц:Ljava/lang/String;

.field private 뚮벏:B

.field private 뚮젮以:Ljava/lang/String;

.field private 뚮젮議뚮떎怨:F

.field private 롩퐢:B

.field private 먮:F

.field private 먯껜蹂대떎:Ljava/net/InetAddress;

.field private final 먯꽌:Landroid/content/Context;

.field private 몃:J

.field private 몃Ъ:Z

.field private 붿슧:I

.field private 쇰뒗:Landroid/net/Uri;

.field private 앸ぐ:I

.field private 쥌:I

.field private 留먰븷:Z

.field private 紐낆옱:B

.field private 李:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mxtech/app/MXApplication;->癤욱븳援:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".PP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnb;->癤욱븳援:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mxtech/app/MXApplication;->癤욱븳援:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".PP.Seek"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnb;->궗:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lnb;->ㅼ젣濡:[F

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x2bt 0xc9t 0x88t 0x3ft
        0x8dt 0xdt 0x92t 0x3ft
        0xe5t 0xd3t 0x9bt 0x3ft
        0x51t 0x23t 0xa6t 0x3ft
        0x55t 0x3t 0xb1t 0x3ft
        0xdct 0x7bt 0xbct 0x3ft
        0x41t 0x95t 0xc8t 0x3ft
        0x53t 0x58t 0xd5t 0x3ft
        0x5ft 0xcet 0xe2t 0x3ft
        0x32t 0x1t 0xf1t 0x3ft
        0x24t 0xfbt 0xfft 0x3ft
        0x8ft 0xe3t 0x7t 0x40t
        0x4ft 0x38t 0x10t 0x40t
        0xe6t 0x1t 0x19t 0x40t
        0xb8t 0x46t 0x22t 0x40t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lnc;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lnb;->ㅼ꽑嫄:Landroid/os/Handler;

    iput v2, p0, Lnb;->앸ぐ:I

    iput v2, p0, Lnb;->꾩:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnb;->怨:Ljava/util/List;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnb;->먯꽌:Landroid/content/Context;

    iput-object p2, p0, Lnb;->弱밧:Lnc;

    return-void
.end method

.method static synthetic ㅼ꽑嫄(Lnb;)Lnc;
    .locals 1

    iget-object v0, p0, Lnb;->弱밧:Lnc;

    return-object v0
.end method

.method private ㅼ꽑嫄(I)V
    .locals 2

    iget v0, p0, Lnb;->꾩:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lnb;->꾩:I

    iput p1, p0, Lnb;->꾩:I

    iget-object v1, p0, Lnb;->弱밧:Lnc;

    invoke-interface {v1, v0, p1}, Lnc;->ㅼ꽑嫄(II)V

    goto :goto_0
.end method

.method static synthetic 弱밧(Lnb;)Lng;
    .locals 1

    iget-object v0, p0, Lnb;->꾩떎:Lng;

    return-object v0
.end method

.method public static 湲고빐()I
    .locals 3

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v1, "fast_seek"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x9c4

    goto :goto_0
.end method

.method private 瑜()Z
    .locals 12

    const/4 v11, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v1}, Lgi;->癤욱븳援()Lcom/mxtech/media/FFPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mxtech/media/FFPlayer;->getStreamTypes()[I

    move-result-object v5

    invoke-virtual {p0, v4}, Lnb;->癤욱븳援(Lcom/mxtech/media/FFPlayer;)V

    iget-object v1, p0, Lnb;->덉쓬:Lqn;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnb;->덉쓬:Lqn;

    iget-short v1, v1, Lqn;->弱밧:S

    if-ltz v1, :cond_1

    iget-object v1, p0, Lnb;->덉쓬:Lqn;

    iget-short v1, v1, Lqn;->弱밧:S

    array-length v2, v5

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lnb;->덉쓬:Lqn;

    iget-short v1, v1, Lqn;->弱밧:S

    aget v1, v5, v1

    if-ne v1, v11, :cond_1

    iget-object v0, p0, Lnb;->덉쓬:Lqn;

    iget-short v0, v0, Lqn;->弱밧:S

    iget-object v1, p0, Lnb;->덉쓬:Lqn;

    invoke-direct {p0, v1}, Lnb;->癤욱븳援(Lqn;)I

    move-result v1

    invoke-virtual {v4, v0, v11, v1}, Lcom/mxtech/media/FFPlayer;->changeAudioStream(IZI)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    array-length v7, v5

    move v2, v0

    move v3, v0

    :goto_1
    if-lt v2, v7, :cond_2

    array-length v3, v5

    move v1, v0

    move v2, v0

    :goto_2
    if-lt v1, v3, :cond_6

    array-length v3, v5

    move v1, v0

    move v2, v0

    :goto_3
    if-ge v1, v3, :cond_0

    aget v6, v5, v1

    if-ne v6, v11, :cond_8

    invoke-virtual {p0}, Lnb;->怨()I

    move-result v0

    invoke-virtual {v4, v2, v11, v0}, Lcom/mxtech/media/FFPlayer;->changeAudioStream(IZI)Z

    move-result v0

    goto :goto_0

    :cond_2
    aget v1, v5, v2

    invoke-virtual {v4, v3}, Lcom/mxtech/media/FFPlayer;->癤욱븳援(I)Lgh;

    move-result-object v8

    if-ne v1, v11, :cond_3

    invoke-interface {v8}, Lgh;->앸ぐ()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v8}, Lgh;->뚮젮議뚮떎怨()[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v1, v0

    :goto_4
    if-lt v1, v9, :cond_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_4
    aget-object v10, v8, v1

    invoke-static {v10}, Lek;->癤욱븳援(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {p0}, Lnb;->怨()I

    move-result v0

    invoke-virtual {v4, v3, v11, v0}, Lcom/mxtech/media/FFPlayer;->changeAudioStream(IZI)Z

    move-result v0

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    aget v6, v5, v1

    if-ne v6, v11, :cond_7

    invoke-virtual {v4, v2}, Lcom/mxtech/media/FFPlayer;->癤욱븳援(I)Lgh;

    move-result-object v6

    invoke-interface {v6}, Lgh;->앸ぐ()I

    move-result v6

    if-lez v6, :cond_7

    invoke-virtual {p0}, Lnb;->怨()I

    move-result v0

    invoke-virtual {v4, v2, v11, v0}, Lcom/mxtech/media/FFPlayer;->changeAudioStream(IZI)Z

    move-result v0

    goto :goto_0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private 癤욱븳援(BB)B
    .locals 4

    const/4 v1, 0x4

    const/4 v0, 0x2

    const/4 v2, 0x1

    iget-byte v3, p0, Lnb;->紐낆옱:B

    if-eq v3, p1, :cond_0

    iget-byte v3, p0, Lnb;->紐낆옱:B

    and-int/2addr v3, p2

    if-eqz v3, :cond_0

    iget-byte v0, p0, Lnb;->紐낆옱:B

    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, v3

    :goto_1
    :pswitch_1
    and-int/2addr v0, p2

    int-to-byte v0, v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lnb;->대쫫:Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-static {}, Lms;->롩퐢()Z

    move-result v0

    invoke-direct {p0, v0}, Lnb;->쇰뒗(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    invoke-static {}, Lms;->ㅼ쬆()Z

    move-result v0

    invoke-direct {p0, v0}, Lnb;->쇰뒗(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private 癤욱븳援(Lqn;)I
    .locals 2

    iget-byte v0, p1, Lqn;->ㅼ꽑嫄:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget v0, Lcom/mxtech/media/FFPlayer;->쇰뒗:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lnb;->怨()I

    move-result v0

    goto :goto_0
.end method

.method public static 癤욱븳援(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4

    invoke-static {p0, p1}, Lgm;->癤욱븳援(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lnb;->癤욱븳援:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Canonicalizing URI "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method private 癤욱븳援(Landroid/net/Uri;)Lhg;
    .locals 4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lnb;->怨:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhg;

    invoke-interface {v0}, Lhg;->쇰뒗()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method static synthetic 癤욱븳援(Lnb;)Lne;
    .locals 1

    iget-object v0, p0, Lnb;->꾨뱾:Lne;

    return-object v0
.end method

.method private 癤욱븳援(IZ)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lnb;->癤욱븳援(IZI)V

    return-void
.end method

.method private 癤욱븳援(IZI)V
    .locals 4

    const/4 v3, 0x0

    iget-byte v0, p0, Lnb;->뚮벏:B

    iget-byte v1, p0, Lnb;->롩퐢:B

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lnb;->뚮벏:B

    iget-byte v0, p0, Lnb;->롩퐢:B

    iget-byte v1, p0, Lnb;->롩퐢:B

    iget-byte v2, p0, Lnb;->뚮벏:B

    invoke-direct {p0, v1, v2}, Lnb;->癤욱븳援(BB)B

    move-result v1

    iput-byte v1, p0, Lnb;->롩퐢:B

    iget-byte v1, p0, Lnb;->롩퐢:B

    if-nez v1, :cond_0

    iput p1, p0, Lnb;->洹멸:I

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lnb;->먯꽌(I)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Lnb;->弱방떙:Z

    invoke-direct {p0, p3}, Lnb;->궗(I)V

    iget-object v1, p0, Lnb;->덉쓬:Lqn;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnb;->덉쓬:Lqn;

    iget v1, v1, Lqn;->癤욱븳援:I

    const/16 v2, 0x1388

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lnb;->덉쓬:Lqn;

    iput v3, v1, Lqn;->癤욱븳援:I

    :cond_1
    iget-object v1, p0, Lnb;->弱밧:Lnc;

    iget-byte v2, p0, Lnb;->롩퐢:B

    invoke-interface {v1, v0, v2, p2}, Lnc;->癤욱븳援(BBZ)V

    goto :goto_0
.end method

.method private 癤욱븳援(Landroid/view/SurfaceHolder;Landroid/net/Uri;I)V
    .locals 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    iget-byte v0, p0, Lnb;->롩퐢:B

    if-ne v0, v6, :cond_d

    new-instance v8, Lfw;

    iget-object v1, p0, Lnb;->먯꽌:Landroid/content/Context;

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v2, "subtitle_show_hw"

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v6

    :goto_0
    invoke-direct {v8, v1, p0, p2, v0}, Lfw;-><init>(Landroid/content/Context;Lge;Landroid/net/Uri;I)V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {v8, p1}, Lfw;->癤욱븳援(Landroid/view/SurfaceHolder;)V

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lfw;->癤욱븳援(Z)V

    :cond_0
    iget-object v0, p0, Lnb;->ㅼ꽑嫄곗쓽:Lcom/mxtech/media/FFPlayer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lnb;->ㅼ꽑嫄곗쓽:Lcom/mxtech/media/FFPlayer;

    const/4 v1, 0x0

    iput-object v1, p0, Lnb;->ㅼ꽑嫄곗쓽:Lcom/mxtech/media/FFPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_14

    :try_start_1
    iget-boolean v0, p0, Lnb;->弱방떙:Z

    if-eqz v0, :cond_13

    move v0, v6

    :goto_2
    invoke-virtual {v2}, Lcom/mxtech/media/FFPlayer;->removeAudioStream()V

    iget-object v1, p0, Lnb;->덉쓬:Lqn;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnb;->덉쓬:Lqn;

    invoke-virtual {v1}, Lqn;->癤욱븳援()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnb;->덉쓬:Lqn;

    iget-object v3, v1, Lqn;->뚮Ц:[Lqo;

    array-length v4, v3

    move v1, v7

    :goto_3
    if-lt v1, v4, :cond_9

    :cond_1
    :goto_4
    new-instance v1, Lgi;

    invoke-direct {v1, v8, v2, v0}, Lgi;-><init>(Lgd;Lcom/mxtech/media/FFPlayer;I)V

    iput-object v1, p0, Lnb;->대떎:Lgi;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    if-eqz v9, :cond_2

    :try_start_2
    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->洹()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_2
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lfw;->洹()V

    :cond_3
    :goto_5
    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0, p0}, Lgi;->癤욱븳援(Lgk;)V

    iget-object v0, p0, Lnb;->대떎:Lgi;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lgi;->setAudioStreamType(I)V

    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0}, Lgi;->prepareAsync()V

    iget-object v0, p0, Lnb;->덉쓬:Lqn;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lnb;->대떎:Lgi;

    iget-object v1, p0, Lnb;->덉쓬:Lqn;

    iget v1, v1, Lqn;->꾨뱾:I

    invoke-virtual {v0, v1}, Lgi;->setProcessing(I)V

    :cond_4
    :goto_6
    return-void

    :cond_5
    move v0, v7

    goto :goto_0

    :cond_6
    :try_start_3
    iget-byte v0, p0, Lnb;->뚮벏:B

    and-int/lit8 v0, v0, 0x6

    if-eqz v0, :cond_8

    iget-object v0, p0, Lnb;->먯껜蹂대떎:Ljava/net/InetAddress;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lnb;->먯껜蹂대떎:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lnb;->먯껜蹂대떎:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lnb;->癤욱븳援:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Skipping 2ndary player due to host is not local - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnb;->먯껜蹂대떎:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v9

    goto/16 :goto_1

    :cond_7
    new-instance v0, Lcom/mxtech/media/FFPlayer;

    iget-object v1, p0, Lnb;->먯꽌:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lnb;->怨()I

    move-result v4

    move-object v3, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/mxtech/media/FFPlayer;-><init>(Landroid/content/Context;Lge;Landroid/net/Uri;ILhi;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v0

    goto/16 :goto_1

    :cond_8
    move-object v2, v9

    goto/16 :goto_1

    :cond_9
    :try_start_4
    aget-object v5, v3, v1

    iget-boolean v10, v5, Lqo;->궗:Z

    if-eqz v10, :cond_a

    const-string v10, "ffsub"

    iget-object v5, v5, Lqo;->癤욱븳援:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v5

    if-eqz v5, :cond_a

    or-int/lit8 v0, v0, 0x2

    goto/16 :goto_4

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_b

    :try_start_5
    invoke-virtual {v2}, Lcom/mxtech/media/FFPlayer;->洹()V

    :cond_b
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move-object v1, v8

    :goto_7
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lfw;->洹()V

    :cond_c
    throw v0

    :cond_d
    iget-object v0, p0, Lnb;->ㅼ꽑嫄곗쓽:Lcom/mxtech/media/FFPlayer;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lnb;->ㅼ꽑嫄곗쓽:Lcom/mxtech/media/FFPlayer;

    iput-object v9, p0, Lnb;->ㅼ꽑嫄곗쓽:Lcom/mxtech/media/FFPlayer;

    move-object v1, v0

    :goto_8
    :try_start_6
    invoke-virtual {v1}, Lcom/mxtech/media/FFPlayer;->removeAudioStream()V

    if-eqz p1, :cond_e

    invoke-static {}, Lms;->먮()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mxtech/media/FFPlayer;->setCoreLimit(I)V

    iget-byte v0, p0, Lnb;->롩퐢:B

    const/4 v2, 0x4

    if-ne v0, v2, :cond_10

    sget v0, Lcom/mxtech/media/FFPlayer;->弱밧:I

    :goto_9
    or-int/2addr v0, p3

    invoke-virtual {v1, p1, v0}, Lcom/mxtech/media/FFPlayer;->癤욱븳援(Landroid/view/SurfaceHolder;I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/mxtech/media/FFPlayer;->癤욱븳援(Z)V

    :cond_e
    new-instance v0, Lgi;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lgi;-><init>(Lgd;Lcom/mxtech/media/FFPlayer;I)V

    iput-object v0, p0, Lnb;->대떎:Lgi;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/mxtech/media/FFPlayer;->洹()V

    goto/16 :goto_5

    :cond_f
    new-instance v0, Lcom/mxtech/media/FFPlayer;

    iget-object v1, p0, Lnb;->먯꽌:Landroid/content/Context;

    invoke-virtual {p0}, Lnb;->怨()I

    move-result v4

    move-object v2, p0

    move-object v3, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/mxtech/media/FFPlayer;-><init>(Landroid/content/Context;Lge;Landroid/net/Uri;ILhi;)V

    move-object v1, v0

    goto :goto_8

    :cond_10
    :try_start_7
    sget v0, Lcom/mxtech/media/FFPlayer;->쇰뒗:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v0

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/mxtech/media/FFPlayer;->洹()V

    :cond_11
    throw v0

    :cond_12
    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v1, "default_deinterlace"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0, v6}, Lgi;->setProcessing(I)V

    goto/16 :goto_6

    :catchall_3
    move-exception v0

    move-object v1, v9

    goto :goto_7

    :cond_13
    move v0, v7

    goto/16 :goto_2

    :cond_14
    move v0, v7

    goto/16 :goto_4
.end method

.method static synthetic 癤욱븳援(Lnb;I)V
    .locals 0

    iput p1, p0, Lnb;->洹멸:I

    return-void
.end method

.method static synthetic 癤욱븳援(Lnb;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnb;->癤욱븳援(IZ)V

    return-void
.end method

.method static synthetic 癤욱븳援(Lnb;Landroid/view/SurfaceHolder;Landroid/net/Uri;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnb;->癤욱븳援(Landroid/view/SurfaceHolder;Landroid/net/Uri;I)V

    return-void
.end method

.method static synthetic 癤욱븳援(Lnb;Ljava/net/InetAddress;)V
    .locals 0

    iput-object p1, p0, Lnb;->먯껜蹂대떎:Ljava/net/InetAddress;

    return-void
.end method

.method static synthetic 癤욱븳援(Lnb;Lne;)V
    .locals 0

    iput-object p1, p0, Lnb;->꾨뱾:Lne;

    return-void
.end method

.method static synthetic 癤욱븳援(Lnb;Lnf;)V
    .locals 0

    iput-object p1, p0, Lnb;->洹몄쓽:Lnf;

    return-void
.end method

.method static synthetic 癤욱븳援(Lnb;Lng;)V
    .locals 0

    iput-object p1, p0, Lnb;->꾩떎:Lng;

    return-void
.end method

.method static synthetic 癤욱븳援(Lnb;Z)V
    .locals 0

    iput-boolean p1, p0, Lnb;->몃Ъ:Z

    return-void
.end method

.method private static 癤욱븳援(Lcom/mxtech/media/FFPlayer;I)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/mxtech/media/FFPlayer;->getStreamTypes()[I

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    aget v4, v2, v1

    if-ne v4, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private 癤욱븳援(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic 궗(Lnb;)I
    .locals 1

    iget v0, p0, Lnb;->앸ぐ:I

    return v0
.end method

.method private 궗(BI)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x3

    iput-byte v0, p0, Lnb;->뚮벏:B

    invoke-static {}, Lms;->뚮벏()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lnb;->뚮벏:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lnb;->뚮벏:B

    :cond_0
    iput-boolean v3, p0, Lnb;->弱방떙:Z

    iput p2, p0, Lnb;->ㅼ쬆:I

    if-eqz p1, :cond_2

    iget-byte v0, p0, Lnb;->뚮벏:B

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    iput-byte p1, p0, Lnb;->롩퐢:B

    iget-object v0, p0, Lnb;->덉쓬:Lqn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnb;->덉쓬:Lqn;

    iput-short v4, v0, Lqn;->弱밧:S

    iget-object v0, p0, Lnb;->덉쓬:Lqn;

    iput-byte v3, v0, Lqn;->ㅼ꽑嫄:B

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lnb;->덉쓬:Lqn;

    if-eqz v0, :cond_3

    iget-byte v0, p0, Lnb;->뚮벏:B

    iget-object v1, p0, Lnb;->덉쓬:Lqn;

    iget-byte v1, v1, Lqn;->궗:B

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnb;->덉쓬:Lqn;

    iget-byte v0, v0, Lqn;->궗:B

    iput-byte v0, p0, Lnb;->롩퐢:B

    iget-object v0, p0, Lnb;->덉쓬:Lqn;

    iget v0, v0, Lqn;->먯꽌:I

    iput v0, p0, Lnb;->ㅼ쬆:I

    iget-byte v0, p0, Lnb;->롩퐢:B

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lnb;->덉쓬:Lqn;

    iget-short v0, v0, Lqn;->弱밧:S

    if-ltz v0, :cond_1

    iput-boolean v2, p0, Lnb;->弱방떙:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lnb;->대쫫:Ljava/io/File;

    if-nez v0, :cond_7

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v1, "swdecoder_net"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-byte v5, p0, Lnb;->롩퐢:B

    :cond_4
    :goto_1
    iget-byte v0, p0, Lnb;->롩퐢:B

    if-ne v0, v2, :cond_1

    sget-boolean v0, Lms;->롩퐢:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lnb;->弱방떙:Z

    goto :goto_0

    :cond_5
    invoke-static {}, Lms;->ㅼ쬆()Z

    move-result v0

    invoke-direct {p0, v0}, Lnb;->쇰뒗(Z)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-byte v6, p0, Lnb;->롩퐢:B

    goto :goto_1

    :cond_6
    iput-byte v2, p0, Lnb;->롩퐢:B

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v1, "swdecoder_local"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    iput-byte v5, p0, Lnb;->롩퐢:B

    :goto_2
    iget-object v0, p0, Lnb;->쇰뒗:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/mxtech/FileUtils;->먯꽌(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0, v4}, Lms;->癤욱븳援(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_4

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    iget-byte v1, p0, Lnb;->뚮벏:B

    and-int/2addr v1, v0

    if-eqz v1, :cond_4

    iput-byte v0, p0, Lnb;->롩퐢:B

    goto :goto_1

    :cond_8
    invoke-static {}, Lms;->롩퐢()Z

    move-result v0

    invoke-direct {p0, v0}, Lnb;->쇰뒗(Z)Z

    move-result v0

    if-eqz v0, :cond_9

    iput-byte v6, p0, Lnb;->롩퐢:B

    goto :goto_2

    :cond_9
    iput-byte v2, p0, Lnb;->롩퐢:B

    goto :goto_2
.end method

.method private 궗(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lnb;->ㅼ꽑嫄곗쓽:Lcom/mxtech/media/FFPlayer;

    if-eqz v0, :cond_1

    and-int/lit8 v0, p1, 0x3

    if-nez v0, :cond_1

    iget-object v0, p0, Lnb;->ㅼ꽑嫄곗쓽:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->癤욱븳援()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_0
    iget-object v0, p0, Lnb;->ㅼ꽑嫄곗쓽:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->洹()V

    iput-object v3, p0, Lnb;->ㅼ꽑嫄곗쓽:Lcom/mxtech/media/FFPlayer;

    :cond_1
    iget-object v0, p0, Lnb;->대떎:Lgi;

    if-eqz v0, :cond_7

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnb;->ㅼ꽑嫄곗쓽:Lcom/mxtech/media/FFPlayer;

    if-nez v0, :cond_3

    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0}, Lgi;->먯껜蹂대떎()Lgd;

    move-result-object v0

    instance-of v1, v0, Lcom/mxtech/media/FFPlayer;

    if-eqz v1, :cond_3

    and-int/lit8 v1, p1, 0x64

    if-nez v1, :cond_2

    invoke-interface {v0}, Lgd;->弱밧()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0}, Lgi;->뚮젮議뚮떎怨()Lgd;

    move-result-object v0

    check-cast v0, Lcom/mxtech/media/FFPlayer;

    iput-object v0, p0, Lnb;->ㅼ꽑嫄곗쓽:Lcom/mxtech/media/FFPlayer;

    iget-object v0, p0, Lnb;->ㅼ꽑嫄곗쓽:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->대쫫()V

    iget-object v0, p0, Lnb;->ㅼ꽑嫄곗쓽:Lcom/mxtech/media/FFPlayer;

    sget v1, Lcom/mxtech/media/FFPlayer;->궗:I

    invoke-virtual {v0, v3, v1}, Lcom/mxtech/media/FFPlayer;->癤욱븳援(Landroid/view/SurfaceHolder;I)V

    :cond_3
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnb;->ㅼ꽑嫄곗쓽:Lcom/mxtech/media/FFPlayer;

    if-nez v0, :cond_5

    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0}, Lgi;->꾨뱾()Lcom/mxtech/media/FFPlayer;

    move-result-object v0

    if-eqz v0, :cond_5

    and-int/lit16 v1, p1, 0xc8

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->弱밧()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0}, Lgi;->留먰븷()Lcom/mxtech/media/FFPlayer;

    move-result-object v0

    iput-object v0, p0, Lnb;->ㅼ꽑嫄곗쓽:Lcom/mxtech/media/FFPlayer;

    iget-object v0, p0, Lnb;->ㅼ꽑嫄곗쓽:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->대쫫()V

    iget-object v0, p0, Lnb;->ㅼ꽑嫄곗쓽:Lcom/mxtech/media/FFPlayer;

    sget v1, Lcom/mxtech/media/FFPlayer;->궗:I

    invoke-virtual {v0, v3, v1}, Lcom/mxtech/media/FFPlayer;->癤욱븳援(Landroid/view/SurfaceHolder;I)V

    :cond_5
    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0}, Lgi;->붿슧()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_6
    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0}, Lgi;->洹()V

    iput-object v3, p0, Lnb;->대떎:Lgi;

    :cond_7
    iget-object v0, p0, Lnb;->꾨뱾:Lne;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lnb;->꾨뱾:Lne;

    invoke-virtual {v0, v4}, Lne;->cancel(Z)Z

    iput-object v3, p0, Lnb;->꾨뱾:Lne;

    :cond_8
    invoke-direct {p0, v4}, Lnb;->먯꽌(I)V

    return-void

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhg;

    iget-object v2, p0, Lnb;->怨:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lnb;->弱밧:Lnc;

    invoke-interface {v2, v0}, Lnc;->궗(Lhg;)V

    goto/16 :goto_0

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhg;

    iget-object v2, p0, Lnb;->怨:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lnb;->弱밧:Lnc;

    invoke-interface {v2, v0}, Lnc;->궗(Lhg;)V

    goto :goto_1
.end method

.method static synthetic 궗(Lnb;I)V
    .locals 0

    invoke-direct {p0, p1}, Lnb;->먯꽌(I)V

    return-void
.end method

.method static synthetic 꾩떎()Ljava/lang/String;
    .locals 1

    sget-object v0, Lnb;->癤욱븳援:Ljava/lang/String;

    return-object v0
.end method

.method private 됯()V
    .locals 5

    iget-object v0, p0, Lnb;->怨:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0}, Lgi;->붿슧()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lnb;->먯꽌(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnb;->李:J

    iget-wide v0, p0, Lnb;->李:J

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnb;->몃:J

    iget-byte v0, p0, Lnb;->롩퐢:B

    iput-byte v0, p0, Lnb;->紐낆옱:B

    iget v0, p0, Lnb;->붿슧:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lnb;->吏()V

    :cond_2
    iget v0, p0, Lnb;->꾩:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lnb;->앸ぐ()V

    :cond_3
    return-void

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhg;

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_5

    iget-object v1, p0, Lnb;->怨:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lnb;->怨:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private 띔낵()Z
    .locals 1

    sget v0, Lgr;->癤욱븳援:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_0
        0x33 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_0
        0xb4 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic 먯꽌(Lnb;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lnb;->쇰뒗:Landroid/net/Uri;

    return-object v0
.end method

.method private 먯꽌(I)V
    .locals 5

    const/4 v4, 0x1

    iget v0, p0, Lnb;->앸ぐ:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lnb;->앸ぐ:I

    iput p1, p0, Lnb;->앸ぐ:I

    iget v1, p0, Lnb;->앸ぐ:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lnb;->ㅼ꽑嫄:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnb;->ㅼ꽑嫄:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_1
    iget-object v1, p0, Lnb;->弱밧:Lnc;

    invoke-interface {v1, v0, p1}, Lnc;->먯꽌(II)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lnb;->ㅼ꽑嫄:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1
.end method

.method private 먯꽌(II)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lnb;->먮:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lnb;->뚮젮議뚮떎怨:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    if-ge p1, p2, :cond_0

    iput p1, p0, Lnb;->덉쓣:I

    int-to-float v0, p1

    iget v1, p0, Lnb;->뚮젮議뚮떎怨:F

    mul-float/2addr v0, v1

    iget v1, p0, Lnb;->먮:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lnb;->寃껋씠:I

    :goto_0
    iget-object v0, p0, Lnb;->弱밧:Lnc;

    invoke-interface {v0, p1, p2}, Lnc;->癤욱븳援(II)V

    return-void

    :cond_0
    int-to-float v0, p2

    iget v1, p0, Lnb;->먮:F

    mul-float/2addr v0, v1

    iget v1, p0, Lnb;->뚮젮議뚮떎怨:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lnb;->덉쓣:I

    iput p2, p0, Lnb;->寃껋씠:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-static {}, Lms;->留먰븷()Z

    move-result v1

    invoke-virtual {v0, v1}, Lgi;->궗(Z)I

    move-result v0

    iput v0, p0, Lnb;->덉쓣:I

    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0}, Lgi;->덉쓣()I

    move-result v0

    iput v0, p0, Lnb;->寃껋씠:I

    goto :goto_0
.end method

.method static synthetic 쇰뒗(Lnb;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lnb;->怨:Ljava/util/List;

    return-object v0
.end method

.method private 쇰뒗(Z)Z
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iget-object v2, p0, Lnb;->대쫫:Ljava/io/File;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lnb;->대쫫:Ljava/io/File;

    invoke-static {v0}, Lcom/mxtech/FileUtils;->궗(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v2, "wmv"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/mxtech/videoplayer/L;->몃Ъ:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_3

    move p1, v1

    :cond_1
    :goto_1
    return p1

    :cond_2
    iget-object v2, p0, Lnb;->쇰뒗:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnb;->쇰뒗:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/mxtech/FileUtils;->먯꽌(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget v0, Lcom/mxtech/videoplayer/L;->몃Ъ:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    move p1, v1

    goto :goto_1
.end method

.method private 吏()V
    .locals 3

    iget-boolean v0, p0, Lnb;->떎:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnb;->덉쓬:Lqn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnb;->덉쓬:Lqn;

    iget v0, v0, Lqn;->癤욱븳援:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lnb;->대떎:Lgi;

    iget-object v1, p0, Lnb;->덉쓬:Lqn;

    iget v1, v1, Lqn;->癤욱븳援:I

    invoke-static {}, Lnb;->湲고빐()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lgi;->癤욱븳援(II)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lnb;->弱밧:Lnc;

    iget v1, p0, Lnb;->붿슧:I

    invoke-interface {v0, v1}, Lnc;->洹(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0}, Lgi;->ㅼ꽑嫄()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnb;->대떎:Lgi;

    const/4 v1, 0x0

    invoke-static {}, Lnb;->湲고빐()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lgi;->癤욱븳援(II)V

    goto :goto_0
.end method


# virtual methods
.method public embedSubtitle()Z
    .locals 1

    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0}, Lgi;->먯꽌()Lgg;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lgg;->embedSubtitle()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public frameTime()I
    .locals 1

    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0}, Lgi;->먯꽌()Lgg;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lgg;->frameTime()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStreamCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStreamTypes()[I
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lnb;->ㅼ꽑嫄:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v1}, Lgi;->먮()V

    iget-object v1, p0, Lnb;->弱밧:Lnc;

    iget-object v2, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v2}, Lgi;->ㅼ꽑嫄()I

    move-result v2

    invoke-interface {v1, v2}, Lnc;->ㅼ꽑嫄(I)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ㅼ꽑嫄()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnb;->몃:J

    return-void
.end method

.method public ㅼ꽑嫄(Lgd;)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lnb;->먯꽌(I)V

    return-void
.end method

.method public ㅼ꽑嫄(Z)V
    .locals 2

    const/4 v1, 0x5

    if-nez p1, :cond_0

    invoke-direct {p0, v1}, Lnb;->ㅼ꽑嫄(I)V

    :cond_0
    invoke-virtual {p0}, Lnb;->롩퐢()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0}, Lgi;->쇰뒗()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0}, Lgi;->대쫫()V

    invoke-direct {p0, v1}, Lnb;->먯꽌(I)V

    :cond_1
    return-void
.end method

.method public ㅼ꽑嫄곗쓽()I
    .locals 1

    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0}, Lgi;->ㅼ꽑嫄()I

    move-result v0

    return v0
.end method

.method public ㅼ젣濡()V
    .locals 8

    const/4 v7, 0x6

    invoke-virtual {p0}, Lnb;->롩퐢()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lnb;->앸ぐ:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lnb;->앸ぐ:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget v0, p0, Lnb;->앸ぐ:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    :cond_1
    invoke-virtual {p0}, Lnb;->떎()Lqn;

    move-result-object v0

    :goto_1
    const/4 v1, 0x2

    :try_start_0
    invoke-static {v1}, Lql;->癤욱븳援(I)Lql;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    iget-object v2, v1, Lql;->癤욱븳援:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_6

    :try_start_2
    iget-object v3, p0, Lnb;->쇰뒗:Landroid/net/Uri;

    invoke-virtual {v1, v3, v0}, Lql;->癤욱븳援(Landroid/net/Uri;Lqn;)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lnb;->대쫫:Ljava/io/File;

    if-eqz v0, :cond_4

    new-instance v0, Landroid/content/ContentValues;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "LastWatchTime"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget v5, p0, Lnb;->앸ぐ:I

    if-ne v5, v7, :cond_3

    const-string v5, "FinishTime"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3
    iget-object v3, p0, Lnb;->대쫫:Ljava/io/File;

    invoke-virtual {v1, v3, v0}, Lql;->癤욱븳援(Ljava/io/File;Landroid/content/ContentValues;)I

    :cond_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v1}, Lql;->먯꽌()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lnb;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    :try_start_5
    iget v0, p0, Lnb;->앸ぐ:I

    if-ne v0, v7, :cond_2

    iget-object v0, p0, Lnb;->쇰뒗:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Lql;->궗(Landroid/net/Uri;)V

    invoke-virtual {v1}, Lql;->弱밧()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_7
    invoke-virtual {v1}, Lql;->먯꽌()V

    throw v0
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
.end method

.method public ㅼ쬆()B
    .locals 1

    iget-byte v0, p0, Lnb;->롩퐢:B

    return v0
.end method

.method public 寃껋씠()I
    .locals 1

    iget v0, p0, Lnb;->꾩:I

    return v0
.end method

.method public 弱밧()V
    .locals 2

    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0}, Lgi;->width()I

    move-result v0

    iget-object v1, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v1}, Lgi;->height()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lnb;->먯꽌(II)V

    return-void
.end method

.method public 弱밧(Lgd;)V
    .locals 1

    iget-object v0, p0, Lnb;->弱밧:Lnc;

    invoke-interface {v0}, Lnc;->寃껋씠()V

    return-void
.end method

.method public 弱밧(Z)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v1}, Lgi;->癤욱븳援()Lcom/mxtech/media/FFPlayer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1, v0}, Lnb;->癤욱븳援(Lcom/mxtech/media/FFPlayer;I)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_0

    iget-object v1, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v1}, Lgi;->먯껜蹂대떎()Lgd;

    move-result-object v1

    invoke-interface {v1}, Lgd;->width()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public 弱방떙()Lgi;
    .locals 1

    iget-object v0, p0, Lnb;->대떎:Lgi;

    return-object v0
.end method

.method public 怨()I
    .locals 3

    const/4 v0, 0x0

    iget-byte v1, p0, Lnb;->롩퐢:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-byte v1, p0, Lnb;->롩퐢:B

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    sget-boolean v1, Lms;->롩퐢:Z

    if-eqz v1, :cond_0

    sget v0, Lcom/mxtech/media/FFPlayer;->쇰뒗:I

    goto :goto_0

    :cond_2
    sget-boolean v1, Lms;->롩퐢:Z

    if-eqz v1, :cond_3

    sget v0, Lcom/mxtech/media/FFPlayer;->쇰뒗:I

    goto :goto_0

    :cond_3
    invoke-static {}, Lms;->뚮벏()Z

    move-result v1

    if-nez v1, :cond_0

    sget v0, Lcom/mxtech/media/FFPlayer;->쇰뒗:I

    goto :goto_0
.end method

.method public 洹()I
    .locals 1

    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0}, Lgi;->width()I

    move-result v0

    return v0
.end method

.method public 洹멸()Z
    .locals 1

    iget v0, p0, Lnb;->붿슧:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 洹몄쓽()Z
    .locals 2

    const/4 v0, 0x0

    iget-byte v1, p0, Lnb;->롩퐢:B

    and-int/lit8 v1, v1, 0x6

    if-nez v1, :cond_0

    iget-object v1, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v1}, Lgi;->뚮Ц()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v1}, Lgi;->癤욱븳援()Lcom/mxtech/media/FFPlayer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/mxtech/media/FFPlayer;->isOMXAudioDecoderUsed()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public 癤욱븳援(ILcom/mxtech/media/FFPlayer;)Lcom/mxtech/subtitle/SubStationAlphaMedia;
    .locals 5

    iget-object v0, p0, Lnb;->湲고빐:Lcom/mxtech/subtitle/SubStationAlphaMedia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnb;->湲고빐:Lcom/mxtech/subtitle/SubStationAlphaMedia;

    :goto_0
    return-object v0

    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    iget-object v0, p0, Lnb;->대떎:Lgi;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0}, Lgi;->癤욱븳援()Lcom/mxtech/media/FFPlayer;

    move-result-object p2

    :cond_2
    if-eqz p2, :cond_4

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/mxtech/media/FFPlayer;->弱밧()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p2}, Lcom/mxtech/media/FFPlayer;->getSubStationAlphaMedia()Lcom/mxtech/subtitle/SubStationAlphaMedia;

    move-result-object v0

    iput-object v0, p0, Lnb;->湲고빐:Lcom/mxtech/subtitle/SubStationAlphaMedia;

    :cond_4
    iget-object v0, p0, Lnb;->湲고빐:Lcom/mxtech/subtitle/SubStationAlphaMedia;

    if-nez v0, :cond_5

    new-instance v0, Lcom/mxtech/subtitle/SubStationAlphaMedia;

    invoke-direct {v0}, Lcom/mxtech/subtitle/SubStationAlphaMedia;-><init>()V

    iput-object v0, p0, Lnb;->湲고빐:Lcom/mxtech/subtitle/SubStationAlphaMedia;

    :cond_5
    iget-object v0, p0, Lnb;->湲고빐:Lcom/mxtech/subtitle/SubStationAlphaMedia;

    iget-object v1, p0, Lnb;->먯꽌:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    sget-object v2, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v3, "ssa_font_scale"

    const/high16 v4, 0x3f80

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/mxtech/subtitle/SubStationAlphaMedia;->setFontScale(F)V

    iget-object v0, p0, Lnb;->대떎:Lgi;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lnb;->湲고빐:Lcom/mxtech/subtitle/SubStationAlphaMedia;

    invoke-virtual {p0}, Lnb;->洹()I

    move-result v1

    invoke-virtual {p0}, Lnb;->몃Ъ()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mxtech/subtitle/SubStationAlphaMedia;->setVideoSize(II)V

    :cond_6
    :goto_1
    iget v0, p0, Lnb;->덉넚:I

    if-eqz v0, :cond_7

    iget v0, p0, Lnb;->쥌:I

    if-eqz v0, :cond_7

    iget-object v0, p0, Lnb;->湲고빐:Lcom/mxtech/subtitle/SubStationAlphaMedia;

    iget v1, p0, Lnb;->덉넚:I

    iget v2, p0, Lnb;->쥌:I

    invoke-virtual {v0, v1, v2}, Lcom/mxtech/subtitle/SubStationAlphaMedia;->setCanvasSize(II)V

    :cond_7
    iget-object v0, p0, Lnb;->弱밧:Lnc;

    iget-object v1, p0, Lnb;->湲고빐:Lcom/mxtech/subtitle/SubStationAlphaMedia;

    invoke-interface {v0, v1}, Lnc;->癤욱븳援(Lcom/mxtech/subtitle/SubStationAlphaMedia;)V

    iget-object v0, p0, Lnb;->湲고빐:Lcom/mxtech/subtitle/SubStationAlphaMedia;

    goto :goto_0

    :cond_8
    if-eqz p2, :cond_6

    iget-object v0, p0, Lnb;->湲고빐:Lcom/mxtech/subtitle/SubStationAlphaMedia;

    invoke-virtual {p2}, Lcom/mxtech/media/FFPlayer;->width()I

    move-result v1

    invoke-virtual {p2}, Lcom/mxtech/media/FFPlayer;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mxtech/subtitle/SubStationAlphaMedia;->setVideoSize(II)V

    goto :goto_1
.end method

.method public 癤욱븳援(I)Lgh;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public 癤욱븳援()Lnc;
    .locals 1

    iget-object v0, p0, Lnb;->弱밧:Lnc;

    return-object v0
.end method

.method public 癤욱븳援(B)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lnb;->癤욱븳援(BI)V

    return-void
.end method

.method public 癤욱븳援(BI)V
    .locals 5

    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    and-int/lit8 v0, p1, 0x6

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-byte v3, p0, Lnb;->롩퐢:B

    and-int/lit8 v3, v3, 0x6

    if-eqz v3, :cond_3

    :goto_1
    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lnb;->궗(I)V

    iput-boolean v2, p0, Lnb;->弱방떙:Z

    iget-object v0, p0, Lnb;->덉쓬:Lqn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnb;->덉쓬:Lqn;

    iput-short v4, v0, Lqn;->弱밧:S

    iget-object v0, p0, Lnb;->덉쓬:Lqn;

    iput-byte v2, v0, Lqn;->ㅼ꽑嫄:B

    :cond_0
    iget-byte v0, p0, Lnb;->뚮벏:B

    or-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Lnb;->뚮벏:B

    iput-byte p1, p0, Lnb;->롩퐢:B

    if-eq p2, v4, :cond_1

    iput p2, p0, Lnb;->ㅼ쬆:I

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public 癤욱븳援(FFZ)V
    .locals 2

    iget v0, p0, Lnb;->먮:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    iget v0, p0, Lnb;->뚮젮議뚮떎怨:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p3, p0, Lnb;->留먰븷:Z

    iput p1, p0, Lnb;->먮:F

    iput p2, p0, Lnb;->뚮젮議뚮떎怨:F

    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0}, Lgi;->width()I

    move-result v0

    iget-object v1, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v1}, Lgi;->height()I

    move-result v1

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    invoke-direct {p0, v0, v1}, Lnb;->먯꽌(II)V

    goto :goto_0
.end method

.method public 癤욱븳援(II)V
    .locals 1

    invoke-virtual {p0}, Lnb;->洹멸()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnb;->떎:Z

    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0, p1, p2}, Lgi;->癤욱븳援(II)V

    iget-object v0, p0, Lnb;->弱밧:Lnc;

    invoke-interface {v0, p1}, Lnc;->弱밧(I)V

    goto :goto_0
.end method

.method public 癤욱븳援(Landroid/net/Uri;BII)V
    .locals 8

    const/4 v7, 0x4

    const/4 v1, 0x0

    const/4 v6, 0x1

    iget v0, p0, Lnb;->앸ぐ:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iput-boolean v1, p0, Lnb;->洹:Z

    iput-boolean v1, p0, Lnb;->몃Ъ:Z

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "mms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "rt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "gopher"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iput-object p1, p0, Lnb;->쇰뒗:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    const-string v2, "localhost"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0x7f

    aput-byte v3, v0, v2

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-byte v3, v0, v2

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lnb;->먯껜蹂대떎:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iget-object v0, p0, Lnb;->쇰뒗:Landroid/net/Uri;

    if-nez v0, :cond_3

    iget-object v0, p0, Lnb;->먯꽌:Landroid/content/Context;

    invoke-static {v0, p1}, Lgm;->癤욱븳援(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lnb;->대쫫:Ljava/io/File;

    iget-object v0, p0, Lnb;->대쫫:Ljava/io/File;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lnb;->대쫫:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lnb;->쇰뒗:Landroid/net/Uri;

    sget-object v0, Lnb;->癤욱븳援:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Canonicalizing URI(2) "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnb;->쇰뒗:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    iget-object v0, p0, Lnb;->쇰뒗:Landroid/net/Uri;

    invoke-static {v0, v1}, Lgm;->癤욱븳援(Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnb;->뚮Ц:Ljava/lang/String;

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Lql;->癤욱븳援(I)Lql;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    :try_start_2
    iget-object v0, p0, Lnb;->쇰뒗:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Lql;->癤욱븳援(Landroid/net/Uri;)Lqn;

    move-result-object v0

    iput-object v0, p0, Lnb;->덉쓬:Lqn;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Lql;->먯꽌()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    iget-object v0, p0, Lnb;->덉쓬:Lqn;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnb;->덉쓬:Lqn;

    iget v0, v0, Lqn;->대쫫:F

    iput v0, p0, Lnb;->먮:F

    iget-object v0, p0, Lnb;->덉쓬:Lqn;

    iget v0, v0, Lqn;->洹:F

    iput v0, p0, Lnb;->뚮젮議뚮떎怨:F

    iput-boolean v6, p0, Lnb;->留먰븷:Z

    :cond_4
    invoke-direct {p0, p2, p3}, Lnb;->궗(BI)V

    invoke-direct {p0, v6}, Lnb;->먯꽌(I)V

    return-void

    :cond_5
    :try_start_4
    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    if-eq v0, v7, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnb;->洹:Z
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lnb;->癤욱븳援:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x4

    :try_start_5
    new-array v3, v0, [B

    move v0, v1

    :goto_3
    if-lt v0, v7, :cond_7

    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lnb;->먯껜蹂대떎:Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lnb;->洹:Z
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :cond_7
    :try_start_7
    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_8

    const/16 v5, 0xff

    if-le v4, v5, :cond_9

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnb;->洹:Z

    goto/16 :goto_0

    :cond_9
    int-to-byte v4, v4

    aput-byte v4, v3, v0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    iput-object p1, p0, Lnb;->쇰뒗:Landroid/net/Uri;

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_8
    invoke-virtual {v1}, Lql;->먯꽌()V

    throw v0
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v0

    sget-object v1, Lnb;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lnb;->덉쓬:Lqn;

    goto :goto_2
.end method

.method public 癤욱븳援(Lcom/mxtech/media/FFPlayer;)V
    .locals 9

    const/4 v2, 0x3

    const-wide v7, 0x3ff999999999999aL

    const-wide/high16 v5, 0x3ff0

    sget-object v0, Lcom/mxtech/videoplayer/L;->뚮Ц:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    sget-object v1, Lcom/mxtech/videoplayer/L;->뚮Ц:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-ge v1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    sget v1, Lms;->먮:I

    if-le v1, v0, :cond_1

    sput v0, Lms;->먮:I

    :cond_1
    sget-object v0, Lnb;->ㅼ젣濡:[F

    sget v1, Lms;->먮:I

    aget v0, v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/mxtech/media/FFPlayer;->setVolumeModifier(F)V

    goto :goto_0

    :cond_2
    sget v1, Lms;->먮:I

    int-to-double v1, v1

    int-to-double v3, v0

    div-double v0, v1, v3

    const-wide/high16 v2, 0x3fe0

    mul-double/2addr v0, v2

    add-double/2addr v0, v5

    mul-double/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    sub-double/2addr v0, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    sub-double/2addr v2, v5

    div-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_1
.end method

.method public 癤욱븳援(Lcom/mxtech/media/FFPlayer;II)V
    .locals 1

    iget-byte v0, p0, Lnb;->뚮벏:B

    and-int/lit8 v0, v0, -0x7

    int-to-byte v0, v0

    iput-byte v0, p0, Lnb;->뚮벏:B

    return-void
.end method

.method public 癤욱븳援(Lgd;)V
    .locals 1

    iget-object v0, p0, Lnb;->弱밧:Lnc;

    invoke-interface {v0}, Lnc;->붿슧()V

    return-void
.end method

.method public 癤욱븳援(Lgd;I)V
    .locals 1

    iget-object v0, p0, Lnb;->弱밧:Lnc;

    invoke-interface {v0, p2}, Lnc;->쇰뒗(I)V

    return-void
.end method

.method public 癤욱븳援(Lgd;II)V
    .locals 1

    invoke-virtual {p0}, Lnb;->롩퐢()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lnb;->붿슧:I

    if-nez v0, :cond_0

    invoke-interface {p1}, Lgd;->duration()I

    move-result v0

    iput v0, p0, Lnb;->붿슧:I

    iget v0, p0, Lnb;->붿슧:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lnb;->吏()V

    :cond_0
    iget-object v0, p0, Lnb;->湲고빐:Lcom/mxtech/subtitle/SubStationAlphaMedia;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnb;->湲고빐:Lcom/mxtech/subtitle/SubStationAlphaMedia;

    invoke-virtual {v0, p2, p3}, Lcom/mxtech/subtitle/SubStationAlphaMedia;->setVideoSize(II)V

    :cond_1
    invoke-direct {p0, p2, p3}, Lnb;->먯꽌(II)V

    return-void
.end method

.method public 癤욱븳援(Lgd;Lhg;)V
    .locals 1

    iget-object v0, p0, Lnb;->怨:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnb;->弱밧:Lnc;

    invoke-interface {v0, p2}, Lnc;->癤욱븳援(Lhg;)V

    return-void
.end method

.method public 癤욱븳援(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnb;->湲고빐:Lcom/mxtech/subtitle/SubStationAlphaMedia;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnb;->뚮젮以:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnb;->弱밧:Lnc;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lnc;->궗(Z)V

    iput-object p1, p0, Lnb;->뚮젮以:Ljava/lang/String;

    iget-object v0, p0, Lnb;->湲고빐:Lcom/mxtech/subtitle/SubStationAlphaMedia;

    invoke-virtual {v0, p1}, Lcom/mxtech/subtitle/SubStationAlphaMedia;->overrideFonts(Ljava/lang/String;)V

    iget-object v0, p0, Lnb;->湲고빐:Lcom/mxtech/subtitle/SubStationAlphaMedia;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, p1}, Lcom/mxtech/subtitle/SubStationAlphaMedia;->setupFonts(Ljava/lang/String;)V

    iget-object v0, p0, Lnb;->弱밧:Lnc;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lnc;->궗(Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lms;->쇰뒗()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method public 癤욱븳援(Ljava/util/List;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lnb;->꾩떎:Lng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnb;->꾩떎:Lng;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lng;->cancel(Z)Z

    iput-object v2, p0, Lnb;->꾩떎:Lng;

    :cond_0
    iget-object v0, p0, Lnb;->怨:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lnb;->弱밧:Lnc;

    invoke-interface {v0}, Lnc;->ㅼ꽑嫄()V

    iget-object v0, p0, Lnb;->怨:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iput-object v2, p0, Lnb;->湲고빐:Lcom/mxtech/subtitle/SubStationAlphaMedia;

    iput-object v2, p0, Lnb;->뚮젮以:Ljava/lang/String;

    :goto_0
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhg;

    instance-of v0, v0, Lcom/mxtech/subtitle/SubStationAlphaSubtitle;

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public 癤욱븳援(Lmv;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lnb;->듦낵:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v8, p0, Lnb;->듦낵:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lnb;->덉쓬:Lqn;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnb;->덉쓬:Lqn;

    invoke-virtual {v1}, Lqn;->癤욱븳援()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnb;->덉쓬:Lqn;

    iget-object v4, v1, Lqn;->뚮Ц:[Lqo;

    array-length v5, v4

    move v3, v2

    :goto_1
    if-lt v3, v5, :cond_4

    :cond_2
    sget-object v1, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v3, "subtitle_auto_display"

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnb;->대쫫:Ljava/io/File;

    if-eqz v1, :cond_b

    new-instance v1, Lht;

    invoke-direct {v1}, Lht;-><init>()V

    iget-object v3, p0, Lnb;->대쫫:Ljava/io/File;

    invoke-static {}, Lms;->붿슧()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lht;->癤욱븳援(Ljava/io/File;Ljava/io/File;)[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    :goto_2
    if-lt v2, v4, :cond_9

    :cond_3
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lnb;->궗([Landroid/net/Uri;)V

    goto :goto_0

    :cond_4
    aget-object v1, v4, v3

    iget-object v6, v1, Lqo;->癤욱븳援:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v7, "file"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v6, Ljava/io/File;

    iget-object v1, v1, Lqo;->癤욱븳援:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lnb;->癤욱븳援(Landroid/net/Uri;)Lhg;

    move-result-object v1

    if-nez v1, :cond_5

    :try_start_0
    invoke-virtual {p0}, Lnb;->frameTime()I

    move-result v1

    invoke-static {v6, v1, p0}, Lhs;->癤욱븳援(Ljava/io/File;ILhi;)[Lhg;

    move-result-object v1

    array-length v6, v1

    if-lez v6, :cond_5

    iget-object v6, p0, Lnb;->怨:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v6, Lnb;->癤욱븳援:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_6
    const-string v7, "http"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "https"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_7
    iget-object v1, v1, Lqo;->癤욱븳援:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnb;->癤욱븳援(Ljava/util/List;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    if-nez v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_8
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    aget-object v1, v3, v2

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {p0, v5}, Lnb;->癤욱븳援(Landroid/net/Uri;)Lhg;

    move-result-object v5

    if-nez v5, :cond_a

    :try_start_1
    iget-object v5, p0, Lnb;->怨:Ljava/util/List;

    invoke-virtual {p0}, Lnb;->frameTime()I

    move-result v6

    invoke-static {v1, v6, p0}, Lhs;->癤욱븳援(Ljava/io/File;ILhi;)[Lhg;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_a
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :catch_1
    move-exception v1

    sget-object v5, Lnb;->癤욱븳援:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_b
    invoke-virtual {p1}, Lmv;->먯꽌()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p1}, Lmv;->ㅼ꽑嫄()[Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v3, p0, Lnb;->쇰뒗:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mxtech/FileUtils;->癤욱븳援(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    array-length v4, v1

    :goto_5
    if-ge v2, v4, :cond_3

    aget-object v5, v1, v2

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mxtech/FileUtils;->癤욱븳援(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-direct {p0, v0, v6}, Lnb;->癤욱븳援(Ljava/util/List;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_c
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_e
    iget-object v1, p0, Lnb;->쇰뒗:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lnb;->쇰뒗:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnb;->쇰뒗:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v4, "http"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "https"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_f
    const-string v1, "127.0.0.1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "localhost"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_10
    if-nez v0, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_11
    iget-object v1, p0, Lnb;->쇰뒗:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mxtech/FileUtils;->癤욱븳援(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lht;->癤욱븳援:[Ljava/lang/String;

    array-length v5, v4

    move v1, v2

    :goto_6
    if-ge v1, v5, :cond_3

    aget-object v2, v4, v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v6}, Lnb;->癤욱븳援(Ljava/util/List;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_12

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public 癤욱븳援(Lnc;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lnb;->弱밧:Lnc;

    return-void
.end method

.method public 癤욱븳援(Z)V
    .locals 2

    iget-object v0, p0, Lnb;->湲고빐:Lcom/mxtech/subtitle/SubStationAlphaMedia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnb;->洹몄쓽:Lnf;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lnb;->湲고빐:Lcom/mxtech/subtitle/SubStationAlphaMedia;

    invoke-virtual {v0}, Lcom/mxtech/subtitle/SubStationAlphaMedia;->isFontsSetup()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    new-instance v0, Lnf;

    iget-object v1, p0, Lnb;->湲고빐:Lcom/mxtech/subtitle/SubStationAlphaMedia;

    invoke-direct {v0, p0, v1}, Lnf;-><init>(Lnb;Lcom/mxtech/subtitle/SubStationAlphaMedia;)V

    iput-object v0, p0, Lnb;->洹몄쓽:Lnf;

    iget-object v0, p0, Lnb;->洹몄쓽:Lnf;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnf;->癤욱븳援([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public 癤욱븳援([Landroid/net/Uri;)V
    .locals 6

    const/4 v1, 0x0

    array-length v3, p1

    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_0
    if-lt v2, v3, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lnb;->궗([Landroid/net/Uri;)V

    :cond_0
    return-void

    :cond_1
    aget-object v1, p1, v2

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, "file"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnb;->frameTime()I

    move-result v1

    invoke-static {v4, v1, p0}, Lhs;->癤욱븳援(Ljava/io/File;ILhi;)[Lhg;

    move-result-object v1

    array-length v4, v1

    if-lez v4, :cond_3

    iget-object v4, p0, Lnb;->怨:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v4, Lnb;->癤욱븳援:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_4
    const-string v5, "http"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "https"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_5
    if-nez v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public 癤욱븳援(Landroid/view/SurfaceHolder;I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lnb;->앸ぐ:I

    if-eq v2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-boolean v2, p0, Lnb;->洹:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lnb;->몃Ъ:Z

    if-nez v2, :cond_1

    new-instance v2, Lne;

    iget-object v3, p0, Lnb;->쇰뒗:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1, p2}, Lne;-><init>(Lnb;Ljava/lang/String;Landroid/view/SurfaceHolder;I)V

    iput-object v2, p0, Lnb;->꾨뱾:Lne;

    iget-object v2, p0, Lnb;->꾨뱾:Lne;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lne;->癤욱븳援([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lnb;->먯꽌(I)V

    :goto_1
    return v0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lnb;->쇰뒗:Landroid/net/Uri;

    invoke-direct {p0, p1, v2, p2}, Lnb;->癤욱븳援(Landroid/view/SurfaceHolder;Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lnb;->癤욱븳援:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v1, v0}, Lnb;->癤욱븳援(IZ)V

    move v0, v1

    goto :goto_1
.end method

.method public 궗()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnb;->궗(Z)V

    return-void
.end method

.method public 궗(II)V
    .locals 1

    iput p1, p0, Lnb;->덉넚:I

    iput p2, p0, Lnb;->쥌:I

    iget-object v0, p0, Lnb;->湲고빐:Lcom/mxtech/subtitle/SubStationAlphaMedia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnb;->湲고빐:Lcom/mxtech/subtitle/SubStationAlphaMedia;

    invoke-virtual {v0, p1, p2}, Lcom/mxtech/subtitle/SubStationAlphaMedia;->setCanvasSize(II)V

    :cond_0
    return-void
.end method

.method public 궗(Landroid/view/SurfaceHolder;I)V
    .locals 3

    iget-object v0, p0, Lnb;->꾨뱾:Lne;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnb;->꾨뱾:Lne;

    invoke-virtual {v0, p1}, Lne;->癤욱븳援(Landroid/view/SurfaceHolder;)V

    :cond_0
    iget-object v0, p0, Lnb;->대떎:Lgi;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0}, Lgi;->먯껜蹂대떎()Lgd;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mxtech/media/FFPlayer;

    if-eqz v1, :cond_4

    iget-byte v1, p0, Lnb;->롩퐢:B

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    sget v1, Lcom/mxtech/media/FFPlayer;->弱밧:I

    or-int/2addr v1, p2

    :goto_1
    check-cast v0, Lcom/mxtech/media/FFPlayer;

    invoke-static {}, Lms;->먮()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mxtech/media/FFPlayer;->setCoreLimit(I)V

    invoke-virtual {v0, p1, v1}, Lcom/mxtech/media/FFPlayer;->癤욱븳援(Landroid/view/SurfaceHolder;I)V

    goto :goto_0

    :cond_3
    sget v1, Lcom/mxtech/media/FFPlayer;->쇰뒗:I

    or-int/2addr v1, p2

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_7

    invoke-direct {p0}, Lnb;->띔낵()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0, p1}, Lgd;->癤욱븳援(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0}, Lgi;->꾨뱾()Lcom/mxtech/media/FFPlayer;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->弱밧()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnb;->癤욱븳援(Lcom/mxtech/media/FFPlayer;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_6
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnb;->ㅼ꽑嫄(Z)V

    invoke-virtual {p0}, Lnb;->ㅼ젣濡()V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lnb;->궗(I)V

    iget-object v0, p0, Lnb;->弱밧:Lnc;

    invoke-interface {v0, p2}, Lnc;->궗(I)V

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lgd;->癤욱븳援(Landroid/view/SurfaceHolder;)V

    goto :goto_0
.end method

.method public 궗(Lgd;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnb;->떎:Z

    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0}, Lgi;->duration()I

    move-result v0

    iput v0, p0, Lnb;->붿슧:I

    iget-byte v0, p0, Lnb;->롩퐢:B

    and-int/lit8 v0, v0, 0x6

    if-nez v0, :cond_0

    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0}, Lgi;->뚮Ц()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lnb;->瑜()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lnb;->됯()V

    goto :goto_0
.end method

.method public 궗(Lgd;I)V
    .locals 2

    iget v0, p0, Lnb;->앸ぐ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lnb;->됯()V

    :cond_0
    return-void
.end method

.method public 궗(Z)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lnb;->덉쓬()V

    invoke-direct {p0, v0}, Lnb;->궗(I)V

    iput-object v1, p0, Lnb;->쇰뒗:Landroid/net/Uri;

    iput-object v1, p0, Lnb;->대쫫:Ljava/io/File;

    iput-object v1, p0, Lnb;->먯껜蹂대떎:Ljava/net/InetAddress;

    iput-object v1, p0, Lnb;->뚮Ц:Ljava/lang/String;

    iput v0, p0, Lnb;->붿슧:I

    iput-byte v0, p0, Lnb;->뚮벏:B

    iput-byte v0, p0, Lnb;->紐낆옱:B

    iput-byte v0, p0, Lnb;->롩퐢:B

    iput-boolean v0, p0, Lnb;->弱방떙:Z

    iput-object v1, p0, Lnb;->덉쓬:Lqn;

    iput-wide v3, p0, Lnb;->李:J

    iput-wide v3, p0, Lnb;->몃:J

    iput-boolean v0, p0, Lnb;->듦낵:Z

    iput v0, p0, Lnb;->洹멸:I

    iput v2, p0, Lnb;->먮:F

    iput v2, p0, Lnb;->뚮젮議뚮떎怨:F

    iput-boolean v0, p0, Lnb;->留먰븷:Z

    if-nez p1, :cond_0

    invoke-direct {p0, v0}, Lnb;->ㅼ꽑嫄(I)V

    :cond_0
    invoke-direct {p0, v0}, Lnb;->먯꽌(I)V

    return-void
.end method

.method public 궗([Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lnb;->꾩떎:Lng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnb;->꾩떎:Lng;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lng;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnb;->꾩떎:Lng;

    :cond_0
    new-instance v0, Lng;

    invoke-virtual {p0}, Lnb;->frameTime()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lng;-><init>(Lnb;I)V

    iput-object v0, p0, Lnb;->꾩떎:Lng;

    iget-object v0, p0, Lnb;->꾩떎:Lng;

    invoke-virtual {v0, p1}, Lng;->癤욱븳援([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public 궗(Lgd;II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public 꾨뱾()I
    .locals 1

    iget v0, p0, Lnb;->寃껋씠:I

    return v0
.end method

.method public 꾩()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnb;->ㅼ꽑嫄(Z)V

    return-void
.end method

.method public 대떎()Lqn;
    .locals 1

    iget-object v0, p0, Lnb;->덉쓬:Lqn;

    return-object v0
.end method

.method public 대쫫()F
    .locals 1

    iget v0, p0, Lnb;->뚮젮議뚮떎怨:F

    return v0
.end method

.method public 덉넚()Z
    .locals 1

    iget-object v0, p0, Lnb;->洹몄쓽:Lnf;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 덉쓣()I
    .locals 1

    iget v0, p0, Lnb;->앸ぐ:I

    return v0
.end method

.method public 덉쓬()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lnb;->꾩떎:Lng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnb;->꾩떎:Lng;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lng;->cancel(Z)Z

    iput-object v2, p0, Lnb;->꾩떎:Lng;

    :cond_0
    iget-object v0, p0, Lnb;->怨:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lnb;->弱밧:Lnc;

    invoke-interface {v0}, Lnc;->ㅼ꽑嫄()V

    iput-object v2, p0, Lnb;->湲고빐:Lcom/mxtech/subtitle/SubStationAlphaMedia;

    iput-object v2, p0, Lnb;->뚮젮以:Ljava/lang/String;

    return-void
.end method

.method public 듦낵()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lnb;->怨:Ljava/util/List;

    return-object v0
.end method

.method public 떎()Lqn;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lnb;->덉쓬:Lqn;

    if-nez v0, :cond_0

    new-instance v0, Lqn;

    invoke-direct {v0}, Lqn;-><init>()V

    iput-object v0, p0, Lnb;->덉쓬:Lqn;

    :cond_0
    iget-object v0, p0, Lnb;->덉쓬:Lqn;

    iget-object v1, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v1}, Lgi;->ㅼ꽑嫄()I

    move-result v1

    iput v1, v0, Lqn;->癤욱븳援:I

    iget-object v0, p0, Lnb;->덉쓬:Lqn;

    iget-byte v1, p0, Lnb;->롩퐢:B

    iput-byte v1, v0, Lqn;->궗:B

    iget-object v0, p0, Lnb;->덉쓬:Lqn;

    iget v1, p0, Lnb;->ㅼ쬆:I

    iput v1, v0, Lqn;->먯꽌:I

    iget-object v0, p0, Lnb;->덉쓬:Lqn;

    iget-object v1, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v1}, Lgi;->getProcessing()I

    move-result v1

    iput v1, v0, Lqn;->꾨뱾:I

    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0}, Lgi;->먯껜蹂대떎()Lgd;

    move-result-object v0

    instance-of v0, v0, Lfw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0}, Lgi;->뚮Ц()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lnb;->덉쓬:Lqn;

    const/4 v1, -0x1

    iput-short v1, v0, Lqn;->弱밧:S

    iget-object v0, p0, Lnb;->덉쓬:Lqn;

    const/4 v1, 0x1

    iput-byte v1, v0, Lqn;->ㅼ꽑嫄:B

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lnb;->留먰븷:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnb;->덉쓬:Lqn;

    iget v1, p0, Lnb;->먮:F

    iput v1, v0, Lqn;->대쫫:F

    iget-object v0, p0, Lnb;->덉쓬:Lqn;

    iget v1, p0, Lnb;->뚮젮議뚮떎怨:F

    iput v1, v0, Lqn;->洹:F

    :goto_1
    iget-object v0, p0, Lnb;->弱밧:Lnc;

    iget-object v1, p0, Lnb;->쇰뒗:Landroid/net/Uri;

    iget-object v2, p0, Lnb;->덉쓬:Lqn;

    iget-object v3, p0, Lnb;->怨:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3}, Lnc;->癤욱븳援(Landroid/net/Uri;Lqn;Ljava/util/List;)V

    iget-object v0, p0, Lnb;->덉쓬:Lqn;

    return-object v0

    :cond_2
    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0}, Lgi;->癤욱븳援()Lcom/mxtech/media/FFPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lnb;->덉쓬:Lqn;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->getAudioStream()I

    move-result v2

    int-to-short v2, v2

    iput-short v2, v1, Lqn;->弱밧:S

    iget-object v1, p0, Lnb;->덉쓬:Lqn;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->isOMXAudioDecoderUsed()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    :goto_2
    iput-byte v0, v1, Lqn;->ㅼ꽑嫄:B

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lnb;->덉쓬:Lqn;

    iput v3, v0, Lqn;->대쫫:F

    iget-object v0, p0, Lnb;->덉쓬:Lqn;

    iput v3, v0, Lqn;->洹:F

    goto :goto_1
.end method

.method public 뚮Ц()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lnb;->쇰뒗:Landroid/net/Uri;

    return-object v0
.end method

.method public 뚮벏()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lnb;->앸ぐ:I

    if-lt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 뚮젮以()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnb;->弱밧(Z)Z

    move-result v0

    return v0
.end method

.method public 뚮젮議뚮떎怨()I
    .locals 1

    iget v0, p0, Lnb;->洹멸:I

    return v0
.end method

.method public 롩퐢()Z
    .locals 2

    iget v0, p0, Lnb;->앸ぐ:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 먮()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnb;->뚮Ц:Ljava/lang/String;

    return-object v0
.end method

.method public 먯껜蹂대떎()I
    .locals 1

    iget v0, p0, Lnb;->덉쓣:I

    return v0
.end method

.method public 먯꽌()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnb;->궗(I)V

    return-void
.end method

.method public 먯꽌(Lgd;)V
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0x65

    invoke-direct {p0, v1, v1, v0}, Lnb;->癤욱븳援(IZI)V

    return-void
.end method

.method public 먯꽌(Z)V
    .locals 0

    iput-boolean p1, p0, Lnb;->留먰븷:Z

    return-void
.end method

.method public 먯꽌(Lgd;II)Z
    .locals 6

    const/4 v1, 0x1

    iget v0, p0, Lnb;->앸ぐ:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-direct {p0, p2, v1}, Lnb;->癤욱븳援(IZ)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lnb;->롩퐢()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lnb;->몃:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-direct {p0, p2, v0}, Lnb;->癤욱븳援(IZ)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public 몃()V
    .locals 1

    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0}, Lgi;->癤욱븳援()Lcom/mxtech/media/FFPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lnb;->癤욱븳援(Lcom/mxtech/media/FFPlayer;)V

    goto :goto_0
.end method

.method public 몃Ъ()I
    .locals 1

    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0}, Lgi;->height()I

    move-result v0

    return v0
.end method

.method public 붿슧()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lnb;->대쫫:Ljava/io/File;

    return-object v0
.end method

.method public 쇰뒗()F
    .locals 1

    iget v0, p0, Lnb;->먮:F

    return v0
.end method

.method public 앸ぐ()V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lnb;->ㅼ꽑嫄(I)V

    invoke-virtual {p0}, Lnb;->롩퐢()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0}, Lgi;->쇰뒗()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnb;->弱밧:Lnc;

    invoke-interface {v0}, Lnc;->洹()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnb;->대떎:Lgi;

    invoke-virtual {v0}, Lgi;->몃Ъ()V

    invoke-direct {p0, v1}, Lnb;->먯꽌(I)V

    :cond_0
    return-void
.end method

.method public 쥌()Z
    .locals 1

    iget-object v0, p0, Lnb;->뚮젮以:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 留먰븷()I
    .locals 1

    iget v0, p0, Lnb;->붿슧:I

    return v0
.end method

.method public 紐낆옱()Z
    .locals 2

    iget v0, p0, Lnb;->앸ぐ:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 李()Z
    .locals 4

    iget-wide v0, p0, Lnb;->李:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
