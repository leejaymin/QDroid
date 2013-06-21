.class public Lcom/jellybus/fx/Juliet;
.super Ljava/lang/Object;
.source "Juliet.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "BitmapIO"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native changeBitmapIndex()V
.end method

.method public static native changeOriTextureToBlurIndex()V
.end method

.method public static native changePreTextureToBlurIndex()V
.end method

.method public static native changeThumbPreviewIndex()V
.end method

.method public static native flipBitmapIndex(ZZII)V
.end method

.method public static native getBlurIndex(Landroid/graphics/Bitmap;)V
.end method

.method public static native getCompareIndex(IILandroid/graphics/Bitmap;)V
.end method

.method public static native getHistogramGraphIndex(II)[I
.end method

.method public static native getOriginalIndex(IILandroid/graphics/Bitmap;)V
.end method

.method public static getPercentValue(III)I
    .locals 5
    .parameter "percent"
    .parameter "black"
    .parameter "white"

    .prologue
    .line 79
    sub-int v2, p2, p1

    .line 80
    .local v2, value:I
    sub-int v0, p0, p1

    .line 81
    .local v0, cen:I
    int-to-float v3, v0

    int-to-float v4, v2

    div-float/2addr v3, v4

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 82
    .local v1, result:I
    return v1
.end method

.method public static native getPreviewIndex(IILandroid/graphics/Bitmap;)V
.end method

.method public static native getTextureIndex(IILandroid/graphics/Bitmap;)V
.end method

.method public static histogramGraph(II)[I
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 73
    const/16 v1, 0x100

    new-array v0, v1, [I

    .line 74
    .local v0, index:[I
    invoke-static {p0, p1}, Lcom/jellybus/fx/Juliet;->getHistogramGraphIndex(II)[I

    move-result-object v0

    .line 75
    return-object v0
.end method

.method public static native removeAllIndex()V
.end method

.method public static native removeCompareIndex()V
.end method

.method public static native removePreviewIndex()V
.end method

.method public static native removeStackBlur()V
.end method

.method public static native removeTextureIndex()V
.end method

.method public static native removeThumnailIndex()V
.end method

.method public static native removeTiltIndex()V
.end method

.method public static native rotate180Index(II)V
.end method

.method public static native rotate270Index(II)V
.end method

.method public static native rotate90Index(II)V
.end method

.method public static native setAlphaBlendIndex(ILandroid/graphics/Bitmap;)V
.end method

.method public static native setBlurIndex(Landroid/graphics/Bitmap;)V
.end method

.method public static native setBorderToPicture(ZLandroid/graphics/Bitmap;)V
.end method

.method public static native setChannelSwap(III)V
.end method

.method public static native setColorDodgeBlurIndex(II)V
.end method

.method public static native setColorizeIndex(FII)V
.end method

.method public static native setCompareIndex(II)V
.end method

.method public static native setContrastBrightnessAllIndex(IFII)V
.end method

.method public static native setCropAllIndex(IIIII)V
.end method

.method public static native setCurvesIndexRGBIndex(I[IIIZ)V
.end method

.method public static native setEllipseOutfocusMaskAllIndex(IIIIFFFF)V
.end method

.method public static native setEllipseVignettingWithColorAllIndex(IIIIIFFFF)V
.end method

.method public static native setExclusionIndex(IIIII)V
.end method

.method public static native setGrayChannelAllIndex(III)V
.end method

.method public static native setGrayScaleAllIndex(II)V
.end method

.method public static native setHalfAllIndex(IIIIIIFFII)V
.end method

.method public static native setHighPassAllIndex(II)V
.end method

.method public static native setHistogramWithPercentAllIndex(IIIII)V
.end method

.method public static native setHueSaturationAllIndex(FFII)V
.end method

.method public static native setInvertIndex(II)V
.end method

.method public static native setLiveBitmap(FFFFFLandroid/graphics/Bitmap;)V
.end method

.method public static native setLiveIndex(Landroid/graphics/Bitmap;)V
.end method

.method public static native setMakeUpAllIndex(II)V
.end method

.method public static native setMiniatureMaskAllIndex(IIIIFFF)V
.end method

.method public static native setNewHDR(II)V
.end method

.method public static native setOriginalIndex(Landroid/graphics/Bitmap;)V
.end method

.method public static native setOutfocusMaskAllIndex(IIIIFF)V
.end method

.method public static native setOverlayAllIndex(II)V
.end method

.method public static native setOverlayRAllIndex(II)V
.end method

.method public static native setOverlayRGB(IIIII)V
.end method

.method public static native setOverlaySelf(II)V
.end method

.method public static native setPreviewIndex(Landroid/graphics/Bitmap;)V
.end method

.method public static native setResizeBicubic(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end method

.method public static native setResizeBilinearIndex(ZIILandroid/graphics/Bitmap;)V
.end method

.method public static native setResizeBilinearThumbnail(IIII)V
.end method

.method public static native setScaleStamp(IIIIIILandroid/graphics/Bitmap;)V
.end method

.method public static native setScreenAllIndex(II)V
.end method

.method public static native setScreenRGB(IIIII)V
.end method

.method public static native setSelectiveColorAllIndex(FFII)V
.end method

.method public static native setStackBlurAllIndex(FII)V
.end method

.method public static native setStackBlurFilter(FII)V
.end method

.method public static native setTextureIndex(IILandroid/graphics/Bitmap;)V
.end method

.method public static native setThumbTextureIndex(IILandroid/graphics/Bitmap;)V
.end method

.method public static native setTintAllIndex(FII)V
.end method

.method public static native setUserStamp(Landroid/graphics/Bitmap;)[I
.end method

.method public static native setVignettingWithAlphaAllIndex(FII)V
.end method

.method public static native setVignettingWithColorAllIndex(FIII)V
.end method

.method public static native setWhiteBalanceAllIndex(FII)V
.end method
