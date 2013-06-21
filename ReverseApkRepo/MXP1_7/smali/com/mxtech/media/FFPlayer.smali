.class public final Lcom/mxtech/media/FFPlayer;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lgd;
.implements Lgg;


# static fields
.field public static ㅼ꽑嫄:I

.field public static 弱밧:I

.field public static 洹:Ljava/lang/String;

.field public static 癤욱븳援:I

.field public static 궗:I

.field public static 대쫫:I

.field public static 먯꽌:I

.field public static 쇰뒗:I


# instance fields
.field private _nativeClient:I

.field private _nativePlayer:I

.field private ㅼ쬆:I

.field private 寃껋씠:I

.field private 꾨뱾:Lge;

.field private 덉쓣:Z

.field private 뚮Ц:Lfz;

.field private 뚮벏:I

.field private 뚮젮議뚮떎怨:Z

.field private 롩퐢:Ljava/util/List;

.field private 먮:Z

.field private 먯껜蹂대떎:Landroid/content/res/AssetFileDescriptor;

.field private final 몃Ъ:Landroid/os/Handler;

.field private 붿슧:Landroid/view/SurfaceHolder;

.field private 留먰븷:Z

.field private final 紐낆옱:Lhi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/mxtech/media/FFPlayer;->癤욱븳援:I

    const/4 v0, 0x2

    sput v0, Lcom/mxtech/media/FFPlayer;->궗:I

    const/4 v0, 0x4

    sput v0, Lcom/mxtech/media/FFPlayer;->먯꽌:I

    const/16 v0, 0x8

    sput v0, Lcom/mxtech/media/FFPlayer;->ㅼ꽑嫄:I

    const/16 v0, 0x20

    sput v0, Lcom/mxtech/media/FFPlayer;->弱밧:I

    const/16 v0, 0x40

    sput v0, Lcom/mxtech/media/FFPlayer;->쇰뒗:I

    const/16 v0, 0x80

    sput v0, Lcom/mxtech/media/FFPlayer;->대쫫:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lge;Landroid/net/Uri;ILhi;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mxtech/media/FFPlayer;->寃껋씠:I

    iput-object p2, p0, Lcom/mxtech/media/FFPlayer;->꾨뱾:Lge;

    iput-object p5, p0, Lcom/mxtech/media/FFPlayer;->紐낆옱:Lhi;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/mxtech/media/FFPlayer;->몃Ъ:Landroid/os/Handler;

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p5, v0, v1}, Lhi;->癤욱븳援(ILcom/mxtech/media/FFPlayer;)Lcom/mxtech/subtitle/SubStationAlphaMedia;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/mxtech/media/FFPlayer;->native_create(Lcom/mxtech/subtitle/SubStationAlphaMedia;I)V

    const-string v0, "content"

    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "r"

    invoke-virtual {v0, p3, v1}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/mxtech/media/FFPlayer;->먯껜蹂대떎:Landroid/content/res/AssetFileDescriptor;

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->먯껜蹂대떎:Landroid/content/res/AssetFileDescriptor;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t open file descriptor for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/mxtech/media/FFPlayer;->몃Ъ:Landroid/os/Handler;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no looper found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->먯껜蹂대떎:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->먯껜蹂대떎:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->먯껜蹂대떎:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/mxtech/media/FFPlayer;->setDataSource(Landroid/content/Context;Ljava/io/FileDescriptor;JJ)V

    :goto_1
    return-void

    :cond_3
    invoke-static {p3}, Lgb;->癤욱븳援(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mxtech/media/FFPlayer;->setDataSource(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private native _pause()V
.end method

.method private native _seekTo(II)V
.end method

.method private native _start()V
.end method

.method private native clock()I
.end method

.method private native enableSubtitleTrack(IZ)V
.end method

.method private native getMetadata(ILjava/lang/String;)Ljava/lang/String;
.end method

.method private native getStreamBitRate(I)I
.end method

.method private native getStreamChannelCount(I)I
.end method

.method private native getStreamChannelLayout(I)J
.end method

.method private native getStreamCodec(I)Ljava/lang/String;
.end method

.method private native getStreamCodecId(I)I
.end method

.method private native getStreamFrameTime(I)I
.end method

.method private native getStreamHeight(I)I
.end method

.method private native getStreamMetadata(IILjava/lang/String;)Ljava/lang/String;
.end method

.method private native getStreamSampleRate(I)I
.end method

.method private native getStreamType(I)I
.end method

.method private native getStreamWidth(I)I
.end method

.method private native getSubtitleFrames(I)Ljava/lang/Object;
.end method

.method private invalidateSubtitle()V
    .locals 2

    const/16 v1, 0x2710

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->몃Ъ:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->몃Ъ:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private native isSupportedSubtitleTrack(I)Z
.end method

.method private native native_create(Lcom/mxtech/subtitle/SubStationAlphaMedia;I)V
.end method

.method private native native_release()V
.end method

.method private native nextSubtitle(I)I
.end method

.method private postEvent(IIILjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/mxtech/videoplayer/L;->먯꽌()V

    :cond_1
    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->몃Ъ:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mxtech/media/FFPlayer;->몃Ъ:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private native previousSubtitle(I)I
.end method

.method private static native renderSubStationAlphaFrame(ILandroid/graphics/Bitmap;I)V
.end method

.method private native seekSubtitle(II)Z
.end method

.method private native setDataSource(Landroid/content/Context;Ljava/io/FileDescriptor;JJ)V
.end method

.method private native setDataSource(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method private native setSurface(Landroid/view/Surface;I)V
.end method

.method public static synthetic ㅼ꽑嫄(Lcom/mxtech/media/FFPlayer;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/mxtech/media/FFPlayer;->getStreamCodec(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic 弱밧(Lcom/mxtech/media/FFPlayer;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/mxtech/media/FFPlayer;->getStreamFrameTime(I)I

    move-result v0

    return v0
.end method

.method public static synthetic 洹(Lcom/mxtech/media/FFPlayer;I)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/mxtech/media/FFPlayer;->getStreamChannelLayout(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic 癤욱븳援(Lcom/mxtech/media/FFPlayer;)I
    .locals 1

    iget v0, p0, Lcom/mxtech/media/FFPlayer;->ㅼ쬆:I

    return v0
.end method

.method public static synthetic 癤욱븳援(Lcom/mxtech/media/FFPlayer;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/mxtech/media/FFPlayer;->getStreamWidth(I)I

    move-result v0

    return v0
.end method

.method public static synthetic 癤욱븳援(Lcom/mxtech/media/FFPlayer;IILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/mxtech/media/FFPlayer;->getStreamMetadata(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic 癤욱븳援(ILandroid/graphics/Bitmap;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/mxtech/media/FFPlayer;->renderSubStationAlphaFrame(ILandroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic 癤욱븳援(Lcom/mxtech/media/FFPlayer;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mxtech/media/FFPlayer;->enableSubtitleTrack(IZ)V

    return-void
.end method

.method static synthetic 癤욱븳援(Lcom/mxtech/media/FFPlayer;II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/mxtech/media/FFPlayer;->seekSubtitle(II)Z

    move-result v0

    return v0
.end method

.method public static synthetic 궗(Lcom/mxtech/media/FFPlayer;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/mxtech/media/FFPlayer;->getStreamHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic 궗(Lcom/mxtech/media/FFPlayer;)Lhi;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->紐낆옱:Lhi;

    return-object v0
.end method

.method private 궗(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mxtech/media/FFPlayer;->getMetadata(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private 궗(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mxtech/media/FFPlayer;->뚮젮議뚮떎怨:Z

    invoke-direct {p0}, Lcom/mxtech/media/FFPlayer;->먯껜蹂대떎()V

    return-void
.end method

.method static synthetic 꾨뱾(Lcom/mxtech/media/FFPlayer;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/mxtech/media/FFPlayer;->getStreamCodecId(I)I

    move-result v0

    return v0
.end method

.method public static synthetic 대쫫(Lcom/mxtech/media/FFPlayer;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/mxtech/media/FFPlayer;->getStreamSampleRate(I)I

    move-result v0

    return v0
.end method

.method static synthetic 뚮Ц(Lcom/mxtech/media/FFPlayer;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/mxtech/media/FFPlayer;->isSupportedSubtitleTrack(I)Z

    move-result v0

    return v0
.end method

.method static synthetic 뚮젮議뚮떎怨(Lcom/mxtech/media/FFPlayer;I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/mxtech/media/FFPlayer;->getSubtitleFrames(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic 먮(Lcom/mxtech/media/FFPlayer;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/mxtech/media/FFPlayer;->nextSubtitle(I)I

    move-result v0

    return v0
.end method

.method private 먯껜蹂대떎()V
    .locals 2

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->붿슧:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mxtech/media/FFPlayer;->붿슧:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, Lcom/mxtech/media/FFPlayer;->먮:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mxtech/media/FFPlayer;->뚮젮議뚮떎怨:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic 먯껜蹂대떎(Lcom/mxtech/media/FFPlayer;I)V
    .locals 0

    iput p1, p0, Lcom/mxtech/media/FFPlayer;->ㅼ쬆:I

    return-void
.end method

.method public static synthetic 먯꽌(Lcom/mxtech/media/FFPlayer;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/mxtech/media/FFPlayer;->getStreamType(I)I

    move-result v0

    return v0
.end method

.method static synthetic 먯꽌(Lcom/mxtech/media/FFPlayer;)Lfz;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->뚮Ц:Lfz;

    return-object v0
.end method

.method public static synthetic 몃Ъ(Lcom/mxtech/media/FFPlayer;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/mxtech/media/FFPlayer;->getStreamChannelCount(I)I

    move-result v0

    return v0
.end method

.method static synthetic 붿슧(Lcom/mxtech/media/FFPlayer;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/mxtech/media/FFPlayer;->previousSubtitle(I)I

    move-result v0

    return v0
.end method

.method public static synthetic 쇰뒗(Lcom/mxtech/media/FFPlayer;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/mxtech/media/FFPlayer;->getStreamBitRate(I)I

    move-result v0

    return v0
.end method

.method public static synthetic 留먰븷(Lcom/mxtech/media/FFPlayer;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/mxtech/media/FFPlayer;->궗(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public native calcDisplayWidth(I)I
.end method

.method public native changeAudioStream(IZI)Z
.end method

.method public native displayHeight()I
.end method

.method public native displayWidth()I
.end method

.method public native duration()I
.end method

.method public native embedSubtitle()Z
.end method

.method protected finalize()V
    .locals 0

    return-void
.end method

.method public native frameTime()I
.end method

.method public native getAudioStream()I
.end method

.method public native getProcessing()I
.end method

.method public native getStreamCount()I
.end method

.method public native getStreamTypes()[I
.end method

.method public native getSubStationAlphaMedia()Lcom/mxtech/subtitle/SubStationAlphaMedia;
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    sget-object v0, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown message type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v4

    :sswitch_0
    iput-boolean v4, p0, Lcom/mxtech/media/FFPlayer;->留먰븷:Z

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->꾨뱾:Lge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->꾨뱾:Lge;

    invoke-interface {v0, p0}, Lge;->궗(Lgd;)V

    goto :goto_0

    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iput-boolean v3, p0, Lcom/mxtech/media/FFPlayer;->덉쓣:Z

    invoke-direct {p0, v3}, Lcom/mxtech/media/FFPlayer;->궗(Z)V

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->꾨뱾:Lge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->꾨뱾:Lge;

    invoke-interface {v0, p0}, Lge;->ㅼ꽑嫄(Lgd;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->꾨뱾:Lge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->꾨뱾:Lge;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p0, v1}, Lge;->癤욱븳援(Lgd;I)V

    goto :goto_0

    :sswitch_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/mxtech/media/FFPlayer;->寃껋씠:I

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->꾨뱾:Lge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->꾨뱾:Lge;

    invoke-interface {v0, p0}, Lge;->癤욱븳援(Lgd;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->꾨뱾:Lge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->꾨뱾:Lge;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, p0, v1, v2}, Lge;->癤욱븳援(Lgd;II)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->꾨뱾:Lge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->꾨뱾:Lge;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p0, v1}, Lge;->궗(Lgd;I)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->롩퐢:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mxtech/media/FFPlayer;->롩퐢:Ljava/util/List;

    :cond_1
    new-instance v0, Lcom/mxtech/media/FFPlayer$SubTrack;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v0, p0, v1, v2}, Lcom/mxtech/media/FFPlayer$SubTrack;-><init>(Lcom/mxtech/media/FFPlayer;II)V

    iget-object v1, p0, Lcom/mxtech/media/FFPlayer;->롩퐢:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/mxtech/media/FFPlayer;->꾨뱾:Lge;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mxtech/media/FFPlayer;->꾨뱾:Lge;

    invoke-interface {v1, p0, v0}, Lge;->癤욱븳援(Lgd;Lhg;)V

    goto :goto_0

    :sswitch_7
    sget-object v0, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/mxtech/media/FFPlayer;->덉쓣:Z

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->꾨뱾:Lge;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->꾨뱾:Lge;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, p0, v1, v2}, Lge;->먯꽌(Lgd;II)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->꾨뱾:Lge;

    invoke-interface {v0, p0}, Lge;->ㅼ꽑嫄(Lgd;)V

    :cond_2
    invoke-direct {p0, v3}, Lcom/mxtech/media/FFPlayer;->궗(Z)V

    goto/16 :goto_0

    :sswitch_8
    sget-object v0, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Info ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->꾨뱾:Lge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->꾨뱾:Lge;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, p0, v1, v2}, Lge;->궗(Lgd;II)Z

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->꾨뱾:Lge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->꾨뱾:Lge;

    invoke-interface {v0, p0}, Lge;->먯꽌(Lgd;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->몃Ъ:Landroid/os/Handler;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->꾨뱾:Lge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->꾨뱾:Lge;

    invoke-interface {v0, p0}, Lge;->弱밧(Lgd;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0xa -> :sswitch_6
        0x64 -> :sswitch_7
        0xc8 -> :sswitch_8
        0x12c -> :sswitch_9
        0x2710 -> :sswitch_a
    .end sparse-switch
.end method

.method public native height()I
.end method

.method public native isOMXAudioDecoderUsed()Z
.end method

.method public native isOMXVideoDecoderUsed()Z
.end method

.method public native pixelFormat()I
.end method

.method public native prepareAsync()V
.end method

.method public native removeAudioStream()V
.end method

.method public native setAudioStreamType(I)V
.end method

.method public native setCoreLimit(I)V
.end method

.method public native setProcessing(I)V
.end method

.method public native setVolume(FF)V
.end method

.method public native setVolumeModifier(F)V
.end method

.method public native updateClock(I)V
.end method

.method public native width()I
.end method

.method public ㅼ꽑嫄()I
    .locals 2

    iget v0, p0, Lcom/mxtech/media/FFPlayer;->寃껋씠:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/mxtech/media/FFPlayer;->寃껋씠:I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/mxtech/media/FFPlayer;->clock()I

    move-result v0

    iget v1, p0, Lcom/mxtech/media/FFPlayer;->뚮벏:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/mxtech/media/FFPlayer;->뚮벏:I

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/mxtech/media/FFPlayer;->뚮벏:I

    goto :goto_0
.end method

.method public 弱밧()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mxtech/media/FFPlayer;->留먰븷:Z

    return v0
.end method

.method public 洹()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mxtech/media/FFPlayer;->궗(Z)V

    :try_start_0
    sget-object v0, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v1, "=== Begin closing soft player"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/mxtech/media/FFPlayer;->native_release()V

    sget-object v0, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v1, "=== End closing soft player"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->먯껜蹂대떎:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->먯껜蹂대떎:Landroid/content/res/AssetFileDescriptor;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mxtech/media/FFPlayer;->먯껜蹂대떎:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->몃Ъ:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, "Exception thrown while releasing native player"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public 癤욱븳援(I)Lgh;
    .locals 1

    new-instance v0, Lga;

    invoke-direct {v0, p0, p1}, Lga;-><init>(Lcom/mxtech/media/FFPlayer;I)V

    return-object v0
.end method

.method public 癤욱븳援()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/media/FFPlayer;->롩퐢:Ljava/util/List;

    return-object v0
.end method

.method public 癤욱븳援(II)V
    .locals 1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    move p1, v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mxtech/media/FFPlayer;->_seekTo(II)V

    iput p1, p0, Lcom/mxtech/media/FFPlayer;->寃껋씠:I

    iput v0, p0, Lcom/mxtech/media/FFPlayer;->뚮벏:I

    return-void
.end method

.method public 癤욱븳援(Landroid/view/SurfaceHolder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mxtech/media/FFPlayer;->癤욱븳援(Landroid/view/SurfaceHolder;I)V

    return-void
.end method

.method public 癤욱븳援(Landroid/view/SurfaceHolder;I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/mxtech/media/FFPlayer;->setSurface(Landroid/view/Surface;I)V

    iput-object p1, p0, Lcom/mxtech/media/FFPlayer;->붿슧:Landroid/view/SurfaceHolder;

    invoke-direct {p0}, Lcom/mxtech/media/FFPlayer;->먯껜蹂대떎()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 癤욱븳援(Lfz;)V
    .locals 0

    iput-object p1, p0, Lcom/mxtech/media/FFPlayer;->뚮Ц:Lfz;

    return-void
.end method

.method public 癤욱븳援(Lge;)V
    .locals 0

    iput-object p1, p0, Lcom/mxtech/media/FFPlayer;->꾨뱾:Lge;

    return-void
.end method

.method public 癤욱븳援(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mxtech/media/FFPlayer;->먮:Z

    invoke-direct {p0}, Lcom/mxtech/media/FFPlayer;->먯껜蹂대떎()V

    return-void
.end method

.method public 궗()Lgf;
    .locals 1

    new-instance v0, Lfy;

    invoke-direct {v0, p0}, Lfy;-><init>(Lcom/mxtech/media/FFPlayer;)V

    return-object v0
.end method

.method public 대쫫()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mxtech/media/FFPlayer;->덉쓣:Z

    invoke-direct {p0, v0}, Lcom/mxtech/media/FFPlayer;->궗(Z)V

    invoke-direct {p0}, Lcom/mxtech/media/FFPlayer;->_pause()V

    return-void
.end method

.method public 먯꽌()Lgg;
    .locals 0

    return-object p0
.end method

.method public 몃Ъ()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mxtech/media/FFPlayer;->덉쓣:Z

    invoke-direct {p0, v0}, Lcom/mxtech/media/FFPlayer;->궗(Z)V

    invoke-direct {p0}, Lcom/mxtech/media/FFPlayer;->_start()V

    return-void
.end method

.method public 쇰뒗()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mxtech/media/FFPlayer;->덉쓣:Z

    return v0
.end method
