.class public Lcom/rookiestudio/perfectviewer/TBitmap;
.super Ljava/lang/Object;
.source "TBitmap.java"


# instance fields
.field public CurrentFilter:I

.field public CurrentPage:I

.field public DataIndex:I

.field public FileName:Ljava/lang/String;

.field public FileOrder:I

.field public Height:I

.field public Height2:I

.field private Inverted:Z

.field public Page1Height:I

.field public Page1Width:I

.field public Page2Height:I

.field public Page2Width:I

.field public PageIndex:I

.field private Resized:Z

.field public ScaledHeight:I

.field public ScaledWidth:I

.field public Width:I

.field public Width2:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v1, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->FileOrder:I

    .line 29
    iput v1, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->PageIndex:I

    .line 30
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    .line 31
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    .line 32
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Width2:I

    .line 33
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Height2:I

    .line 34
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledWidth:I

    .line 35
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledHeight:I

    .line 36
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Page1Width:I

    .line 37
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Page1Height:I

    .line 38
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Page2Width:I

    .line 39
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Page2Height:I

    .line 40
    iput v1, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentFilter:I

    .line 41
    iput v1, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    .line 42
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->DataIndex:I

    .line 43
    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Resized:Z

    .line 44
    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Inverted:Z

    .line 45
    return-void
.end method

.method public static CalcBestFit(FFFF)F
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "w2"
    .parameter "h2"

    .prologue
    .line 223
    div-float v2, p0, p2

    .line 224
    .local v2, ratiow:F
    div-float v1, p1, p3

    .line 225
    .local v1, ratioh:F
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 226
    .local v0, TmpSizeFactor:F
    return v0
.end method

.method public static CalcPageFit(IFF)Lcom/rookiestudio/baseclass/TSizeFactor;
    .locals 3
    .parameter "PageFit"
    .parameter "w"
    .parameter "h"

    .prologue
    const/high16 v1, 0x3f80

    .line 231
    new-instance v0, Lcom/rookiestudio/baseclass/TSizeFactor;

    invoke-direct {v0}, Lcom/rookiestudio/baseclass/TSizeFactor;-><init>()V

    .line 232
    .local v0, TmpSizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;
    packed-switch p0, :pswitch_data_0

    .line 259
    :goto_0
    return-object v0

    .line 234
    :pswitch_0
    iput v1, v0, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    .line 235
    iput v1, v0, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    goto :goto_0

    .line 238
    :pswitch_1
    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    int-to-float v1, v1

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    int-to-float v2, v2

    invoke-static {v1, v2, p1, p2}, Lcom/rookiestudio/perfectviewer/TBitmap;->CalcBestFit(FFFF)F

    move-result v1

    iput v1, v0, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    .line 239
    iget v1, v0, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    iput v1, v0, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    goto :goto_0

    .line 242
    :pswitch_2
    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    int-to-float v1, v1

    div-float/2addr v1, p1

    iput v1, v0, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    .line 243
    iget v1, v0, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    iput v1, v0, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    goto :goto_0

    .line 246
    :pswitch_3
    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    int-to-float v1, v1

    div-float/2addr v1, p2

    iput v1, v0, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    .line 247
    iget v1, v0, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    iput v1, v0, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    goto :goto_0

    .line 250
    :pswitch_4
    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->LastZoomFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v1, v1, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    iput v1, v0, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    .line 251
    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->LastZoomFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v1, v1, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    iput v1, v0, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    goto :goto_0

    .line 254
    :pswitch_5
    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    int-to-float v1, v1

    div-float/2addr v1, p1

    iput v1, v0, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    .line 255
    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    int-to-float v1, v1

    div-float/2addr v1, p2

    iput v1, v0, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static native CreateImageData(II)I
.end method

.method public static native DeleteImageData(I)V
.end method

.method public static native DeleteResizedImage(I)V
.end method

.method public static native DoUpdateImage(I)V
.end method

.method public static native GetPixelData(I)I
.end method

.method public static native PDFAfterHandler(I)V
.end method

.method public static native SetBorderDetect(ZI)V
.end method

.method public static native SetColorAdjust(ZDDD)V
.end method

.method public static native SetInvertImage(Z)V
.end method

.method public static native SetSharpenImage(Z)V
.end method


# virtual methods
.method public BitmapResample(Lcom/rookiestudio/baseclass/TSizeFactor;III)V
    .locals 6
    .parameter "f"
    .parameter "ow"
    .parameter "oh"
    .parameter "Filter"

    .prologue
    .line 174
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationInstance:Landroid/content/Context;

    monitor-enter v1

    .line 175
    :try_start_0
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentFilter:I

    if-ne v0, p4, :cond_0

    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledWidth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledHeight:I

    if-ne v0, p3, :cond_0

    .line 176
    monitor-exit v1

    .line 219
    :goto_0
    return-void

    .line 179
    :cond_0
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->DataIndex:I

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/rookiestudio/perfectviewer/TBitmap;->BitmapResample(IIII)Z

    .line 180
    iput p4, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentFilter:I

    .line 181
    iput p2, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledWidth:I

    .line 182
    iput p3, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledHeight:I

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Resized:Z

    .line 184
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->AutoSinglePage:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledWidth:I

    int-to-double v2, v0

    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledHeight:I

    int-to-double v4, v0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_2

    .line 185
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Page2Width:I

    .line 186
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledHeight:I

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Page2Height:I

    .line 187
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Page2Width:I

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Page1Width:I

    .line 189
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledHeight:I

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Page1Height:I

    .line 190
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Page1Width:I

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Width2:I

    .line 191
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Page1Height:I

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Height2:I

    .line 192
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    if-nez v0, :cond_1

    .line 193
    const/4 v0, 0x1

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    .line 174
    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 196
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    .line 197
    const/4 v0, 0x0

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Page1Width:I

    .line 198
    const/4 v0, 0x0

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Page1Height:I

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Page2Width:I

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Page2Height:I

    .line 201
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledWidth:I

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Width2:I

    .line 202
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledHeight:I

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Height2:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public native BitmapResample(IIII)Z
.end method

.method public Clip([IIIII)I
    .locals 11
    .parameter "DestBuf"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Resized:Z

    if-nez v0, :cond_0

    move v9, p4

    .line 88
    .end local p4
    .local v9, w:I
    :goto_0
    return v9

    .line 60
    .end local v9           #w:I
    .restart local p4
    :cond_0
    sget-object v10, Lcom/rookiestudio/perfectviewer/Global;->ApplicationInstance:Landroid/content/Context;

    monitor-enter v10

    .line 62
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/rookiestudio/perfectviewer/Global;->ClipingImage:Z

    .line 63
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    if-nez v0, :cond_2

    .line 65
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->PageIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 66
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->DataIndex:I

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledWidth:I

    iget v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledHeight:I

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v6, p1

    move v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/rookiestudio/perfectviewer/TBitmap;->ClipBitmap(IIIII[III)V

    .line 85
    :cond_1
    :goto_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/rookiestudio/perfectviewer/Global;->ClipingImage:Z

    .line 60
    monitor-exit v10

    move v9, p4

    .line 88
    .end local p4
    .restart local v9       #w:I
    goto :goto_0

    .line 68
    .end local v9           #w:I
    .restart local p4
    :cond_2
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 69
    :cond_3
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 70
    :cond_4
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Page1Width:I

    if-le p4, v0, :cond_5

    .line 71
    iget p4, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Page1Width:I

    .line 73
    :cond_5
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->PageIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 74
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->DataIndex:I

    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Page2Width:I

    add-int v2, v0, p2

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledWidth:I

    iget v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledHeight:I

    move-object v0, p0

    move v3, p3

    move-object v6, p1

    move v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/rookiestudio/perfectviewer/TBitmap;->ClipBitmap(IIIII[III)V

    goto :goto_1

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 76
    :cond_6
    :try_start_1
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    if-nez v0, :cond_7

    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    .line 77
    :cond_7
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 78
    :cond_8
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Page2Width:I

    if-le p4, v0, :cond_9

    .line 79
    iget p4, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Page2Width:I

    .line 81
    :cond_9
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->PageIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 82
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->DataIndex:I

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledWidth:I

    iget v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledHeight:I

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v6, p1

    move v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/rookiestudio/perfectviewer/TBitmap;->ClipBitmap(IIIII[III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public native ClipBitmap(IIIII[III)V
.end method

.method public Delete()V
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Resized:Z

    .line 276
    const/4 v0, -0x1

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->PageIndex:I

    .line 277
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->DataIndex:I

    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TBitmap;->DeleteImageData(I)V

    .line 279
    return-void
.end method

.method public DeleteResized()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 285
    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Resized:Z

    .line 286
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledWidth:I

    .line 287
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledHeight:I

    .line 288
    const/4 v0, -0x1

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentFilter:I

    .line 289
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->DataIndex:I

    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TBitmap;->DeleteResizedImage(I)V

    .line 291
    return-void
.end method

.method public native DetectBorder(I)V
.end method

.method public native LoadImageArchive(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public native LoadImageFile(Ljava/lang/String;)I
.end method

.method public native MergeImageData(II)I
.end method

.method public OpenImageArchive(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .parameter "ArchiveName"
    .parameter "Password"
    .parameter "FileIndex"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 130
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    .line 131
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    .line 133
    invoke-virtual {p0, p1, p2, p3}, Lcom/rookiestudio/perfectviewer/TBitmap;->LoadImageArchive(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->DataIndex:I

    .line 134
    iget v2, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->DataIndex:I

    if-nez v2, :cond_0

    .line 144
    :goto_0
    return v0

    .line 137
    :cond_0
    iget v2, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    iput v2, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledWidth:I

    .line 138
    iget v2, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    iput v2, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledHeight:I

    .line 139
    sget-boolean v2, Lcom/rookiestudio/perfectviewer/Config;->AutoSinglePage:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledWidth:I

    int-to-double v2, v2

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledHeight:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 140
    iput v1, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    :goto_1
    move v0, v1

    .line 144
    goto :goto_0

    .line 142
    :cond_1
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    goto :goto_1
.end method

.method public OpenImageFile(Ljava/lang/String;)V
    .locals 5
    .parameter "FileName"

    .prologue
    const/4 v4, 0x0

    .line 114
    iput v4, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    .line 115
    iput v4, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    .line 116
    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TBitmap;->LoadImageFile(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->DataIndex:I

    .line 118
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledWidth:I

    .line 119
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledHeight:I

    .line 120
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->AutoSinglePage:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledWidth:I

    int-to-double v0, v0

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledHeight:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 121
    const/4 v0, 0x1

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    iput v4, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    goto :goto_0
.end method

.method public OpenImagePDF(Ljava/lang/String;I)V
    .locals 5
    .parameter "ArchiveName"
    .parameter "FileIndex"

    .prologue
    .line 151
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->PDFHandler:Lcom/rookiestudio/perfectviewer/TPDFHandler;

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFOpenFile(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->PDFHandler:Lcom/rookiestudio/perfectviewer/TPDFHandler;

    invoke-virtual {v1, p2}, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFGotoPage(I)V

    .line 153
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->PDFHandler:Lcom/rookiestudio/perfectviewer/TPDFHandler;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFPageWidth()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    .line 154
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->PDFHandler:Lcom/rookiestudio/perfectviewer/TPDFHandler;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFPageHeight()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    .line 155
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    invoke-static {v1, v2}, Lcom/rookiestudio/perfectviewer/TBitmap;->CreateImageData(II)I

    move-result v1

    iput v1, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->DataIndex:I

    .line 156
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->DataIndex:I

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TBitmap;->GetPixelData(I)I

    move-result v0

    .line 157
    .local v0, Pixels:I
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->PDFHandler:Lcom/rookiestudio/perfectviewer/TPDFHandler;

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    iget v3, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFDrawPage(III)V

    .line 158
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->DataIndex:I

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TBitmap;->PDFAfterHandler(I)V

    .line 159
    sget-boolean v1, Lcom/rookiestudio/perfectviewer/Config;->EnableBorderDetect:Z

    if-eqz v1, :cond_0

    .line 160
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->DataIndex:I

    invoke-virtual {p0, v1}, Lcom/rookiestudio/perfectviewer/TBitmap;->DetectBorder(I)V

    .line 162
    :cond_0
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    iput v1, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledWidth:I

    .line 163
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    iput v1, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledHeight:I

    .line 164
    sget-boolean v1, Lcom/rookiestudio/perfectviewer/Config;->AutoSinglePage:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledWidth:I

    int-to-double v1, v1

    iget v3, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledHeight:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    .line 165
    const/4 v1, 0x1

    iput v1, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    .line 170
    :goto_0
    return-void

    .line 167
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    goto :goto_0
.end method

.method public native SaveOriginalBitmap(ILjava/lang/String;I)V
.end method

.method public SaveOriginalImage(Ljava/lang/String;)V
    .locals 2
    .parameter "FileName"

    .prologue
    .line 93
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->DataIndex:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/rookiestudio/perfectviewer/TBitmap;->SaveOriginalBitmap(ILjava/lang/String;I)V

    .line 94
    return-void
.end method

.method public native SaveResizedBitmap(ILjava/lang/String;IIII)V
.end method

.method public SaveResizedImage(Ljava/lang/String;II)V
    .locals 7
    .parameter "FileName"
    .parameter "NewWidth"
    .parameter "NewHeight"

    .prologue
    .line 98
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->DataIndex:I

    const/4 v3, 0x0

    sget v4, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    move-object v0, p0

    move-object v2, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/rookiestudio/perfectviewer/TBitmap;->SaveResizedBitmap(ILjava/lang/String;IIII)V

    .line 99
    return-void
.end method

.method public UpdateImage()V
    .locals 7

    .prologue
    .line 265
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->EnableImageSharpen:Z

    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TBitmap;->SetSharpenImage(Z)V

    .line 266
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->InvertImage:Z

    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TBitmap;->SetInvertImage(Z)V

    .line 267
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->EnableColorAdjust:Z

    sget-wide v1, Lcom/rookiestudio/perfectviewer/Config;->ColorBrightness:D

    sget-wide v3, Lcom/rookiestudio/perfectviewer/Config;->ColorContrast:D

    sget-wide v5, Lcom/rookiestudio/perfectviewer/Config;->ColorGamma:D

    invoke-static/range {v0 .. v6}, Lcom/rookiestudio/perfectviewer/TBitmap;->SetColorAdjust(ZDDD)V

    .line 268
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->DataIndex:I

    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TBitmap;->DoUpdateImage(I)V

    .line 269
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    return v0
.end method
