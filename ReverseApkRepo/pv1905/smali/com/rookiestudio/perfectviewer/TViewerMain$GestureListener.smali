.class Lcom/rookiestudio/perfectviewer/TViewerMain$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TViewerMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TViewerMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;


# direct methods
.method private constructor <init>(Lcom/rookiestudio/perfectviewer/TViewerMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1727
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain$GestureListener;->this$0:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rookiestudio/perfectviewer/TViewerMain;Lcom/rookiestudio/perfectviewer/TViewerMain$GestureListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1727
    invoke-direct {p0, p1}, Lcom/rookiestudio/perfectviewer/TViewerMain$GestureListener;-><init>(Lcom/rookiestudio/perfectviewer/TViewerMain;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 14
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 1731
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v1, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    if-nez v1, :cond_1

    .line 1732
    :cond_0
    const/4 v1, 0x0

    .line 1818
    :goto_0
    return v1

    .line 1734
    :cond_1
    const/16 v12, 0x64

    .line 1735
    .local v12, SWIPE_MINX_DISTANCE:I
    const/16 v13, 0x82

    .line 1736
    .local v13, SWIPE_MINY_DISTANCE:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v11, v1

    .line 1737
    .local v11, Dy:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v10, v1

    .line 1739
    .local v10, Dx:I
    sget v1, Lcom/rookiestudio/perfectviewer/Config;->GestureChangePage:I

    if-nez v1, :cond_9

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 1740
    if-le v10, v12, :cond_5

    .line 1741
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x4396

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 1742
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TViewer;->RightMax()Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/rookiestudio/perfectviewer/Config;->LockVerticalMove:Z

    if-eqz v1, :cond_11

    .line 1743
    :cond_2
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    if-eqz v1, :cond_3

    .line 1744
    sget v1, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    if-nez v1, :cond_4

    .line 1745
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TNavigater;->Previous()Z

    .line 1750
    :cond_3
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1747
    :cond_4
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TNavigater;->Next()Z

    goto :goto_1

    .line 1752
    :cond_5
    neg-int v1, v10

    if-le v1, v12, :cond_11

    .line 1753
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x4396

    cmpl-float v1, v1, v2

    if-lez v1, :cond_11

    .line 1754
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TViewer;->LeftMax()Z

    move-result v1

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/rookiestudio/perfectviewer/Config;->LockVerticalMove:Z

    if-eqz v1, :cond_11

    .line 1755
    :cond_6
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    if-eqz v1, :cond_7

    .line 1756
    sget v1, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    if-nez v1, :cond_8

    .line 1757
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TNavigater;->Next()Z

    .line 1762
    :cond_7
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1759
    :cond_8
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TNavigater;->Previous()Z

    goto :goto_2

    .line 1765
    :cond_9
    sget v1, Lcom/rookiestudio/perfectviewer/Config;->GestureChangePage:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_11

    .line 1766
    if-le v11, v13, :cond_d

    .line 1767
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x4396

    cmpl-float v1, v1, v2

    if-lez v1, :cond_d

    .line 1768
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TViewer;->BottomMax()Z

    move-result v1

    if-nez v1, :cond_a

    sget-boolean v1, Lcom/rookiestudio/perfectviewer/Config;->LockHorizontalMove:Z

    if-eqz v1, :cond_11

    .line 1769
    :cond_a
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    if-eqz v1, :cond_b

    .line 1770
    sget v1, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    if-nez v1, :cond_c

    .line 1771
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TNavigater;->Next()Z

    .line 1776
    :cond_b
    :goto_3
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1773
    :cond_c
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TNavigater;->Previous()Z

    goto :goto_3

    .line 1778
    :cond_d
    neg-int v1, v11

    if-le v1, v13, :cond_11

    .line 1779
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x4396

    cmpl-float v1, v1, v2

    if-lez v1, :cond_11

    .line 1780
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TViewer;->TopMax()Z

    move-result v1

    if-nez v1, :cond_e

    sget-boolean v1, Lcom/rookiestudio/perfectviewer/Config;->LockHorizontalMove:Z

    if-eqz v1, :cond_11

    .line 1781
    :cond_e
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    if-eqz v1, :cond_f

    .line 1782
    sget v1, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    if-nez v1, :cond_10

    .line 1783
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TNavigater;->Previous()Z

    .line 1788
    :cond_f
    :goto_4
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1785
    :cond_10
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TNavigater;->Next()Z

    goto :goto_4

    .line 1792
    :cond_11
    sget-boolean v1, Lcom/rookiestudio/perfectviewer/Config;->LockHorizontalMove:Z

    if-eqz v1, :cond_12

    .line 1793
    const/16 p4, 0x0

    .line 1795
    :cond_12
    sget-boolean v1, Lcom/rookiestudio/perfectviewer/Config;->LockVerticalMove:Z

    if-eqz v1, :cond_13

    .line 1796
    const/16 p3, 0x0

    .line 1798
    :cond_13
    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget v2, v2, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    sub-int v6, v1, v2

    .line 1799
    .local v6, minX:I
    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget v2, v2, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    sub-int v8, v1, v2

    .line 1800
    .local v8, minY:I
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget v1, v1, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->ScreenWidth:I

    if-gt v1, v2, :cond_14

    .line 1801
    const/16 p3, 0x0

    .line 1802
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-object v1, v1, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v6, v1, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 1804
    :cond_14
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget v1, v1, Lcom/rookiestudio/perfectviewer/TViewer;->DestHeight:I

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->ScreenHeight:I

    if-gt v1, v2, :cond_15

    .line 1805
    const/16 p4, 0x0

    .line 1806
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-object v1, v1, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v8, v1, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    .line 1808
    :cond_15
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-object v1, v1, Lcom/rookiestudio/perfectviewer/TViewer;->MainScroller:Landroid/widget/Scroller;

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-object v2, v2, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v2, v2, Lcom/rookiestudio/baseclass/TSprite;->X:I

    .line 1809
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-object v3, v3, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget v3, v3, Lcom/rookiestudio/baseclass/TSprite;->Y:I

    move/from16 v0, p3

    float-to-int v4, v0

    move/from16 v0, p4

    float-to-int v5, v0

    .line 1810
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 1808
    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1811
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-object v2, v2, Lcom/rookiestudio/perfectviewer/TViewer;->MainScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    iput-boolean v2, v1, Lcom/rookiestudio/perfectviewer/TViewer;->Fling:Z

    .line 1812
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-boolean v1, v1, Lcom/rookiestudio/perfectviewer/TViewer;->Fling:Z

    if-eqz v1, :cond_16

    .line 1814
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TAnimator;->TestSuspended()V

    .line 1818
    :cond_16
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-boolean v1, v1, Lcom/rookiestudio/perfectviewer/TViewer;->Fling:Z

    goto/16 :goto_0
.end method
