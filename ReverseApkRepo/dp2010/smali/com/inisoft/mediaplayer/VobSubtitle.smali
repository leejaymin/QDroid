.class public Lcom/inisoft/mediaplayer/VobSubtitle;
.super Ljava/lang/Object;


# static fields
.field private static bLoadLibrary:Z


# instance fields
.field private mNativeContext:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/inisoft/mediaplayer/VobSubtitle;->bLoadLibrary:Z

    :try_start_0
    invoke-static {}, Lcom/inisoft/mediaplayer/DiceLoadLibrary;->softwareLoadLibrary()Z

    move-result v0

    sput-boolean v0, Lcom/inisoft/mediaplayer/VobSubtitle;->bLoadLibrary:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VobSubtitle;->native_init(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sput-boolean v1, Lcom/inisoft/mediaplayer/VobSubtitle;->bLoadLibrary:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/VobSubtitle;->native_setup()V

    return-void
.end method

.method public static checkLoadLibrary()Z
    .locals 1

    sget-boolean v0, Lcom/inisoft/mediaplayer/VobSubtitle;->bLoadLibrary:Z

    return v0
.end method

.method private final native native_finalize()V
.end method

.method private static native native_init(I)V
.end method

.method private native native_setup()V
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/inisoft/mediaplayer/VobSubtitle;->native_finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public native getFrame()Lcom/inisoft/mediaplayer/VobSubtitleFrame;
.end method

.method public getLanguage(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/inisoft/mediaplayer/VobSubtitle;->getTrackID(I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/inisoft/mediaplayer/dp;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "UnKnown"

    goto :goto_0
.end method

.method public native getTrackCount()I
.end method

.method public native getTrackID(I)Ljava/lang/String;
.end method

.method public native release()V
.end method

.method public native seek(I)V
.end method

.method public native setDataSource(Ljava/lang/String;)I
.end method

.method public native setTextColor(I)V
.end method

.method public native setTrackIndex(I)V
.end method
