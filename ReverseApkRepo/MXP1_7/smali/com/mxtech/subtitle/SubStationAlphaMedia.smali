.class public final Lcom/mxtech/subtitle/SubStationAlphaMedia;
.super Ljava/lang/Object;


# instance fields
.field private _nativeContext:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/mxtech/subtitle/SubStationAlphaMedia;->native_create()V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/mxtech/subtitle/SubStationAlphaMedia;->_nativeContext:I

    return-void
.end method

.method private native native_create()V
.end method

.method private native native_destroy()V
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/mxtech/subtitle/SubStationAlphaMedia;->native_destroy()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public native isFontsSetup()Z
.end method

.method public native overrideFonts(Ljava/lang/String;)V
.end method

.method public native setCanvasSize(II)V
.end method

.method public native setFontScale(F)V
.end method

.method public native setVideoSize(II)V
.end method

.method public native setupFonts(Ljava/lang/String;)V
.end method
