.class public Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "TiCompositeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/view/TiCompositeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public autoFillsHeight:Z

.field public autoFillsWidth:Z

.field public autoHeight:Z

.field public autoWidth:Z

.field protected index:I

.field public optionBottom:Lorg/appcelerator/titanium/TiDimension;

.field public optionCenterX:Lorg/appcelerator/titanium/TiDimension;

.field public optionCenterY:Lorg/appcelerator/titanium/TiDimension;

.field public optionHeight:Lorg/appcelerator/titanium/TiDimension;

.field public optionLeft:Lorg/appcelerator/titanium/TiDimension;

.field public optionRight:Lorg/appcelerator/titanium/TiDimension;

.field public optionTop:Lorg/appcelerator/titanium/TiDimension;

.field public optionTransform:Lorg/appcelerator/titanium/view/Ti2DMatrix;

.field public optionWidth:Lorg/appcelerator/titanium/TiDimension;

.field public optionZIndex:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x2

    const/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 459
    invoke-direct {p0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 442
    iput v1, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    .line 443
    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    .line 444
    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    .line 445
    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterX:Lorg/appcelerator/titanium/TiDimension;

    .line 446
    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterY:Lorg/appcelerator/titanium/TiDimension;

    .line 447
    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    .line 448
    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    .line 449
    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    .line 450
    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    .line 451
    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTransform:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 453
    iput-boolean v4, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoHeight:Z

    .line 454
    iput-boolean v4, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoWidth:Z

    .line 455
    iput-boolean v3, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 456
    iput-boolean v3, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 461
    iput v1, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->index:I

    .line 462
    return-void
.end method
