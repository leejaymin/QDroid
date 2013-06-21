.class public Lcom/inisoft/mediaplayer/MediaPlayer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inisoft/mediaplayer/es;


# static fields
.field public static final APPLY_METADATA_FILTER:Z = true

.field public static final BYPASS_METADATA_FILTER:Z = false

.field public static final ERROR_TOOLONGWAIT:I = -0x1b0d2

.field public static final ERROR_UNSUPPORTED:I = 0x1b089

.field private static final IMEDIA_PLAYER:Ljava/lang/String; = "android.media.IMediaPlayer"

.field private static final MEDIA_ASPECT_RATIO:I = 0x1b207

.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_CUSTOM_READ:I = 0x1d589

.field private static final MEDIA_CUSTOM_SEEK:I = 0x1d58a

.field private static final MEDIA_ERROR:I = 0x64

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SECURITY:I = 0x1b072

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field private static final MEDIA_INFO:I = 0xc8

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final MEDIA_SUBTITLE_INFO:I = 0x1b146

.field private static final MEDIA_SUBTITLE_UPDATE:I = 0x1b147

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field private static final MEDIA_UPDATEBITMAP_RENDERER:I = 0x1b020

.field private static final MEDIA_USEBITMAP_RENDERER:I = 0x1b01f

.field public static final METADATA_ALL:Z = false

.field public static final METADATA_UPDATE_ONLY:Z = true

.field private static final TAG:Ljava/lang/String; = "MediaPlayer"

.field private static bLoadLibrary:Z


# instance fields
.field private mCustomFile:Lcom/inisoft/mediaplayer/ax;

.field private mCustomHandlerThread:Landroid/os/HandlerThread;

.field private mCustomIOEventHandler:Lcom/inisoft/mediaplayer/ed;

.field private mEventHandler:Lcom/inisoft/mediaplayer/ee;

.field private mListenerContext:I

.field private mNativeContext:I

.field private mNativeSurfaceTexture:I

.field private mOnBitmapUpdateListener:Lcom/inisoft/mediaplayer/eg;

.field private mOnBufferingUpdateListener:Lcom/inisoft/mediaplayer/eh;

.field private mOnCompletionListener:Lcom/inisoft/mediaplayer/ei;

.field private mOnErrorListener:Lcom/inisoft/mediaplayer/ej;

.field private mOnInfoListener:Lcom/inisoft/mediaplayer/ek;

.field private mOnPreparedListener:Lcom/inisoft/mediaplayer/el;

.field private mOnSeekCompleteListener:Lcom/inisoft/mediaplayer/em;

.field private mOnSubtitleUpdateListenr:Lcom/inisoft/mediaplayer/en;

.field private mOnUseBitmapRendererListener:Lcom/inisoft/mediaplayer/eo;

.field private mOnVideoAspectRatioChangedListener:Lcom/inisoft/mediaplayer/ep;

.field private mOnVideoSizeChangedListener:Lcom/inisoft/mediaplayer/eq;

.field private mScreenOnWhilePlaying:Z

.field private mStayAwake:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/inisoft/mediaplayer/MediaPlayer;->bLoadLibrary:Z

    :try_start_0
    invoke-static {}, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->LoadLibrary()Z

    move-result v0

    sput-boolean v0, Lcom/inisoft/mediaplayer/MediaPlayer;->bLoadLibrary:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inisoft/mediaplayer/MediaPlayer;->native_init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sput-boolean v1, Lcom/inisoft/mediaplayer/MediaPlayer;->bLoadLibrary:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mCustomFile:Lcom/inisoft/mediaplayer/ax;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mCustomHandlerThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mCustomIOEventHandler:Lcom/inisoft/mediaplayer/ed;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/inisoft/mediaplayer/ee;

    invoke-direct {v1, p0, p0, v0}, Lcom/inisoft/mediaplayer/ee;-><init>(Lcom/inisoft/mediaplayer/MediaPlayer;Lcom/inisoft/mediaplayer/MediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mEventHandler:Lcom/inisoft/mediaplayer/ee;

    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->native_setup(Ljava/lang/Object;)V

    new-instance v0, Lcom/inisoft/mediaplayer/ef;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/ef;-><init>(Lcom/inisoft/mediaplayer/MediaPlayer;)V

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/ef;->start()V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/inisoft/mediaplayer/ee;

    invoke-direct {v1, p0, p0, v0}, Lcom/inisoft/mediaplayer/ee;-><init>(Lcom/inisoft/mediaplayer/MediaPlayer;Lcom/inisoft/mediaplayer/MediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mEventHandler:Lcom/inisoft/mediaplayer/ee;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mEventHandler:Lcom/inisoft/mediaplayer/ee;

    goto :goto_0
.end method

.method private native _pause()V
.end method

.method private native _release()V
.end method

.method private native _reset()V
.end method

.method private native _setAudioTrack(I)V
.end method

.method private native _setSubtitleIndex(I)V
.end method

.method private native _setVideoSurface()V
.end method

.method private native _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native _start()V
.end method

.method private native _stop()V
.end method

.method static synthetic access$0(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/ax;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mCustomFile:Lcom/inisoft/mediaplayer/ax;

    return-object v0
.end method

.method static synthetic access$1(Lcom/inisoft/mediaplayer/MediaPlayer;)I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mNativeContext:I

    return v0
.end method

.method static synthetic access$10(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/ek;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mOnInfoListener:Lcom/inisoft/mediaplayer/ek;

    return-object v0
.end method

.method static synthetic access$11(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/eg;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mOnBitmapUpdateListener:Lcom/inisoft/mediaplayer/eg;

    return-object v0
.end method

.method static synthetic access$12(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/ep;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mOnVideoAspectRatioChangedListener:Lcom/inisoft/mediaplayer/ep;

    return-object v0
.end method

.method static synthetic access$13(Lcom/inisoft/mediaplayer/MediaPlayer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/MediaPlayer;->waitEvent0()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/el;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mOnPreparedListener:Lcom/inisoft/mediaplayer/el;

    return-object v0
.end method

.method static synthetic access$3(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/ei;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mOnCompletionListener:Lcom/inisoft/mediaplayer/ei;

    return-object v0
.end method

.method static synthetic access$4(Lcom/inisoft/mediaplayer/MediaPlayer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/inisoft/mediaplayer/MediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method static synthetic access$5(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/eh;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mOnBufferingUpdateListener:Lcom/inisoft/mediaplayer/eh;

    return-object v0
.end method

.method static synthetic access$6(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/em;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mOnSeekCompleteListener:Lcom/inisoft/mediaplayer/em;

    return-object v0
.end method

.method static synthetic access$7(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/en;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mOnSubtitleUpdateListenr:Lcom/inisoft/mediaplayer/en;

    return-object v0
.end method

.method static synthetic access$8(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/eq;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mOnVideoSizeChangedListener:Lcom/inisoft/mediaplayer/eq;

    return-object v0
.end method

.method static synthetic access$9(Lcom/inisoft/mediaplayer/MediaPlayer;)Lcom/inisoft/mediaplayer/ej;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mOnErrorListener:Lcom/inisoft/mediaplayer/ej;

    return-object v0
.end method

.method public static checkLoadLibrary()Z
    .locals 1

    sget-boolean v0, Lcom/inisoft/mediaplayer/MediaPlayer;->bLoadLibrary:Z

    return v0
.end method

.method private closeCustomIO()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mCustomFile:Lcom/inisoft/mediaplayer/ax;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mCustomFile:Lcom/inisoft/mediaplayer/ax;

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mCustomHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mCustomHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mCustomHandlerThread:Landroid/os/HandlerThread;

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mCustomIOEventHandler:Lcom/inisoft/mediaplayer/ed;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mCustomIOEventHandler:Lcom/inisoft/mediaplayer/ed;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/ed;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mCustomIOEventHandler:Lcom/inisoft/mediaplayer/ed;

    :cond_2
    return-void
.end method

.method public static create(Landroid/content/Context;I)Lcom/inisoft/mediaplayer/MediaPlayer;
    .locals 8

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    if-nez v7, :cond_0

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/inisoft/mediaplayer/MediaPlayer;

    invoke-direct {v0}, Lcom/inisoft/mediaplayer/MediaPlayer;-><init>()V

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/inisoft/mediaplayer/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    move-object v0, v6

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;)Lcom/inisoft/mediaplayer/MediaPlayer;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Lcom/inisoft/mediaplayer/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Lcom/inisoft/mediaplayer/MediaPlayer;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/inisoft/mediaplayer/MediaPlayer;

    invoke-direct {v0}, Lcom/inisoft/mediaplayer/MediaPlayer;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/inisoft/mediaplayer/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/inisoft/mediaplayer/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_0
    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private native nativeSetBitmap()V
.end method

.method private native nativeUpdateBitmap(Landroid/graphics/Bitmap;)Z
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getMetadata(ZZLandroid/os/Parcel;)Z
.end method

.method private static final native native_init()V
.end method

.method private final native native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
.end method

.method private final native native_setMetadataFilter(Landroid/os/Parcel;)I
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private native native_suspend_resume(Z)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 2

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/MediaPlayer;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x1d589

    if-eq p1, v1, :cond_2

    const v1, 0x1d58a

    if-ne p1, v1, :cond_3

    :cond_2
    iget-object v1, v0, Lcom/inisoft/mediaplayer/MediaPlayer;->mEventHandler:Lcom/inisoft/mediaplayer/ee;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/inisoft/mediaplayer/MediaPlayer;->mCustomIOEventHandler:Lcom/inisoft/mediaplayer/ed;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/inisoft/mediaplayer/ed;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v0, v0, Lcom/inisoft/mediaplayer/MediaPlayer;->mCustomIOEventHandler:Lcom/inisoft/mediaplayer/ed;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/ed;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/inisoft/mediaplayer/MediaPlayer;->mEventHandler:Lcom/inisoft/mediaplayer/ee;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/inisoft/mediaplayer/MediaPlayer;->mEventHandler:Lcom/inisoft/mediaplayer/ee;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/inisoft/mediaplayer/ee;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v0, v0, Lcom/inisoft/mediaplayer/MediaPlayer;->mEventHandler:Lcom/inisoft/mediaplayer/ee;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/ee;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static reLoadLibrary()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->LoadLibrary()Z

    move-result v0

    sput-boolean v0, Lcom/inisoft/mediaplayer/MediaPlayer;->bLoadLibrary:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inisoft/mediaplayer/MediaPlayer;->native_init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/inisoft/mediaplayer/MediaPlayer;->bLoadLibrary:Z

    goto :goto_0
.end method

.method public static native snoop([SI)I
.end method

.method private stayAwake(Z)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mStayAwake:Z

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/MediaPlayer;->updateSurfaceScreenOn()V

    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mStayAwake:Z

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

.method private native waitEvent0()Z
.end method


# virtual methods
.method public native _setDataSource(J)V
.end method

.method public native customReadCompete([BI)V
.end method

.method public native customSeekCompete(J)V
.end method

.method protected finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/MediaPlayer;->native_finalize()V

    return-void
.end method

.method public native getCurrentPosition()I
.end method

.method public native getDuration()I
.end method

.method public native getFrameAt(I)Landroid/graphics/Bitmap;
.end method

.method public native getVideoHeight()I
.end method

.method public native getVideoWidth()I
.end method

.method public invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/inisoft/mediaplayer/MediaPlayer;->native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    return v0
.end method

.method public native isLooping()Z
.end method

.method public native isPlaying()Z
.end method

.method public newRequest()Landroid/os/Parcel;
    .locals 2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.media.IMediaPlayer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    return-object v0
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->stayAwake(Z)V

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/MediaPlayer;->_pause()V

    return-void
.end method

.method public native prepare()V
.end method

.method public native prepareAsync()V
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->stayAwake(Z)V

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/MediaPlayer;->updateSurfaceScreenOn()V

    iput-object v1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mOnPreparedListener:Lcom/inisoft/mediaplayer/el;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mOnBufferingUpdateListener:Lcom/inisoft/mediaplayer/eh;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mOnCompletionListener:Lcom/inisoft/mediaplayer/ei;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mOnSeekCompleteListener:Lcom/inisoft/mediaplayer/em;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mOnErrorListener:Lcom/inisoft/mediaplayer/ej;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mOnInfoListener:Lcom/inisoft/mediaplayer/ek;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mOnVideoSizeChangedListener:Lcom/inisoft/mediaplayer/eq;

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/MediaPlayer;->_release()V

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/MediaPlayer;->closeCustomIO()V

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->stayAwake(Z)V

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/MediaPlayer;->_reset()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mEventHandler:Lcom/inisoft/mediaplayer/ee;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/ee;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/MediaPlayer;->closeCustomIO()V

    return-void
.end method

.method public resume()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->native_suspend_resume(Z)I

    move-result v2

    if-gez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/inisoft/mediaplayer/MediaPlayer;->stayAwake(Z)V

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public native seekTo(I)V
.end method

.method public native setAudioStreamType(I)V
.end method

.method public setAudioTrack(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/inisoft/mediaplayer/MediaPlayer;->_setAudioTrack(I)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 7

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "r"

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    if-nez v6, :cond_3

    :goto_1
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v6

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_4
    :goto_3
    const-string v0, "MediaPlayer"

    const-string v1, "Couldn\'t open file on client side, trying server side"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/inisoft/mediaplayer/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/inisoft/mediaplayer/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_4
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    :goto_5
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_6
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v1

    move-object v6, v0

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method public setDataSource(Lcom/inisoft/mediaplayer/ax;)V
    .locals 2

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/MediaPlayer;->closeCustomIO()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Custom IO thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mCustomHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mCustomHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/inisoft/mediaplayer/ed;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mCustomHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/inisoft/mediaplayer/ed;-><init>(Lcom/inisoft/mediaplayer/MediaPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mCustomIOEventHandler:Lcom/inisoft/mediaplayer/ed;

    iput-object p1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mCustomFile:Lcom/inisoft/mediaplayer/ax;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mCustomFile:Lcom/inisoft/mediaplayer/ax;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/ax;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/MediaPlayer;->_setDataSource(J)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 6

    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/inisoft/mediaplayer/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public native setDataSource(Ljava/io/FileDescriptor;JJ)V
.end method

.method public native setDataSource(Ljava/lang/String;)V
.end method

.method public native setDataSource(Ljava/lang/String;Ljava/util/Map;)V
.end method

.method public setDisplay(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2

    iput-object p1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mSurface:Landroid/view/Surface;

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/MediaPlayer;->_setVideoSurface()V

    :goto_1
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/MediaPlayer;->updateSurfaceScreenOn()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mSurface:Landroid/view/Surface;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mSurface:Landroid/view/Surface;

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    goto :goto_1
.end method

.method public native setLooping(Z)V
.end method

.method public setMetadataFilter(Ljava/util/Set;Ljava/util/Set;)I
    .locals 4

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v3

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/os/Parcel;->dataCapacity()I

    move-result v2

    if-ge v2, v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataCapacity(I)V

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v1}, Lcom/inisoft/mediaplayer/MediaPlayer;->native_setMetadataFilter(Landroid/os/Parcel;)I

    move-result v0

    return v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

.method public setOnBitmapUpdateListener(Lcom/inisoft/mediaplayer/eg;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mOnBitmapUpdateListener:Lcom/inisoft/mediaplayer/eg;

    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/inisoft/mediaplayer/eh;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mOnBufferingUpdateListener:Lcom/inisoft/mediaplayer/eh;

    return-void
.end method

.method public setOnCompletionListener(Lcom/inisoft/mediaplayer/ei;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mOnCompletionListener:Lcom/inisoft/mediaplayer/ei;

    return-void
.end method

.method public setOnErrorListener(Lcom/inisoft/mediaplayer/ej;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mOnErrorListener:Lcom/inisoft/mediaplayer/ej;

    return-void
.end method

.method public setOnInfoListener(Lcom/inisoft/mediaplayer/ek;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mOnInfoListener:Lcom/inisoft/mediaplayer/ek;

    return-void
.end method

.method public setOnPreparedListener(Lcom/inisoft/mediaplayer/el;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mOnPreparedListener:Lcom/inisoft/mediaplayer/el;

    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/inisoft/mediaplayer/em;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mOnSeekCompleteListener:Lcom/inisoft/mediaplayer/em;

    return-void
.end method

.method public setOnSubtitleUpdateListener(Lcom/inisoft/mediaplayer/en;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mOnSubtitleUpdateListenr:Lcom/inisoft/mediaplayer/en;

    return-void
.end method

.method public setOnUseBitmapRendererListener(Lcom/inisoft/mediaplayer/eo;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mOnUseBitmapRendererListener:Lcom/inisoft/mediaplayer/eo;

    return-void
.end method

.method public setOnVideoAspectRatioChangedListener(Lcom/inisoft/mediaplayer/ep;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mOnVideoAspectRatioChangedListener:Lcom/inisoft/mediaplayer/ep;

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/inisoft/mediaplayer/eq;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mOnVideoSizeChangedListener:Lcom/inisoft/mediaplayer/eq;

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mScreenOnWhilePlaying:Z

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/MediaPlayer;->updateSurfaceScreenOn()V

    :cond_0
    return-void
.end method

.method public native setSpeed(I)V
.end method

.method public setSubtitleIndex(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/inisoft/mediaplayer/MediaPlayer;->_setSubtitleIndex(I)V

    return-void
.end method

.method public native setUseModifyExtractor()V
.end method

.method public native setVolume(FF)V
.end method

.method public native setVolumeBooster(F)V
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move v2, v0

    :goto_1
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/high16 v3, 0x2000

    or-int/2addr v3, p2

    const-class v4, Lcom/inisoft/mediaplayer/MediaPlayer;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->stayAwake(Z)V

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/MediaPlayer;->_start()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->stayAwake(Z)V

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/MediaPlayer;->_stop()V

    return-void
.end method

.method public suspend()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v1}, Lcom/inisoft/mediaplayer/MediaPlayer;->native_suspend_resume(Z)I

    move-result v2

    if-gez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/MediaPlayer;->stayAwake(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/MediaPlayer;->mEventHandler:Lcom/inisoft/mediaplayer/ee;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/ee;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method

.method public updateBitmap(Landroid/graphics/Bitmap;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
