.class public Lcom/inisoft/mediaplayer/MediaMetadataRetriever;
.super Ljava/lang/Object;


# static fields
.field private static final EMBEDDED_PICTURE_TYPE_ANY:I = 0xffff

.field public static final METADATA_KEY_DISPLAY_HEIGHT:I = 0x6

.field public static final METADATA_KEY_DISPLAY_WIDTH:I = 0x5

.field public static final METADATA_KEY_DURATION:I = 0x1

.field public static final METADATA_KEY_NUM_AUDIO_TRACKS:I = 0x2

.field public static final METADATA_KEY_NUM_CODECID:I = 0x4

.field public static final METADATA_KEY_NUM_SUBTITLE_TRACKS:I = 0x3

.field private static bLoadLibrary:Z


# instance fields
.field private mNativeContext:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/inisoft/mediaplayer/MediaMetadataRetriever;->bLoadLibrary:Z

    :try_start_0
    invoke-static {}, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->softwareLoadLibrary()Z

    move-result v0

    sput-boolean v0, Lcom/inisoft/mediaplayer/MediaMetadataRetriever;->bLoadLibrary:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaMetadataRetriever;->native_init(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sput-boolean v1, Lcom/inisoft/mediaplayer/MediaMetadataRetriever;->bLoadLibrary:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/MediaMetadataRetriever;->native_setup()V

    return-void
.end method

.method private native _getFrameAtTime(J)Landroid/graphics/Bitmap;
.end method

.method public static checkLoadLibrary()Z
    .locals 1

    sget-boolean v0, Lcom/inisoft/mediaplayer/MediaMetadataRetriever;->bLoadLibrary:Z

    return v0
.end method

.method private final native native_finalize()V
.end method

.method private static native native_init(I)V
.end method

.method private native native_setup()V
.end method

.method public static reLoadLibrary()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->softwareLoadLibrary()Z

    move-result v0

    sput-boolean v0, Lcom/inisoft/mediaplayer/MediaMetadataRetriever;->bLoadLibrary:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaMetadataRetriever;->native_init(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/inisoft/mediaplayer/MediaMetadataRetriever;->bLoadLibrary:Z

    goto :goto_0
.end method


# virtual methods
.method public native extractMetadata(I)Ljava/lang/String;
.end method

.method protected finalize()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/MediaMetadataRetriever;->native_finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getFrameAtTime(J)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/inisoft/mediaplayer/MediaMetadataRetriever;->_getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public native getTrackInfo()Ljava/util/Vector;
.end method

.method public native release()V
.end method

.method public native setDataSource(Ljava/lang/String;)V
.end method
