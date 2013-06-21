.class public final Lcom/rookiestudio/perfectviewer/TBitmap2;
.super Lcom/rookiestudio/perfectviewer/TBitmap;
.source "TBitmap2.java"


# instance fields
.field public AdjustDualPageHeight:Z

.field public Bitmap1:Lcom/rookiestudio/perfectviewer/TBitmap;

.field public Bitmap2:Lcom/rookiestudio/perfectviewer/TBitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/rookiestudio/perfectviewer/TBitmap;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->AdjustDualPageHeight:Z

    .line 7
    return-void
.end method

.method public static MergeImage(ILcom/rookiestudio/perfectviewer/TBitmap;Lcom/rookiestudio/perfectviewer/TBitmap;Z)Lcom/rookiestudio/perfectviewer/TBitmap2;
    .locals 4
    .parameter "Direction"
    .parameter "Bitmap1"
    .parameter "Bitmap2"
    .parameter "AdjustDualPageHeight"

    .prologue
    .line 67
    new-instance v0, Lcom/rookiestudio/perfectviewer/TBitmap2;

    invoke-direct {v0}, Lcom/rookiestudio/perfectviewer/TBitmap2;-><init>()V

    .line 68
    .local v0, NewImage:Lcom/rookiestudio/perfectviewer/TBitmap2;
    iput-boolean p3, v0, Lcom/rookiestudio/perfectviewer/TBitmap2;->AdjustDualPageHeight:Z

    .line 69
    if-nez p0, :cond_1

    .line 70
    iput-object p1, v0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap1:Lcom/rookiestudio/perfectviewer/TBitmap;

    .line 71
    iput-object p2, v0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap2:Lcom/rookiestudio/perfectviewer/TBitmap;

    .line 76
    :goto_0
    iget v2, p1, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    iget v3, p2, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Width:I

    .line 77
    if-eqz p3, :cond_0

    .line 78
    iget v2, p1, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    iget v3, p2, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    if-le v2, v3, :cond_2

    .line 79
    iget v2, p1, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    int-to-float v2, v2

    iget v3, p2, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 80
    .local v1, ff:F
    iget v2, p1, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    iget v3, p2, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Width:I

    .line 86
    .end local v1           #ff:F
    :cond_0
    :goto_1
    iget v2, p1, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    iget v3, p2, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Height:I

    .line 87
    const/4 v2, 0x0

    iput v2, v0, Lcom/rookiestudio/perfectviewer/TBitmap2;->CurrentPage:I

    .line 88
    iget v2, p2, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledWidth:I

    iput v2, v0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Page2Width:I

    .line 89
    iget v2, p2, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledHeight:I

    iput v2, v0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Page2Height:I

    .line 90
    iget v2, p1, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledWidth:I

    iput v2, v0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Page1Width:I

    .line 91
    iget v2, p1, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledHeight:I

    iput v2, v0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Page1Height:I

    .line 92
    iget v2, p1, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledWidth:I

    iget v3, p2, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledWidth:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/rookiestudio/perfectviewer/TBitmap2;->ScaledWidth:I

    .line 93
    iget v2, p1, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledHeight:I

    iget v3, p2, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lcom/rookiestudio/perfectviewer/TBitmap2;->ScaledHeight:I

    .line 94
    iget v2, v0, Lcom/rookiestudio/perfectviewer/TBitmap2;->ScaledWidth:I

    iput v2, v0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Width2:I

    .line 95
    iget v2, v0, Lcom/rookiestudio/perfectviewer/TBitmap2;->ScaledHeight:I

    iput v2, v0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Height2:I

    .line 98
    return-object v0

    .line 73
    :cond_1
    iput-object p2, v0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap1:Lcom/rookiestudio/perfectviewer/TBitmap;

    .line 74
    iput-object p1, v0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap2:Lcom/rookiestudio/perfectviewer/TBitmap;

    goto :goto_0

    .line 81
    :cond_2
    iget v2, p1, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    iget v3, p2, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    if-ge v2, v3, :cond_0

    .line 82
    iget v2, p2, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    int-to-float v2, v2

    iget v3, p1, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 83
    .restart local v1       #ff:F
    iget v2, p1, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iget v3, p2, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Width:I

    goto :goto_1
.end method


# virtual methods
.method public BitmapResample(Lcom/rookiestudio/baseclass/TSizeFactor;III)V
    .locals 7
    .parameter "f"
    .parameter "ow"
    .parameter "oh"
    .parameter "Filter"

    .prologue
    .line 25
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap1:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v5, v5, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    int-to-float v5, v5

    iget v6, p1, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 26
    .local v3, ow1:I
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap1:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v5, v5, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    int-to-float v5, v5

    iget v6, p1, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    mul-float/2addr v5, v6

    float-to-int v1, v5

    .line 27
    .local v1, oh1:I
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap2:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v5, v5, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    int-to-float v5, v5

    iget v6, p1, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 28
    .local v4, ow2:I
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap2:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v5, v5, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    int-to-float v5, v5

    iget v6, p1, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    mul-float/2addr v5, v6

    float-to-int v2, v5

    .line 29
    .local v2, oh2:I
    iget-boolean v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->AdjustDualPageHeight:Z

    if-eqz v5, :cond_0

    .line 30
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap1:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v5, v5, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap2:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v6, v6, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    if-le v5, v6, :cond_1

    .line 31
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap1:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v5, v5, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    int-to-float v5, v5

    iget v6, p1, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 32
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap1:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v5, v5, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    int-to-float v5, v5

    iget v6, p1, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    mul-float/2addr v5, v6

    float-to-int v1, v5

    .line 33
    int-to-float v5, v1

    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap2:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v6, v6, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    int-to-float v6, v6

    div-float v0, v5, v6

    .line 34
    .local v0, ff:F
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap2:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v5, v5, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v4, v5

    .line 35
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap2:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v5, v5, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v2, v5

    .line 44
    .end local v0           #ff:F
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap1:Lcom/rookiestudio/perfectviewer/TBitmap;

    invoke-virtual {v5, p1, v3, v1, p4}, Lcom/rookiestudio/perfectviewer/TBitmap;->BitmapResample(Lcom/rookiestudio/baseclass/TSizeFactor;III)V

    .line 45
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap2:Lcom/rookiestudio/perfectviewer/TBitmap;

    invoke-virtual {v5, p1, v4, v2, p4}, Lcom/rookiestudio/perfectviewer/TBitmap;->BitmapResample(Lcom/rookiestudio/baseclass/TSizeFactor;III)V

    .line 46
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap2:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v5, v5, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledWidth:I

    iput v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Page2Width:I

    .line 47
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap2:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v5, v5, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledHeight:I

    iput v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Page2Height:I

    .line 48
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap1:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v5, v5, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledWidth:I

    iput v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Page1Width:I

    .line 49
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap1:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v5, v5, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledHeight:I

    iput v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Page1Height:I

    .line 50
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap1:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v5, v5, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap2:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v6, v6, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Width:I

    .line 51
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap1:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v5, v5, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap2:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v6, v6, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Height:I

    .line 52
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap1:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v5, v5, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledWidth:I

    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap2:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v6, v6, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledWidth:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->ScaledWidth:I

    .line 53
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap1:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v5, v5, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledHeight:I

    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap2:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v6, v6, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledHeight:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->ScaledHeight:I

    .line 54
    iget v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->ScaledWidth:I

    iput v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Width2:I

    .line 55
    iget v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->ScaledHeight:I

    iput v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Height2:I

    .line 56
    return-void

    .line 36
    :cond_1
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap1:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v5, v5, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap2:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v6, v6, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    if-ge v5, v6, :cond_0

    .line 37
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap2:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v5, v5, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    int-to-float v5, v5

    iget v6, p1, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 38
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap2:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v5, v5, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    int-to-float v5, v5

    iget v6, p1, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    mul-float/2addr v5, v6

    float-to-int v2, v5

    .line 39
    int-to-float v5, v2

    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap1:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v6, v6, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    int-to-float v6, v6

    div-float v0, v5, v6

    .line 40
    .restart local v0       #ff:F
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap1:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v5, v5, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v3, v5

    .line 41
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap1:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v5, v5, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v1, v5

    goto/16 :goto_0
.end method

.method public Clip([IIIII)I
    .locals 11
    .parameter "DestBuf"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 14
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-object v10, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBuf:[I

    monitor-enter v10

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap2:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v1, v0, Lcom/rookiestudio/perfectviewer/TBitmap;->DataIndex:I

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap1:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v2, v0, Lcom/rookiestudio/perfectviewer/TBitmap;->DataIndex:I

    iget v5, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->ScaledWidth:I

    iget v6, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->ScaledHeight:I

    move-object v0, p0

    move v3, p2

    move v4, p3

    move-object v7, p1

    move v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v0 .. v9}, Lcom/rookiestudio/perfectviewer/TBitmap2;->MergeImageClip(IIIIII[III)V

    .line 14
    monitor-exit v10

    .line 18
    return p4

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public Delete()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap1:Lcom/rookiestudio/perfectviewer/TBitmap;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TBitmap;->Delete()V

    .line 62
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBitmap2;->Bitmap2:Lcom/rookiestudio/perfectviewer/TBitmap;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TBitmap;->Delete()V

    .line 63
    return-void
.end method

.method public native MergeImageClip(IIIIII[III)V
.end method
