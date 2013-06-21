.class public final Lcom/mxtech/videoplayer/service/PlayService;
.super Landroid/app/Service;

# interfaces
.implements Lmx;
.implements Lnc;


# static fields
.field public static 癤욱븳援:Lcom/mxtech/videoplayer/service/PlayService;

.field private static final 궗:Ljava/lang/String;


# instance fields
.field private ㅼ꽑嫄:Landroid/app/NotificationManager;

.field private 弱밧:Lnb;

.field private 洹:Lmv;

.field private 꾨뱾:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private 대쫫:Landroid/os/Bundle;

.field private final 뚮Ц:Landroid/content/BroadcastReceiver;

.field private 뚮젮議뚮떎怨:Landroid/content/Intent;

.field private 먮:Landroid/app/Notification;

.field private final 먯껜蹂대떎:Landroid/content/IntentFilter;

.field private final 먯꽌:Lrd;

.field private 몃Ъ:I

.field private 붿슧:I

.field private 쇰뒗:Lre;

.field private 留먰븷:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".Service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mxtech/videoplayer/service/PlayService;->궗:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lrd;

    invoke-direct {v0, p0}, Lrd;-><init>(Lcom/mxtech/videoplayer/service/PlayService;)V

    iput-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->먯꽌:Lrd;

    new-instance v0, Lrb;

    invoke-direct {v0, p0}, Lrb;-><init>(Lcom/mxtech/videoplayer/service/PlayService;)V

    iput-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->뚮Ц:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->먯껜蹂대떎:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->먯껜蹂대떎:Landroid/content/IntentFilter;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method private 弱밧()V
    .locals 2

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v0}, Lnb;->寃껋씠()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v0}, Lnb;->앸ぐ()V

    :cond_0
    return-void
.end method

.method public static synthetic 癤욱븳援(Lcom/mxtech/videoplayer/service/PlayService;)Lnb;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    return-object v0
.end method

.method private 癤욱븳援(I)V
    .locals 3

    const/16 v2, 0xa

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sparse-switch p1, :sswitch_data_0

    sget-object v0, Lcom/mxtech/videoplayer/service/PlayService;->궗:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unhandled media key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/mxtech/videoplayer/service/PlayService;->쇰뒗()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v0}, Lnb;->앸ぐ()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v0}, Lnb;->꾩()V

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mxtech/videoplayer/service/PlayService;->癤욱븳援(Z)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/mxtech/videoplayer/service/PlayService;->궗()V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/mxtech/videoplayer/service/PlayService;->癤욱븳援()V

    goto :goto_0

    :sswitch_6
    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v1, "navi_move_interval"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    neg-int v0, v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/mxtech/videoplayer/service/PlayService;->먯꽌(I)V

    goto :goto_0

    :sswitch_7
    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v1, "navi_move_interval"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/mxtech/videoplayer/service/PlayService;->먯꽌(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_3
        0x57 -> :sswitch_4
        0x58 -> :sswitch_5
        0x59 -> :sswitch_6
        0x5a -> :sswitch_7
        0x7e -> :sswitch_1
        0x7f -> :sswitch_2
    .end sparse-switch
.end method

.method private 癤욱븳援(Landroid/net/Uri;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v0, v3}, Lnb;->궗(Z)V

    iput p2, p0, Lcom/mxtech/videoplayer/service/PlayService;->몃Ъ:I

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->뚮젮議뚮떎怨:Landroid/content/Intent;

    const-string v1, "decode_mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v0

    iget-object v1, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v1, p1, v0, v2, v2}, Lnb;->癤욱븳援(Landroid/net/Uri;BII)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lnb;->癤욱븳援(Landroid/view/SurfaceHolder;I)Z

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v0}, Lnb;->앸ぐ()V

    invoke-direct {p0, v3}, Lcom/mxtech/videoplayer/service/PlayService;->몃Ъ(I)V

    return-void
.end method

.method static synthetic 癤욱븳援(Lcom/mxtech/videoplayer/service/PlayService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mxtech/videoplayer/service/PlayService;->癤욱븳援(I)V

    return-void
.end method

.method public static synthetic 癤욱븳援(Lcom/mxtech/videoplayer/service/PlayService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mxtech/videoplayer/service/PlayService;->癤욱븳援(Z)V

    return-void
.end method

.method private 癤욱븳援(Z)V
    .locals 3

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v0}, Lnb;->ㅼ젣濡()V

    :cond_0
    iget-object v1, p0, Lcom/mxtech/videoplayer/service/PlayService;->쇰뒗:Lre;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/service/PlayService;->癤욱븳援(Lre;)Lrf;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    if-nez v1, :cond_4

    :cond_1
    invoke-virtual {v0}, Lrf;->癤욱븳援()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->쇰뒗:Lre;

    goto :goto_0

    :cond_4
    iget-object v2, v0, Lrf;->癤욱븳援:Lnb;

    invoke-virtual {v2}, Lnb;->먯꽌()V

    iget-object v2, v0, Lrf;->癤욱븳援:Lnb;

    iget-object v0, v0, Lrf;->먯꽌:Landroid/os/Bundle;

    invoke-interface {v1, v2, v0}, Lre;->癤욱븳援(Lnb;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public static synthetic 궗(Lcom/mxtech/videoplayer/service/PlayService;)V
    .locals 0

    invoke-direct {p0}, Lcom/mxtech/videoplayer/service/PlayService;->弱밧()V

    return-void
.end method

.method private 대쫫(I)Landroid/app/Notification;
    .locals 11

    const/4 v10, 0x4

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->먮:Landroid/app/Notification;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->먮:Landroid/app/Notification;

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->먮:Landroid/app/Notification;

    sget v1, Lnn;->icon_noti:I

    iput v1, v0, Landroid/app/Notification;->icon:I

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->먮:Landroid/app/Notification;

    iput v2, v0, Landroid/app/Notification;->flags:I

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->먮:Landroid/app/Notification;

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/service/PlayService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v3, Lnp;->play_status:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/4 p1, -0x1

    :cond_0
    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->먮:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v1}, Lnb;->롩퐢()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v2}, Lnb;->留먰븷()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    sget-object v1, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    const-string v2, "%s / "

    invoke-virtual {v1, v6, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lno;->progress:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v4}, Lnb;->ㅼ꽑嫄곗쓽()I

    move-result v4

    int-to-long v7, v4

    sub-long/2addr v2, v7

    sget-object v4, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v7}, Lnb;->덉쓣()I

    move-result v7

    if-ne v7, v10, :cond_5

    :goto_0
    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    :goto_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    sget v2, Lno;->playpause:I

    iget-object v1, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v1}, Lnb;->寃껋씠()I

    move-result v1

    if-ne v1, v10, :cond_7

    sget v1, Lnn;->pause:I

    :goto_2
    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-ge v1, v2, :cond_8

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/service/PlayService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v1, v2, v1

    :goto_3
    sget v2, Lno;->prev:I

    const/high16 v3, 0x43fa

    cmpg-float v1, v1, v3

    if-gez v1, :cond_9

    const/16 v1, 0x8

    :goto_4
    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/high16 v1, -0x8000

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "cmd"

    const-string v3, "prev"

    invoke-static {v2, v3, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    sget v2, Lno;->prev:I

    invoke-static {p0, v6, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "cmd"

    const-string v3, "next"

    invoke-static {v2, v3, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    sget v2, Lno;->next:I

    invoke-static {p0, v6, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "cmd"

    const-string v3, "playpause"

    invoke-static {v2, v3, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    sget v2, Lno;->playpause:I

    invoke-static {p0, v6, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "cmd"

    const-string v3, "close"

    invoke-static {v2, v3, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    sget v2, Lno;->close:I

    invoke-static {p0, v6, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_1
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v1}, Lnb;->뚮Ц()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mxtech/videoplayer/service/PlayService;->留먰븷:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v1}, Lnb;->뚮Ц()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/mxtech/videoplayer/service/PlayService;->留먰븷:Landroid/net/Uri;

    iget-object v1, p0, Lcom/mxtech/videoplayer/service/PlayService;->뚮젮議뚮떎怨:Landroid/content/Intent;

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/mxtech/videoplayer/service/PlayService;->留먰븷:Landroid/net/Uri;

    iget-object v3, p0, Lcom/mxtech/videoplayer/service/PlayService;->뚮젮議뚮떎怨:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lnb;->癤욱븳援(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v1}, Lnb;->먮()Ljava/lang/String;

    move-result-object v1

    :cond_3
    sget v2, Lno;->title:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v1, "file"

    iget-object v2, p0, Lcom/mxtech/videoplayer/service/PlayService;->留먰븷:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mxtech/videoplayer/service/PlayService;->留먰븷:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Lql;->癤욱븳援(I)Lql;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-virtual {v2, v1}, Lql;->궗(Ljava/io/File;)I

    move-result v3

    if-eqz v3, :cond_b

    sget-object v4, Lcom/mxtech/videoplayer/L;->붿슧:Loe;

    invoke-virtual {v4, v3, v1}, Loe;->궗(ILjava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/service/PlayService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lnm;->noti_thumb_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v5, Lnm;->noti_thumb_height:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v5, 0x2

    invoke-static {v1, v4, v3, v5}, Le;->癤욱븳援(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_b

    sget v3, Lno;->thumb:I

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Lql;->먯꽌()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_5
    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->뚮젮議뚮떎怨:Landroid/content/Intent;

    iget-object v1, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v1}, Lnb;->뚮Ц()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->먮:Landroid/app/Notification;

    iget-object v1, p0, Lcom/mxtech/videoplayer/service/PlayService;->뚮젮議뚮떎怨:Landroid/content/Intent;

    invoke-static {p0, v6, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    :cond_4
    iput v6, p0, Lcom/mxtech/videoplayer/service/PlayService;->붿슧:I

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->먮:Landroid/app/Notification;

    return-object v0

    :cond_5
    move v5, v6

    goto/16 :goto_0

    :cond_6
    sget v1, Lno;->progress:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v4, "--:--:--"

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    goto/16 :goto_1

    :cond_7
    sget v1, Lnn;->play:I

    goto/16 :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/mxtech/videoplayer/service/PlayService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v1, v1

    goto/16 :goto_3

    :cond_9
    move v1, v6

    goto/16 :goto_4

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v2}, Lql;->먯꽌()V

    throw v1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_6
    sget v1, Lno;->thumb:I

    sget v2, Lnn;->icon_noti:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_5

    :cond_b
    :try_start_4
    invoke-virtual {v2}, Lql;->먯꽌()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6
.end method

.method static synthetic 먯꽌()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mxtech/videoplayer/service/PlayService;->궗:Ljava/lang/String;

    return-object v0
.end method

.method private 먯꽌(I)V
    .locals 3

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v0}, Lnb;->롩퐢()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    iget-object v1, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v1}, Lnb;->ㅼ꽑嫄곗쓽()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {}, Lnb;->湲고빐()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lnb;->癤욱븳援(II)V

    :cond_0
    return-void
.end method

.method private 몃Ъ(I)V
    .locals 3

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->ㅼ꽑嫄:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/mxtech/videoplayer/service/PlayService;->대쫫(I)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private 쇰뒗()V
    .locals 2

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v0}, Lnb;->寃껋씠()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v0}, Lnb;->꾩()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v0}, Lnb;->앸ぐ()V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->먯꽌:Lrd;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mxtech/videoplayer/service/PlayService;->몃Ъ(I)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    sput-object p0, Lcom/mxtech/videoplayer/service/PlayService;->癤욱븳援:Lcom/mxtech/videoplayer/service/PlayService;

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/service/PlayService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->ㅼ꽑嫄:Landroid/app/NotificationManager;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v1, "audio_focus"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lrc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lrc;-><init>(Lcom/mxtech/videoplayer/service/PlayService;Lrc;)V

    iput-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->꾨뱾:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mxtech/videoplayer/service/PlayService;->癤욱븳援(Z)V

    const/4 v0, 0x0

    sput-object v0, Lcom/mxtech/videoplayer/service/PlayService;->癤욱븳援:Lcom/mxtech/videoplayer/service/PlayService;

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "cmd"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "playpause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/mxtech/videoplayer/service/PlayService;->쇰뒗()V

    :cond_0
    :goto_0
    const/4 v0, 0x2

    return v0

    :cond_1
    const-string v1, "next"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/service/PlayService;->궗()V

    goto :goto_0

    :cond_2
    const-string v1, "prev"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/service/PlayService;->癤욱븳援()V

    goto :goto_0

    :cond_3
    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mxtech/videoplayer/service/PlayService;->癤욱븳援(Z)V

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public ㅼ꽑嫄()V
    .locals 0

    return-void
.end method

.method public ㅼ꽑嫄(I)V
    .locals 2

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->붿슧:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->붿슧:I

    const/16 v1, 0x28

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mxtech/videoplayer/service/PlayService;->몃Ъ(I)V

    goto :goto_0
.end method

.method public ㅼ꽑嫄(II)V
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mxtech/videoplayer/service/PlayService;->몃Ъ(I)V

    goto :goto_0
.end method

.method public 寃껋씠()V
    .locals 0

    return-void
.end method

.method public 弱밧(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mxtech/videoplayer/service/PlayService;->몃Ъ(I)V

    return-void
.end method

.method public 洹(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mxtech/videoplayer/service/PlayService;->몃Ъ(I)V

    return-void
.end method

.method public 洹()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public 癤욱븳援(Lre;)Lrf;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mxtech/videoplayer/service/PlayService;->stopForeground(Z)V

    new-instance v1, Lrf;

    invoke-direct {v1}, Lrf;-><init>()V

    iget-object v2, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    iput-object v2, v1, Lrf;->癤욱븳援:Lnb;

    iget-object v2, p0, Lcom/mxtech/videoplayer/service/PlayService;->洹:Lmv;

    iput-object v2, v1, Lrf;->궗:Lmv;

    iget-object v2, p0, Lcom/mxtech/videoplayer/service/PlayService;->대쫫:Landroid/os/Bundle;

    iput-object v2, v1, Lrf;->먯꽌:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/mxtech/videoplayer/service/PlayService;->쇰뒗:Lre;

    iput-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    iput-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->쇰뒗:Lre;

    iput-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->대쫫:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->洹:Lmv;

    iput-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->뚮젮議뚮떎怨:Landroid/content/Intent;

    iput-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->먮:Landroid/app/Notification;

    iput-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->留먰븷:Landroid/net/Uri;

    if-eqz v2, :cond_1

    if-eq v2, p1, :cond_1

    invoke-interface {v2}, Lre;->finish()V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->뚮Ц:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/service/PlayService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->꾨뱾:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/mxtech/videoplayer/L;->뚮Ц:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/mxtech/videoplayer/service/PlayService;->꾨뱾:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_2
    sget-object v0, Lcom/mxtech/videoplayer/L;->뚮Ц:Landroid/media/AudioManager;

    invoke-static {p0}, Lcom/mxtech/videoplayer/service/PlayService$AudioEventReceiver;->癤욱븳援(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    :cond_3
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/mxtech/videoplayer/service/PlayService;->궗:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public 癤욱븳援()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    iget-object v2, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v2}, Lnb;->뚮벏()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v3, "smart_prev"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v2}, Lnb;->롩퐢()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v0}, Lnb;->ㅼ꽑嫄곗쓽()I

    move-result v0

    const/16 v2, 0xbb8

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    const/16 v2, 0x1770

    invoke-virtual {v0, v1, v2}, Lnb;->癤욱븳援(II)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->洹:Lmv;

    iget-object v1, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v1}, Lnb;->뚮Ц()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lmv;->癤욱븳援(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v1}, Lnb;->ㅼ젣濡()V

    invoke-direct {p0, v0, v4}, Lcom/mxtech/videoplayer/service/PlayService;->癤욱븳援(Landroid/net/Uri;I)V

    goto :goto_0
.end method

.method public 癤욱븳援(BBZ)V
    .locals 3

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnb;->癤욱븳援(Landroid/view/SurfaceHolder;I)Z

    goto :goto_0
.end method

.method public 癤욱븳援(II)V
    .locals 0

    return-void
.end method

.method public 癤욱븳援(Landroid/net/Uri;Lqn;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    iput-byte v0, p2, Lqn;->궗:B

    return-void
.end method

.method public 癤욱븳援(Lcom/mxtech/subtitle/SubStationAlphaMedia;)V
    .locals 0

    return-void
.end method

.method public 癤욱븳援(Lhg;)V
    .locals 0

    return-void
.end method

.method public 癤욱븳援(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public 癤욱븳援(Lmv;)V
    .locals 2

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v0}, Lnb;->롩퐢()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->洹:Lmv;

    iget-object v1, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v1}, Lnb;->뚮Ц()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmv;->癤욱븳援(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public 癤욱븳援(Lre;Lnb;Lmv;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PP already exists."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    iput-object p1, p0, Lcom/mxtech/videoplayer/service/PlayService;->쇰뒗:Lre;

    iput-object p5, p0, Lcom/mxtech/videoplayer/service/PlayService;->대쫫:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/mxtech/videoplayer/service/PlayService;->洹:Lmv;

    iput v3, p0, Lcom/mxtech/videoplayer/service/PlayService;->몃Ъ:I

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v0, p0}, Lnb;->癤욱븳援(Lnc;)V

    invoke-virtual {p3, p0}, Lmv;->癤욱븳援(Lmx;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/service/PlayService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->뚮젮議뚮떎怨:Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/mxtech/videoplayer/service/PlayService;->대쫫(I)Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/mxtech/videoplayer/service/PlayService;->startForeground(ILandroid/app/Notification;)V

    invoke-direct {p0}, Lcom/mxtech/videoplayer/service/PlayService;->弱밧()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->꾨뱾:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mxtech/videoplayer/L;->뚮Ц:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/mxtech/videoplayer/service/PlayService;->꾨뱾:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_1
    sget-object v0, Lcom/mxtech/videoplayer/L;->뚮Ц:Landroid/media/AudioManager;

    invoke-static {p0}, Lcom/mxtech/videoplayer/service/PlayService$AudioEventReceiver;->癤욱븳援(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    :cond_2
    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->뚮Ц:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mxtech/videoplayer/service/PlayService;->먯껜蹂대떎:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/mxtech/videoplayer/service/PlayService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public 궗()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v1}, Lnb;->뚮벏()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v2, "shuffle"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/mxtech/videoplayer/service/PlayService;->洹:Lmv;

    iget-object v2, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v2}, Lnb;->뚮Ц()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lmv;->癤욱븳援(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v2}, Lnb;->ㅼ젣濡()V

    invoke-direct {p0, v1, v0}, Lcom/mxtech/videoplayer/service/PlayService;->癤욱븳援(Landroid/net/Uri;I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public 궗(I)V
    .locals 0

    return-void
.end method

.method public 궗(Lhg;)V
    .locals 0

    return-void
.end method

.method public 궗(Z)V
    .locals 0

    return-void
.end method

.method public 먯꽌(II)V
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    if-nez v2, :cond_0

    :goto_0
    :pswitch_0
    return-void

    :cond_0
    packed-switch p2, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    sget-object v2, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v3, "playback_complete_action"

    invoke-static {v2, v3, v4}, Lel;->癤욱븳援(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v2}, Lnb;->뚮Ц()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/mxtech/videoplayer/service/PlayService;->洹:Lmv;

    iget v4, p0, Lcom/mxtech/videoplayer/service/PlayService;->몃Ъ:I

    invoke-virtual {v3, v2, v4, v0}, Lmv;->癤욱븳援(Landroid/net/Uri;IZ)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/mxtech/videoplayer/service/PlayService;->몃Ъ:I

    invoke-direct {p0, v0, v1}, Lcom/mxtech/videoplayer/service/PlayService;->癤욱븳援(Landroid/net/Uri;I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/mxtech/videoplayer/service/PlayService;->癤욱븳援(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->洹:Lmv;

    iget-object v1, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v1}, Lnb;->뚮Ц()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmv;->癤욱븳援(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, v0}, Lcom/mxtech/videoplayer/service/PlayService;->몃Ъ(I)V

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v2}, Lnb;->ㅼ젣濡()V

    sget-object v2, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v3, "playback_complete_action"

    invoke-static {v2, v3, v4}, Lel;->癤욱븳援(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :cond_2
    :pswitch_6
    invoke-direct {p0, v1}, Lcom/mxtech/videoplayer/service/PlayService;->癤욱븳援(Z)V

    goto :goto_0

    :pswitch_7
    iget-object v2, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v2}, Lnb;->덉쓣()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget-object v1, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    const/16 v2, 0x1770

    invoke-virtual {v1, v0, v2}, Lnb;->癤욱븳援(II)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v0}, Lnb;->앸ぐ()V

    goto :goto_0

    :pswitch_8
    sget-object v2, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v3, "shuffle"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/mxtech/videoplayer/service/PlayService;->洹:Lmv;

    iget-object v3, p0, Lcom/mxtech/videoplayer/service/PlayService;->弱밧:Lnb;

    invoke-virtual {v3}, Lnb;->뚮Ц()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lmv;->癤욱븳援(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v2, v0}, Lcom/mxtech/videoplayer/service/PlayService;->癤욱븳援(Landroid/net/Uri;I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public 붿슧()V
    .locals 1

    const/16 v0, 0x24

    iput v0, p0, Lcom/mxtech/videoplayer/service/PlayService;->붿슧:I

    return-void
.end method

.method public 쇰뒗(I)V
    .locals 0

    return-void
.end method
