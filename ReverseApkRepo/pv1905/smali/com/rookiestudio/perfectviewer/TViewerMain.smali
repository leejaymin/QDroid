.class public Lcom/rookiestudio/perfectviewer/TViewerMain;
.super Lcom/cooliris/media/MonitoredActivity;
.source "TViewerMain.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/rookiestudio/baseclass/TViewerCallback;
.implements Lcom/rookiestudio/perfectviewer/LongRunningActionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;,
        Lcom/rookiestudio/perfectviewer/TViewerMain$GestureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cooliris/media/MonitoredActivity;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
        "Lcom/rookiestudio/baseclass/TViewerCallback;",
        "Lcom/rookiestudio/perfectviewer/LongRunningActionCallback",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static ACTION_POINTER_DOWN:I = 0x0

.field private static ACTION_POINTER_INDEX_SHIFT:I = 0x0

.field public static ACTION_POINTER_UP:I = 0x0

.field public static ActivityFirstStart:Z = false

.field private static final SWIPE_THRESHOLD_VELOCITY:I = 0x12c

.field public static ViewFile:Ljava/lang/String; = null

.field public static ViewFileOrder:I = 0x0

.field static final gmDrag:I = 0x1

.field static final gmNone:I = 0x0

.field static final gmZoom:I = 0x2

.field static final gmZoomPending:I = 0x3

.field private static m_findPointerIndex:Ljava/lang/reflect/Method;

.field private static m_getHistoricalPressure:Ljava/lang/reflect/Method;

.field private static m_getHistoricalX:Ljava/lang/reflect/Method;

.field private static m_getHistoricalY:Ljava/lang/reflect/Method;

.field private static m_getPointerCount:Ljava/lang/reflect/Method;

.field private static m_getPressure:Ljava/lang/reflect/Method;

.field private static m_getX:Ljava/lang/reflect/Method;

.field private static m_getY:Ljava/lang/reflect/Method;

.field public static final multiTouchSupported:Z


# instance fields
.field public ActivityStopping:Z

.field private DownKey:I

.field public EndApplication:Z

.field private GestureMode:I

.field private LongPressShowMenu:Z

.field private LongPressTimer:Ljava/util/Timer;

.field private LongRunningDispatcher:Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final MainGestureDetector:Landroid/view/GestureDetector;

.field public MainLayout:Landroid/widget/FrameLayout;

.field private MiddlePoint:Landroid/graphics/PointF;

.field private NewDist:F

.field private OldDist:F

.field public OrientationChanged:Z

.field private ShowMainMenuTask:Ljava/util/TimerTask;

.field private StartPoint:Landroid/graphics/PointF;

.field private SystemUIHandler:Lcom/rookiestudio/perfectviewer/TSystemUIHandler;

.field private setFullScreenMode:Ljava/lang/reflect/Method;

.field private settings:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 62
    sput-boolean v1, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActivityFirstStart:Z

    .line 63
    const/4 v1, 0x6

    sput v1, Lcom/rookiestudio/perfectviewer/TViewerMain;->ACTION_POINTER_UP:I

    .line 64
    const/4 v1, 0x5

    sput v1, Lcom/rookiestudio/perfectviewer/TViewerMain;->ACTION_POINTER_DOWN:I

    .line 69
    const-string v1, ""

    sput-object v1, Lcom/rookiestudio/perfectviewer/TViewerMain;->ViewFile:Ljava/lang/String;

    .line 70
    const/4 v1, -0x1

    sput v1, Lcom/rookiestudio/perfectviewer/TViewerMain;->ViewFileOrder:I

    .line 90
    const/16 v1, 0x8

    sput v1, Lcom/rookiestudio/perfectviewer/TViewerMain;->ACTION_POINTER_INDEX_SHIFT:I

    .line 97
    const/4 v0, 0x0

    .line 100
    .local v0, succeeded:Z
    :try_start_0
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "getPointerCount"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/rookiestudio/perfectviewer/TViewerMain;->m_getPointerCount:Ljava/lang/reflect/Method;

    .line 101
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "findPointerIndex"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    .line 102
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 101
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/rookiestudio/perfectviewer/TViewerMain;->m_findPointerIndex:Ljava/lang/reflect/Method;

    .line 103
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "getPressure"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/rookiestudio/perfectviewer/TViewerMain;->m_getPressure:Ljava/lang/reflect/Method;

    .line 104
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "getHistoricalX"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    .line 105
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 104
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/rookiestudio/perfectviewer/TViewerMain;->m_getHistoricalX:Ljava/lang/reflect/Method;

    .line 106
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "getHistoricalY"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    .line 107
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 106
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/rookiestudio/perfectviewer/TViewerMain;->m_getHistoricalY:Ljava/lang/reflect/Method;

    .line 108
    const-class v1, Landroid/view/MotionEvent;

    .line 109
    const-string v2, "getHistoricalPressure"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 108
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/rookiestudio/perfectviewer/TViewerMain;->m_getHistoricalPressure:Ljava/lang/reflect/Method;

    .line 110
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "getX"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/rookiestudio/perfectviewer/TViewerMain;->m_getX:Ljava/lang/reflect/Method;

    .line 111
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "getY"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/rookiestudio/perfectviewer/TViewerMain;->m_getY:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    const/4 v0, 0x1

    .line 115
    :goto_0
    sput-boolean v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->multiTouchSupported:Z

    .line 116
    sget-boolean v1, Lcom/rookiestudio/perfectviewer/TViewerMain;->multiTouchSupported:Z

    if-eqz v1, :cond_0

    .line 120
    :try_start_1
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "ACTION_POINTER_UP"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 121
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 120
    sput v1, Lcom/rookiestudio/perfectviewer/TViewerMain;->ACTION_POINTER_UP:I

    .line 122
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "ACTION_POINTER_DOWN"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 123
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 122
    sput v1, Lcom/rookiestudio/perfectviewer/TViewerMain;->ACTION_POINTER_DOWN:I

    .line 124
    const-class v1, Landroid/view/MotionEvent;

    .line 125
    const-string v2, "ACTION_POINTER_INDEX_SHIFT"

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 125
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 124
    sput v1, Lcom/rookiestudio/perfectviewer/TViewerMain;->ACTION_POINTER_INDEX_SHIFT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    :cond_0
    :goto_1
    return-void

    .line 126
    :catch_0
    move-exception v1

    goto :goto_1

    .line 113
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lcom/cooliris/media/MonitoredActivity;-><init>()V

    .line 65
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->StartPoint:Landroid/graphics/PointF;

    .line 66
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->MiddlePoint:Landroid/graphics/PointF;

    .line 71
    iput v1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->GestureMode:I

    .line 72
    iput v1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->DownKey:I

    .line 73
    iput-boolean v1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->LongPressShowMenu:Z

    .line 77
    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->setFullScreenMode:Ljava/lang/reflect/Method;

    .line 78
    iput-boolean v1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActivityStopping:Z

    .line 79
    iput-boolean v1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->OrientationChanged:Z

    .line 80
    iput-boolean v1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->EndApplication:Z

    .line 91
    new-instance v0, Landroid/view/GestureDetector;

    .line 92
    new-instance v1, Lcom/rookiestudio/perfectviewer/TViewerMain$GestureListener;

    invoke-direct {v1, p0, v2}, Lcom/rookiestudio/perfectviewer/TViewerMain$GestureListener;-><init>(Lcom/rookiestudio/perfectviewer/TViewerMain;Lcom/rookiestudio/perfectviewer/TViewerMain$GestureListener;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->MainGestureDetector:Landroid/view/GestureDetector;

    .line 93
    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->LongPressTimer:Ljava/util/Timer;

    .line 94
    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->ShowMainMenuTask:Ljava/util/TimerTask;

    .line 95
    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->SystemUIHandler:Lcom/rookiestudio/perfectviewer/TSystemUIHandler;

    .line 54
    return-void
.end method

.method public static ActionHandler(Landroid/app/Activity;I)Z
    .locals 12
    .parameter "Parent"
    .parameter "RegionFunction"

    .prologue
    .line 765
    const/4 v4, 0x1

    .line 767
    .local v4, Result:Z
    const/16 v8, 0x10

    if-eq p1, v8, :cond_1

    .line 768
    const/16 v8, 0x1d

    if-eq p1, v8, :cond_1

    .line 769
    const/16 v8, 0x20

    if-eq p1, v8, :cond_1

    .line 770
    const/16 v8, 0x21

    if-eq p1, v8, :cond_1

    .line 771
    const/16 v8, 0x14

    if-eq p1, v8, :cond_1

    .line 772
    const/16 v8, 0x15

    if-eq p1, v8, :cond_1

    .line 773
    const/16 v8, 0x16

    if-eq p1, v8, :cond_1

    .line 774
    const/16 v8, 0x1b

    if-eq p1, v8, :cond_1

    .line 775
    const/16 v8, 0x1c

    if-eq p1, v8, :cond_1

    .line 776
    const/16 v8, 0x22

    if-eq p1, v8, :cond_1

    .line 777
    const/16 v8, 0x23

    if-eq p1, v8, :cond_1

    .line 778
    const/16 v8, 0x24

    if-eq p1, v8, :cond_1

    .line 779
    const/16 v8, 0x2a

    if-eq p1, v8, :cond_1

    .line 780
    const/16 v8, 0x2d

    if-eq p1, v8, :cond_1

    .line 781
    const/16 v8, 0x12

    if-eq p1, v8, :cond_1

    .line 782
    const/16 v8, 0x2e

    if-eq p1, v8, :cond_1

    .line 783
    const/16 v8, 0x2f

    if-eq p1, v8, :cond_1

    .line 784
    const/16 v8, 0x30

    if-eq p1, v8, :cond_1

    .line 785
    const/16 v8, 0x31

    if-eq p1, v8, :cond_1

    .line 786
    const/16 v8, 0x32

    if-eq p1, v8, :cond_1

    .line 787
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    if-eqz v8, :cond_0

    .line 788
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    iget-object v8, v8, Lcom/rookiestudio/perfectviewer/TNavigater;->CurrentFileName:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 789
    :cond_0
    const/4 v8, 0x0

    .line 1219
    :goto_0
    return v8

    .line 793
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1216
    const/4 v4, 0x0

    :cond_2
    :goto_1
    move v8, v4

    .line 1219
    goto :goto_0

    .line 795
    :pswitch_0
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v8}, Lcom/rookiestudio/perfectviewer/TNavigater;->First()Z

    goto :goto_1

    .line 799
    :pswitch_1
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v8}, Lcom/rookiestudio/perfectviewer/TNavigater;->Last()Z

    goto :goto_1

    .line 803
    :pswitch_2
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v8}, Lcom/rookiestudio/perfectviewer/TNavigater;->Next()Z

    goto :goto_1

    .line 807
    :pswitch_3
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v8}, Lcom/rookiestudio/perfectviewer/TNavigater;->Previous()Z

    goto :goto_1

    .line 811
    :pswitch_4
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v8}, Lcom/rookiestudio/perfectviewer/TNavigater;->ScrollNext()Z

    goto :goto_1

    .line 815
    :pswitch_5
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v8}, Lcom/rookiestudio/perfectviewer/TNavigater;->ScrollPrevious()Z

    goto :goto_1

    .line 819
    :pswitch_6
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v8}, Lcom/rookiestudio/perfectviewer/TNavigater;->NextBook()V

    goto :goto_1

    .line 822
    :pswitch_7
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v8}, Lcom/rookiestudio/perfectviewer/TNavigater;->PreviousBook()V

    goto :goto_1

    .line 825
    :pswitch_8
    sget v8, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_3

    .line 826
    sget v8, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_3

    .line 827
    sget v8, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_4

    .line 828
    :cond_3
    sget-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->ShowLoadingMessage:Z

    if-eqz v8, :cond_4

    .line 829
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    .line 830
    const v10, 0x7f0a000a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 829
    invoke-virtual {v8, v9, v10, v11}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(Ljava/lang/String;IZ)V

    .line 833
    :cond_4
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v8}, Lcom/rookiestudio/perfectviewer/TViewer;->ZoomIn()V

    .line 834
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v8}, Lcom/rookiestudio/perfectviewer/TViewer;->DoUpdate()V

    .line 835
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v8}, Lcom/rookiestudio/perfectviewer/TViewer;->HideMessage()V

    goto :goto_1

    .line 838
    :pswitch_9
    sget v8, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_5

    .line 839
    sget v8, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_5

    .line 840
    sget v8, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_6

    .line 841
    :cond_5
    sget-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->ShowLoadingMessage:Z

    if-eqz v8, :cond_6

    .line 842
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    .line 843
    const v10, 0x7f0a000a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 842
    invoke-virtual {v8, v9, v10, v11}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(Ljava/lang/String;IZ)V

    .line 846
    :cond_6
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v8}, Lcom/rookiestudio/perfectviewer/TViewer;->ZoomOut()V

    .line 847
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v8}, Lcom/rookiestudio/perfectviewer/TViewer;->DoUpdate()V

    .line 848
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v8}, Lcom/rookiestudio/perfectviewer/TViewer;->HideMessage()V

    goto/16 :goto_1

    .line 851
    :pswitch_a
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/rookiestudio/perfectviewer/TViewer;->SetPageFit(I)V

    goto/16 :goto_1

    .line 854
    :pswitch_b
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/rookiestudio/perfectviewer/TViewer;->SetPageFit(I)V

    goto/16 :goto_1

    .line 857
    :pswitch_c
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/rookiestudio/perfectviewer/TViewer;->SetPageFit(I)V

    goto/16 :goto_1

    .line 860
    :pswitch_d
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/rookiestudio/perfectviewer/TViewer;->SetPageFit(I)V

    goto/16 :goto_1

    .line 863
    :pswitch_e
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    if-eqz v8, :cond_2

    .line 864
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    new-instance v9, Lcom/rookiestudio/perfectviewer/TViewerMain$4;

    invoke-direct {v9}, Lcom/rookiestudio/perfectviewer/TViewerMain$4;-><init>()V

    invoke-virtual {v8, v9}, Lcom/rookiestudio/perfectviewer/TViewerMain;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 884
    :pswitch_f
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    if-eqz v8, :cond_2

    .line 885
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    new-instance v9, Lcom/rookiestudio/perfectviewer/TViewerMain$5;

    invoke-direct {v9}, Lcom/rookiestudio/perfectviewer/TViewerMain$5;-><init>()V

    invoke-virtual {v8, v9}, Lcom/rookiestudio/perfectviewer/TViewerMain;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 913
    :pswitch_10
    invoke-static {p0}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->CreateFileBrowser(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 916
    :pswitch_11
    sget v8, Lcom/rookiestudio/perfectviewer/Config;->ScreenOrientation:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    .line 917
    const-string v8, "ScreenOrientation"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;I)V

    .line 918
    const/4 v8, 0x2

    sput v8, Lcom/rookiestudio/perfectviewer/Config;->ScreenOrientation:I

    .line 919
    sget v8, Lcom/rookiestudio/perfectviewer/Config;->ScreenOrientation:I

    invoke-static {p0, v8}, Lcom/rookiestudio/perfectviewer/TUtility;->SetScreenOrientation(Landroid/app/Activity;I)V

    goto/16 :goto_1

    .line 921
    :cond_7
    const-string v8, "ScreenOrientation"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;I)V

    .line 922
    const/4 v8, 0x1

    sput v8, Lcom/rookiestudio/perfectviewer/Config;->ScreenOrientation:I

    .line 923
    sget v8, Lcom/rookiestudio/perfectviewer/Config;->ScreenOrientation:I

    invoke-static {p0, v8}, Lcom/rookiestudio/perfectviewer/TUtility;->SetScreenOrientation(Landroid/app/Activity;I)V

    goto/16 :goto_1

    .line 927
    :pswitch_12
    const-string v8, "ScreenOrientation"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;I)V

    .line 928
    const/4 v8, 0x0

    sput v8, Lcom/rookiestudio/perfectviewer/Config;->ScreenOrientation:I

    .line 929
    sget v8, Lcom/rookiestudio/perfectviewer/Config;->ScreenOrientation:I

    invoke-static {p0, v8}, Lcom/rookiestudio/perfectviewer/TUtility;->SetScreenOrientation(Landroid/app/Activity;I)V

    goto/16 :goto_1

    .line 932
    :pswitch_13
    const-string v8, "ScreenOrientation"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;I)V

    .line 933
    const/4 v8, 0x1

    sput v8, Lcom/rookiestudio/perfectviewer/Config;->ScreenOrientation:I

    .line 934
    sget v8, Lcom/rookiestudio/perfectviewer/Config;->ScreenOrientation:I

    invoke-static {p0, v8}, Lcom/rookiestudio/perfectviewer/TUtility;->SetScreenOrientation(Landroid/app/Activity;I)V

    goto/16 :goto_1

    .line 937
    :pswitch_14
    const-string v8, "ScreenOrientation"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;I)V

    .line 938
    const/4 v8, 0x2

    sput v8, Lcom/rookiestudio/perfectviewer/Config;->ScreenOrientation:I

    .line 939
    sget v8, Lcom/rookiestudio/perfectviewer/Config;->ScreenOrientation:I

    invoke-static {p0, v8}, Lcom/rookiestudio/perfectviewer/TUtility;->SetScreenOrientation(Landroid/app/Activity;I)V

    goto/16 :goto_1

    .line 942
    :pswitch_15
    const-string v8, "ScreenOrientation"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;I)V

    .line 943
    const/4 v8, 0x3

    sput v8, Lcom/rookiestudio/perfectviewer/Config;->ScreenOrientation:I

    .line 944
    sget v8, Lcom/rookiestudio/perfectviewer/Config;->ScreenOrientation:I

    invoke-static {p0, v8}, Lcom/rookiestudio/perfectviewer/TUtility;->SetScreenOrientation(Landroid/app/Activity;I)V

    goto/16 :goto_1

    .line 947
    :pswitch_16
    const-string v8, "ScreenOrientation"

    const/4 v9, 0x4

    invoke-static {v8, v9}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;I)V

    .line 948
    const/4 v8, 0x4

    sput v8, Lcom/rookiestudio/perfectviewer/Config;->ScreenOrientation:I

    .line 949
    sget v8, Lcom/rookiestudio/perfectviewer/Config;->ScreenOrientation:I

    invoke-static {p0, v8}, Lcom/rookiestudio/perfectviewer/TUtility;->SetScreenOrientation(Landroid/app/Activity;I)V

    goto/16 :goto_1

    .line 952
    :pswitch_17
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-virtual {v8}, Lcom/rookiestudio/perfectviewer/TViewerMain;->AddFavorites()V

    goto/16 :goto_1

    .line 955
    :pswitch_18
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 956
    .local v7, aFavoritesBrowser:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 959
    .end local v7           #aFavoritesBrowser:Landroid/content/Intent;
    :pswitch_19
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-virtual {v8}, Lcom/rookiestudio/perfectviewer/TViewerMain;->AddBookmark()V

    goto/16 :goto_1

    .line 962
    :pswitch_1a
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    new-instance v9, Lcom/rookiestudio/perfectviewer/TViewerMain$6;

    invoke-direct {v9}, Lcom/rookiestudio/perfectviewer/TViewerMain$6;-><init>()V

    invoke-virtual {v8, v9}, Lcom/rookiestudio/perfectviewer/TViewerMain;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 981
    :pswitch_1b
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    new-instance v9, Lcom/rookiestudio/perfectviewer/TViewerMain$7;

    invoke-direct {v9}, Lcom/rookiestudio/perfectviewer/TViewerMain$7;-><init>()V

    invoke-virtual {v8, v9}, Lcom/rookiestudio/perfectviewer/TViewerMain;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 1000
    :pswitch_1c
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/rookiestudio/perfectviewer/TViewer;->SetPageFit(I)V

    goto/16 :goto_1

    .line 1003
    :pswitch_1d
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainSlideshow:Lcom/rookiestudio/perfectviewer/TSlideshow;

    invoke-virtual {v8}, Lcom/rookiestudio/perfectviewer/TSlideshow;->StartPlay()V

    goto/16 :goto_1

    .line 1006
    :pswitch_1e
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-static {v8}, Lcom/rookiestudio/perfectviewer/TUtility;->BacklightBrighter(Landroid/view/Window;)V

    goto/16 :goto_1

    .line 1009
    :pswitch_1f
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-static {v8}, Lcom/rookiestudio/perfectviewer/TUtility;->BacklightDarker(Landroid/view/Window;)V

    goto/16 :goto_1

    .line 1012
    :pswitch_20
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    if-eqz v8, :cond_8

    .line 1013
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    iget-object v8, v8, Lcom/rookiestudio/perfectviewer/TNavigater;->CurrentFileName:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1014
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-virtual {v8}, Lcom/rookiestudio/perfectviewer/TViewerMain;->AddBookmark()V

    .line 1016
    :cond_8
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/rookiestudio/perfectviewer/TViewerMain;->EndApplication:Z

    .line 1017
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 1020
    :pswitch_21
    const/4 v8, 0x1

    sput-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->TouchScreenSetup:Z

    .line 1021
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v8}, Lcom/rookiestudio/perfectviewer/TViewer;->DoUpdate()V

    .line 1022
    const v8, 0x7f0a0070

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1025
    :pswitch_22
    invoke-static {p0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->CreateBookshelf(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 1028
    :pswitch_23
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    iget-object v8, v8, Lcom/rookiestudio/perfectviewer/TNavigater;->CurrentFolderName:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->DeleteFile(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1031
    :pswitch_24
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    iget-object v8, v8, Lcom/rookiestudio/perfectviewer/TNavigater;->CurrentFolderName:Ljava/lang/String;

    invoke-static {v8}, Lcom/rookiestudio/perfectviewer/Config;->FileIsArchive(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1032
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    iget-object v8, v8, Lcom/rookiestudio/perfectviewer/TNavigater;->CurrentFolderName:Ljava/lang/String;

    invoke-static {v8}, Lcom/rookiestudio/perfectviewer/Config;->FileIsPDF(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1035
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    iget-object v1, v8, Lcom/rookiestudio/perfectviewer/TNavigater;->CurrentFileName:Ljava/lang/String;

    .line 1036
    .local v1, FileName:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->DeleteFile(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1039
    .end local v1           #FileName:Ljava/lang/String;
    :pswitch_25
    new-instance v3, Landroid/content/Intent;

    const-class v8, Lcom/rookiestudio/perfectviewer/TPreferences;

    invoke-direct {v3, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1041
    .local v3, Preferences:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1044
    .end local v3           #Preferences:Landroid/content/Intent;
    :pswitch_26
    sget v8, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    .line 1045
    const/4 v8, 0x0

    sput v8, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    .line 1046
    const v8, 0x7f0a0046

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 1051
    :goto_2
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    if-eqz v8, :cond_2

    .line 1052
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    iget-object v8, v8, Lcom/rookiestudio/perfectviewer/TNavigater;->CurrentFileName:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1053
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    iget-object v9, v9, Lcom/rookiestudio/perfectviewer/TNavigater;->CurrentFolderName:Ljava/lang/String;

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Lcom/rookiestudio/perfectviewer/TViewerMain;->StartOpenFile(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1048
    :cond_9
    const/4 v8, 0x1

    sput v8, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    .line 1049
    const v8, 0x7f0a0047

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1057
    :pswitch_27
    sget-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->AutoDualPage:Z

    if-eqz v8, :cond_a

    .line 1058
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    .line 1059
    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v10, 0x7f0a00dc

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1060
    sget-object v10, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v11, 0x7f0a00ec

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1061
    const v11, 0x1080027

    .line 1058
    invoke-static {v8, v9, v10, v11}, Lcom/rookiestudio/perfectviewer/TUtility;->MessageBox(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1064
    :cond_a
    sget-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->AutoSinglePage:Z

    if-eqz v8, :cond_b

    const/4 v8, 0x0

    :goto_3
    sput-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->AutoSinglePage:Z

    .line 1065
    sget-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->AutoSinglePage:Z

    if-eqz v8, :cond_c

    .line 1066
    sget-object v8, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    const/4 v9, 0x1

    iput v9, v8, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    .line 1070
    :goto_4
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainImageCache:Lcom/rookiestudio/perfectviewer/TImageCache;

    invoke-virtual {v8}, Lcom/rookiestudio/perfectviewer/TImageCache;->DeleteAllScaledImage()V

    .line 1075
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget v9, Lcom/rookiestudio/perfectviewer/Config;->PageFit:I

    invoke-virtual {v8, v9}, Lcom/rookiestudio/perfectviewer/TViewer;->SetPageFit(I)V

    .line 1076
    const-string v8, "AutoSinglePage"

    sget-boolean v9, Lcom/rookiestudio/perfectviewer/Config;->AutoSinglePage:Z

    invoke-static {v8, v9}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;Z)V

    .line 1077
    sget-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->AutoSinglePage:Z

    if-eqz v8, :cond_d

    .line 1080
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v10, 0x7f0a0032

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1081
    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v10, 0x7f0a010b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1080
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1081
    const/4 v9, 0x0

    .line 1078
    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 1081
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1064
    :cond_b
    const/4 v8, 0x1

    goto :goto_3

    .line 1068
    :cond_c
    sget-object v8, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    const/4 v9, 0x0

    iput v9, v8, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    goto :goto_4

    .line 1085
    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v10, 0x7f0a0032

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1086
    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v10, 0x7f0a010c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1085
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1086
    const/4 v9, 0x0

    .line 1083
    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 1086
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1090
    :pswitch_28
    sget-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->AutoSinglePage:Z

    if-eqz v8, :cond_e

    .line 1091
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    .line 1092
    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v10, 0x7f0a00dc

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1093
    sget-object v10, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v11, 0x7f0a00eb

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1094
    const v11, 0x1080027

    .line 1091
    invoke-static {v8, v9, v10, v11}, Lcom/rookiestudio/perfectviewer/TUtility;->MessageBox(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1097
    :cond_e
    invoke-static {}, Lcom/rookiestudio/perfectviewer/TUtility;->GetTotalMemory()I

    move-result v8

    div-int/lit16 v8, v8, 0x400

    const/16 v9, 0x140

    if-ge v8, v9, :cond_f

    .line 1099
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    .line 1100
    const v10, 0x7f0a00dc

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    .line 1101
    const v11, 0x7f0a00fc

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1102
    const v11, 0x1080027

    .line 1099
    invoke-static {v8, v9, v10, v11}, Lcom/rookiestudio/perfectviewer/TUtility;->MessageBox(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1105
    :cond_f
    sget-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->AutoDualPage:Z

    if-eqz v8, :cond_12

    const/4 v8, 0x0

    :goto_5
    sput-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->AutoDualPage:Z

    .line 1106
    sget v8, Lcom/rookiestudio/perfectviewer/Config;->PageFit:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_10

    .line 1107
    const/4 v8, 0x1

    sput v8, Lcom/rookiestudio/perfectviewer/Config;->PageFit:I

    .line 1108
    const-string v8, "PageFit"

    sget v9, Lcom/rookiestudio/perfectviewer/Config;->PageFit:I

    invoke-static {v8, v9}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;I)V

    .line 1110
    :cond_10
    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->MainImageCache:Lcom/rookiestudio/perfectviewer/TImageCache;

    sget-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->AutoDualPage:Z

    if-eqz v8, :cond_13

    const/4 v8, 0x4

    :goto_6
    iput v8, v9, Lcom/rookiestudio/perfectviewer/TImageCache;->MaxCacheCount:I

    .line 1111
    const-string v8, "AutoDualPage"

    sget-boolean v9, Lcom/rookiestudio/perfectviewer/Config;->AutoDualPage:Z

    invoke-static {v8, v9}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;Z)V

    .line 1112
    sget-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->AutoDualPage:Z

    if-eqz v8, :cond_14

    .line 1113
    const/4 v8, 0x1

    sput-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->EnableImageCache:Z

    .line 1114
    const/4 v8, 0x1

    sput-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->EnableCacheScaledImage:Z

    .line 1115
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    if-eqz v8, :cond_11

    .line 1116
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v8}, Lcom/rookiestudio/perfectviewer/TNavigater;->SwitchDualPage()V

    .line 1120
    :cond_11
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v10, 0x7f0a00ea

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1121
    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v10, 0x7f0a010b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1120
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1121
    const/4 v9, 0x0

    .line 1118
    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 1121
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1105
    :cond_12
    const/4 v8, 0x1

    goto :goto_5

    .line 1110
    :cond_13
    const/4 v8, 0x3

    goto :goto_6

    .line 1123
    :cond_14
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    if-eqz v8, :cond_15

    .line 1124
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v8}, Lcom/rookiestudio/perfectviewer/TNavigater;->SwitchSinglePage()V

    .line 1128
    :cond_15
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v10, 0x7f0a00ea

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1129
    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v10, 0x7f0a010c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1128
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1129
    const/4 v9, 0x0

    .line 1126
    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 1129
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1133
    :pswitch_29
    sget-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->InvertImage:Z

    if-eqz v8, :cond_16

    const/4 v8, 0x0

    :goto_7
    sput-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->InvertImage:Z

    .line 1134
    const-string v8, "InvertImage"

    sget-boolean v9, Lcom/rookiestudio/perfectviewer/Config;->InvertImage:Z

    invoke-static {v8, v9}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;Z)V

    .line 1135
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainImageCache:Lcom/rookiestudio/perfectviewer/TImageCache;

    invoke-virtual {v8}, Lcom/rookiestudio/perfectviewer/TImageCache;->UpdateAllImage()V

    .line 1136
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/rookiestudio/perfectviewer/TViewer;->NeedDoClip:Z

    .line 1137
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v8}, Lcom/rookiestudio/perfectviewer/TViewer;->DoUpdate()V

    .line 1138
    sget-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->InvertImage:Z

    if-eqz v8, :cond_17

    .line 1141
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v10, 0x7f0a00ed

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1142
    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v10, 0x7f0a010b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1141
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1142
    const/4 v9, 0x0

    .line 1139
    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 1142
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1133
    :cond_16
    const/4 v8, 0x1

    goto :goto_7

    .line 1146
    :cond_17
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v10, 0x7f0a00ed

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1147
    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v10, 0x7f0a010c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1146
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1147
    const/4 v9, 0x0

    .line 1144
    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 1147
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1151
    :pswitch_2a
    new-instance v0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;

    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-direct {v0, v8}, Lcom/rookiestudio/perfectviewer/TAdjustDialog;-><init>(Landroid/content/Context;)V

    .line 1152
    .local v0, AdjustDialog:Lcom/rookiestudio/perfectviewer/TAdjustDialog;
    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->show()V

    goto/16 :goto_1

    .line 1155
    .end local v0           #AdjustDialog:Lcom/rookiestudio/perfectviewer/TAdjustDialog;
    :pswitch_2b
    sget-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->EnableImageSharpen:Z

    if-eqz v8, :cond_18

    const/4 v8, 0x0

    :goto_8
    sput-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->EnableImageSharpen:Z

    .line 1156
    const-string v8, "EnableImageSharpen"

    sget-boolean v9, Lcom/rookiestudio/perfectviewer/Config;->EnableImageSharpen:Z

    invoke-static {v8, v9}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;Z)V

    .line 1157
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainImageCache:Lcom/rookiestudio/perfectviewer/TImageCache;

    invoke-virtual {v8}, Lcom/rookiestudio/perfectviewer/TImageCache;->UpdateAllImage()V

    .line 1158
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/rookiestudio/perfectviewer/TViewer;->NeedDoClip:Z

    .line 1159
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v8}, Lcom/rookiestudio/perfectviewer/TViewer;->DoUpdate()V

    .line 1160
    sget-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->EnableImageSharpen:Z

    if-eqz v8, :cond_19

    .line 1163
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v10, 0x7f0a012f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1164
    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v10, 0x7f0a010b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1163
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1164
    const/4 v9, 0x0

    .line 1161
    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 1164
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1155
    :cond_18
    const/4 v8, 0x1

    goto :goto_8

    .line 1168
    :cond_19
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v10, 0x7f0a012f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1169
    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v10, 0x7f0a010c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1168
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1169
    const/4 v9, 0x0

    .line 1166
    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 1169
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1173
    :pswitch_2c
    sget-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->LockHorizontalMove:Z

    if-eqz v8, :cond_1a

    const/4 v8, 0x0

    :goto_9
    sput-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->LockHorizontalMove:Z

    .line 1174
    sget-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->LockHorizontalMove:Z

    if-eqz v8, :cond_2

    .line 1175
    const/4 v8, 0x0

    sput-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->LockVerticalMove:Z

    goto/16 :goto_1

    .line 1173
    :cond_1a
    const/4 v8, 0x1

    goto :goto_9

    .line 1179
    :pswitch_2d
    sget-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->LockVerticalMove:Z

    if-eqz v8, :cond_1b

    const/4 v8, 0x0

    :goto_a
    sput-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->LockVerticalMove:Z

    .line 1180
    sget-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->LockVerticalMove:Z

    if-eqz v8, :cond_2

    .line 1181
    const/4 v8, 0x0

    sput-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->LockHorizontalMove:Z

    goto/16 :goto_1

    .line 1179
    :cond_1b
    const/4 v8, 0x1

    goto :goto_a

    .line 1185
    :pswitch_2e
    new-instance v2, Lcom/rookiestudio/perfectviewer/TGotoPage;

    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-direct {v2, v8}, Lcom/rookiestudio/perfectviewer/TGotoPage;-><init>(Landroid/content/Context;)V

    .line 1186
    .local v2, GotoPage:Lcom/rookiestudio/perfectviewer/TGotoPage;
    invoke-virtual {v2}, Lcom/rookiestudio/perfectviewer/TGotoPage;->show()V

    goto/16 :goto_1

    .line 1189
    .end local v2           #GotoPage:Lcom/rookiestudio/perfectviewer/TGotoPage;
    :pswitch_2f
    invoke-static {p0}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->CreatePreferencesManagement(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 1192
    :pswitch_30
    sget-object v8, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget-object v5, v8, Lcom/rookiestudio/perfectviewer/TBitmap;->FileName:Ljava/lang/String;

    .line 1193
    .local v5, TempFileName:Ljava/lang/String;
    sget-object v8, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v6, v8, Lcom/rookiestudio/perfectviewer/TBitmap;->PageIndex:I

    .line 1194
    .local v6, TempFileOrder:I
    sget-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->EnableBorderDetect:Z

    if-eqz v8, :cond_1c

    const/4 v8, 0x0

    :goto_b
    sput-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->EnableBorderDetect:Z

    .line 1195
    const-string v8, "EnableBorderDetect"

    sget-boolean v9, Lcom/rookiestudio/perfectviewer/Config;->EnableBorderDetect:Z

    invoke-static {v8, v9}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;Z)V

    .line 1196
    sget-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->EnableBorderDetect:Z

    sget v9, Lcom/rookiestudio/perfectviewer/Config;->BorderOffset:I

    invoke-static {v8, v9}, Lcom/rookiestudio/perfectviewer/TBitmap;->SetBorderDetect(ZI)V

    .line 1197
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainImageCache:Lcom/rookiestudio/perfectviewer/TImageCache;

    invoke-virtual {v8}, Lcom/rookiestudio/perfectviewer/TImageCache;->DeleteAllCache()V

    .line 1198
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-virtual {v8, v5, v6}, Lcom/rookiestudio/perfectviewer/TViewerMain;->StartOpenFile(Ljava/lang/String;I)V

    .line 1199
    sget-boolean v8, Lcom/rookiestudio/perfectviewer/Config;->EnableBorderDetect:Z

    if-eqz v8, :cond_1d

    .line 1202
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v10, 0x7f0a013c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1203
    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v10, 0x7f0a010b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1202
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1203
    const/4 v9, 0x0

    .line 1200
    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 1203
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1194
    :cond_1c
    const/4 v8, 0x1

    goto :goto_b

    .line 1207
    :cond_1d
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v10, 0x7f0a013c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1208
    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v10, 0x7f0a010c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1207
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1208
    const/4 v9, 0x0

    .line 1205
    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 1208
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1212
    .end local v5           #TempFileName:Ljava/lang/String;
    .end local v6           #TempFileOrder:I
    :pswitch_31
    sget-object v8, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/rookiestudio/perfectviewer/TViewerMain;->EndApplication:Z

    .line 1213
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 793
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_19
        :pswitch_11
        :pswitch_17
        :pswitch_18
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_e
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_2b
        :pswitch_30
        :pswitch_31
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method private CancelLongPress()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->ShowMainMenuTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->ShowMainMenuTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->LongPressTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->LongPressTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->LongPressTimer:Ljava/util/Timer;

    .line 432
    :cond_1
    return-void
.end method

.method static synthetic access$1(Lcom/rookiestudio/perfectviewer/TViewerMain;)Ljava/util/Timer;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->LongPressTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$2(Lcom/rookiestudio/perfectviewer/TViewerMain;Ljava/util/Timer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->LongPressTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$3(Lcom/rookiestudio/perfectviewer/TViewerMain;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->LongPressShowMenu:Z

    return-void
.end method

.method private isViewIntent(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 1716
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1717
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isWallpaperIntent(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 1721
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1722
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SET_WALLPAPER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "point"
    .parameter "event"

    .prologue
    const/high16 v7, 0x4000

    const/4 v3, 0x0

    .line 410
    sget-boolean v2, Lcom/rookiestudio/perfectviewer/TViewerMain;->multiTouchSupported:Z

    if-eqz v2, :cond_0

    .line 411
    const/4 v0, 0x0

    .line 412
    .local v0, x:F
    const/4 v1, 0x0

    .line 414
    .local v1, y:F
    :try_start_0
    sget-object v2, Lcom/rookiestudio/perfectviewer/TViewerMain;->m_getX:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v2, Lcom/rookiestudio/perfectviewer/TViewerMain;->m_getX:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float v0, v3, v2

    .line 415
    sget-object v2, Lcom/rookiestudio/perfectviewer/TViewerMain;->m_getY:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v2, Lcom/rookiestudio/perfectviewer/TViewerMain;->m_getY:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-float v1, v3, v2

    .line 418
    :goto_0
    div-float v2, v0, v7

    div-float v3, v1, v7

    invoke-virtual {p1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 422
    .end local v0           #x:F
    .end local v1           #y:F
    :goto_1
    return-void

    .line 420
    :cond_0
    invoke-virtual {p1, v3, v3}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_1

    .line 416
    .restart local v0       #x:F
    .restart local v1       #y:F
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private spacing(Landroid/view/MotionEvent;)F
    .locals 8
    .parameter "event"

    .prologue
    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, Result:F
    sget-boolean v3, Lcom/rookiestudio/perfectviewer/TViewerMain;->multiTouchSupported:Z

    if-eqz v3, :cond_0

    .line 397
    const/4 v1, 0x0

    .line 398
    .local v1, x:F
    const/4 v2, 0x0

    .line 400
    .local v2, y:F
    :try_start_0
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewerMain;->m_getX:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewerMain;->m_getX:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float v1, v4, v3

    .line 401
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewerMain;->m_getY:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewerMain;->m_getY:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    sub-float v2, v4, v3

    .line 404
    :goto_0
    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    .line 406
    .end local v1           #x:F
    .end local v2           #y:F
    :cond_0
    return v0

    .line 402
    .restart local v1       #x:F
    .restart local v2       #y:F
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public AddBookmark()V
    .locals 4

    .prologue
    .line 1324
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    iget-object v1, v1, Lcom/rookiestudio/perfectviewer/TNavigater;->CurrentFileName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1337
    :cond_0
    :goto_0
    return-void

    .line 1327
    :cond_1
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TNavigater;->GetIndex()I

    move-result v0

    .line 1328
    .local v0, Index:I
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    iget-object v1, v1, Lcom/rookiestudio/perfectviewer/TNavigater;->CurrentFolderName:Ljava/lang/String;

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/Config;->FileIsArchive(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1329
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    iget-object v1, v1, Lcom/rookiestudio/perfectviewer/TNavigater;->CurrentFolderName:Ljava/lang/String;

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/Config;->FileIsPDF(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1330
    :cond_2
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    iget-object v1, v1, Lcom/rookiestudio/perfectviewer/TNavigater;->CurrentFolderName:Ljava/lang/String;

    .line 1331
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    .line 1330
    invoke-static {v1, v2, v3}, Lcom/rookiestudio/perfectviewer/Config;->AddBookmarkFile(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1335
    :goto_1
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const v2, 0x7f0a0087

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TViewerMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1336
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1333
    :cond_3
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    iget-object v1, v1, Lcom/rookiestudio/perfectviewer/TNavigater;->CurrentFileName:Ljava/lang/String;

    const-string v2, ""

    add-int/lit8 v3, v0, 0x1

    invoke-static {v1, v2, v3}, Lcom/rookiestudio/perfectviewer/Config;->AddBookmarkFile(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public AddFavorites()V
    .locals 5

    .prologue
    .line 1340
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    iget-object v3, v3, Lcom/rookiestudio/perfectviewer/TNavigater;->CurrentFileName:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1398
    :cond_0
    :goto_0
    return-void

    .line 1343
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1344
    .local v1, alert:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0a001f

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1345
    const v3, 0x7f0a0020

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1347
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1348
    .local v2, input:Landroid/widget/EditText;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1349
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1350
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    iget-object v0, v3, Lcom/rookiestudio/perfectviewer/TNavigater;->CurrentFileName:Ljava/lang/String;

    .line 1351
    .local v0, DefText:Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_3

    .line 1352
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1356
    :cond_2
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1357
    const v3, 0x104000a

    .line 1358
    new-instance v4, Lcom/rookiestudio/perfectviewer/TViewerMain$12;

    invoke-direct {v4, p0, v2}, Lcom/rookiestudio/perfectviewer/TViewerMain$12;-><init>(Lcom/rookiestudio/perfectviewer/TViewerMain;Landroid/widget/EditText;)V

    .line 1357
    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1391
    const/high16 v3, 0x104

    .line 1392
    new-instance v4, Lcom/rookiestudio/perfectviewer/TViewerMain$13;

    invoke-direct {v4, p0}, Lcom/rookiestudio/perfectviewer/TViewerMain$13;-><init>(Lcom/rookiestudio/perfectviewer/TViewerMain;)V

    .line 1391
    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1397
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1353
    :cond_3
    const-string v3, "\\"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 1354
    const-string v3, "\\"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public AskRestart()V
    .locals 4

    .prologue
    .line 1402
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1404
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1405
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1406
    const v2, 0x7f0a0076

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1407
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1409
    const v2, 0x104000a

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TViewerMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1410
    new-instance v3, Lcom/rookiestudio/perfectviewer/TViewerMain$14;

    invoke-direct {v3, p0}, Lcom/rookiestudio/perfectviewer/TViewerMain$14;-><init>(Lcom/rookiestudio/perfectviewer/TViewerMain;)V

    .line 1409
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1416
    const/high16 v2, 0x104

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TViewerMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1417
    new-instance v3, Lcom/rookiestudio/perfectviewer/TViewerMain$15;

    invoke-direct {v3, p0}, Lcom/rookiestudio/perfectviewer/TViewerMain$15;-><init>(Lcom/rookiestudio/perfectviewer/TViewerMain;)V

    .line 1416
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1422
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1423
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1424
    return-void
.end method

.method public CheckEndPinchZoom()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 617
    iget v2, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->GestureMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->GestureMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 618
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-boolean v2, v2, Lcom/rookiestudio/perfectviewer/TViewer;->ShowZoomFactor:Z

    if-eqz v2, :cond_1

    .line 619
    :cond_0
    iput v1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->GestureMode:I

    .line 620
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->PageFit:I

    .line 621
    .local v0, OldPageFit:I
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iput-boolean v1, v2, Lcom/rookiestudio/perfectviewer/TViewer;->ShowZoomFactor:Z

    .line 622
    const/4 v1, 0x4

    sput v1, Lcom/rookiestudio/perfectviewer/Config;->PageFit:I

    .line 623
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TViewer;->UpdateBitmap()V

    .line 624
    sput v0, Lcom/rookiestudio/perfectviewer/Config;->PageFit:I

    .line 626
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TViewer;->DoUpdate()V

    .line 627
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TViewer;->HideMessage()V

    .line 628
    const/4 v1, 0x1

    .line 630
    .end local v0           #OldPageFit:I
    :cond_1
    return v1
.end method

.method public CreateMainView()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 261
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    if-nez v1, :cond_0

    .line 262
    new-instance v1, Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-direct {v1, p0}, Lcom/rookiestudio/perfectviewer/TViewer;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    .line 263
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iput-object p0, v1, Lcom/rookiestudio/perfectviewer/TViewer;->Callback:Lcom/rookiestudio/baseclass/TViewerCallback;

    .line 264
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v1, p0}, Lcom/rookiestudio/perfectviewer/TViewer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 265
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 266
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 267
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 268
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v1, v0}, Lcom/rookiestudio/perfectviewer/TViewer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->MainLayout:Landroid/widget/FrameLayout;

    .line 271
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->MainLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->MainLayout:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 273
    sget v1, Lcom/rookiestudio/perfectviewer/Global;->AndroidSDKVersion:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 274
    new-instance v1, Lcom/rookiestudio/perfectviewer/TSystemUIHandler;

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-direct {v1, v2}, Lcom/rookiestudio/perfectviewer/TSystemUIHandler;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->SystemUIHandler:Lcom/rookiestudio/perfectviewer/TSystemUIHandler;

    .line 277
    .end local v0           #params:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public DoRequirePassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "SelectArchive"
    .parameter "SelectFileName"

    .prologue
    .line 1545
    :try_start_0
    new-instance v0, Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/rookiestudio/perfectviewer/TViewerMain$ArchivePasswordHandler;-><init>(Lcom/rookiestudio/perfectviewer/TViewerMain;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1548
    :goto_0
    return-void

    .line 1546
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public DoRestart(I)V
    .locals 7
    .parameter "RestartDelay"

    .prologue
    .line 1427
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    .line 1428
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    .line 1427
    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1430
    .local v0, intent:Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TViewerMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 1431
    .local v1, mgr:Landroid/app/AlarmManager;
    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    mul-int/lit16 v5, p1, 0x3e8

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1433
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->finish()V

    .line 1434
    return-void
.end method

.method public FileSelected(Ljava/lang/String;)V
    .locals 9
    .parameter "SelectFileName"

    .prologue
    const v8, 0x7f0a000b

    const/4 v7, 0x0

    .line 1551
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1611
    :cond_0
    :goto_0
    return-void

    .line 1554
    :cond_1
    invoke-static {p1}, Lcom/rookiestudio/perfectviewer/Config;->FileIsArchive(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1555
    invoke-static {p1}, Lcom/rookiestudio/perfectviewer/Config;->FileIsPDF(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1556
    :cond_2
    const-string v5, ""

    const-string v6, ""

    invoke-virtual {p0, p1, v5, v6}, Lcom/rookiestudio/perfectviewer/TViewerMain;->FileSelected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1558
    :cond_3
    const-string v3, ""

    .line 1559
    .local v3, TmpFolder:Ljava/lang/String;
    const-string v5, "smb://"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1563
    :try_start_0
    new-instance v1, Ljcifs/smb/SmbFile;

    invoke-direct {v1, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 1564
    .local v1, SelectFile:Ljcifs/smb/SmbFile;
    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1565
    sget-object v5, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget-object v6, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v7, 0x7f0a000b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1575
    .end local v1           #SelectFile:Ljcifs/smb/SmbFile;
    :catch_0
    move-exception v4

    .line 1576
    .local v4, e:Ljcifs/smb/SmbException;
    invoke-virtual {v4}, Ljcifs/smb/SmbException;->printStackTrace()V

    goto :goto_0

    .line 1568
    .end local v4           #e:Ljcifs/smb/SmbException;
    .restart local v1       #SelectFile:Ljcifs/smb/SmbFile;
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1569
    move-object v2, v1

    .line 1570
    .local v2, SelectFolder:Ljcifs/smb/SmbFile;
    const/4 v1, 0x0

    .line 1574
    :goto_1
    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->getPath()Ljava/lang/String;
    :try_end_1
    .catch Ljcifs/smb/SmbException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 1601
    .end local v1           #SelectFile:Ljcifs/smb/SmbFile;
    .end local v2           #SelectFolder:Ljcifs/smb/SmbFile;
    :goto_2
    new-instance v0, Lcom/rookiestudio/perfectviewer/TFileNavigater;

    invoke-direct {v0}, Lcom/rookiestudio/perfectviewer/TFileNavigater;-><init>()V

    .line 1602
    .local v0, NewNavigater:Lcom/rookiestudio/perfectviewer/TFileNavigater;
    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    .line 1603
    invoke-virtual {v0, v3, p1}, Lcom/rookiestudio/perfectviewer/TFileNavigater;->SetFolder(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TFileNavigater;->GetCount()I

    move-result v5

    if-nez v5, :cond_9

    .line 1605
    sget-object v5, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget-object v6, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v7, v7}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 1572
    .end local v0           #NewNavigater:Lcom/rookiestudio/perfectviewer/TFileNavigater;
    .restart local v1       #SelectFile:Ljcifs/smb/SmbFile;
    :cond_5
    :try_start_2
    new-instance v2, Ljcifs/smb/SmbFile;

    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljcifs/smb/SmbException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2

    .restart local v2       #SelectFolder:Ljcifs/smb/SmbFile;
    goto :goto_1

    .line 1578
    .end local v1           #SelectFile:Ljcifs/smb/SmbFile;
    .end local v2           #SelectFolder:Ljcifs/smb/SmbFile;
    :catch_1
    move-exception v4

    .line 1579
    .local v4, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v4}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1581
    .end local v4           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_2
    move-exception v4

    .line 1582
    .local v4, e:Ljava/net/MalformedURLException;
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 1587
    .end local v4           #e:Ljava/net/MalformedURLException;
    :cond_6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1588
    .local v1, SelectFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1589
    sget-object v5, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget-object v6, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v7, v7}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 1592
    :cond_7
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1593
    move-object v2, v1

    .line 1594
    .local v2, SelectFolder:Ljava/io/File;
    const/4 v1, 0x0

    .line 1598
    :goto_3
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1596
    .end local v2           #SelectFolder:Ljava/io/File;
    :cond_8
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2       #SelectFolder:Ljava/io/File;
    goto :goto_3

    .line 1608
    .end local v1           #SelectFile:Ljava/io/File;
    .end local v2           #SelectFolder:Ljava/io/File;
    .restart local v0       #NewNavigater:Lcom/rookiestudio/perfectviewer/TFileNavigater;
    :cond_9
    sput-object v3, Lcom/rookiestudio/perfectviewer/Config;->LastUseFolder:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public FileSelected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "SelectArchive"
    .parameter "SelectFileName"
    .parameter "Password"

    .prologue
    const v6, 0x7f0a000b

    const/4 v7, 0x0

    .line 1437
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1502
    :cond_0
    :goto_0
    return-void

    .line 1442
    :cond_1
    const-string v4, "smb://"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1445
    :try_start_0
    new-instance v1, Ljcifs/smb/SmbFile;

    invoke-direct {v1, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 1446
    .local v1, SelectFile:Ljcifs/smb/SmbFile;
    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1447
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget-object v5, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v6, 0x7f0a000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 1450
    .end local v1           #SelectFile:Ljcifs/smb/SmbFile;
    :catch_0
    move-exception v3

    .line 1451
    .local v3, e:Ljava/net/MalformedURLException;
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 1453
    .end local v3           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v3

    .line 1454
    .local v3, e:Ljcifs/smb/SmbException;
    invoke-virtual {v3}, Ljcifs/smb/SmbException;->printStackTrace()V

    goto :goto_0

    .line 1456
    .end local v3           #e:Ljcifs/smb/SmbException;
    :catch_2
    move-exception v3

    .line 1457
    .local v3, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1459
    .end local v3           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_3
    move-exception v3

    .line 1460
    .local v3, e:Ljava/lang/Exception;
    goto :goto_0

    .line 1463
    .end local v3           #e:Ljava/lang/Exception;
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1464
    .local v1, SelectFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1465
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget-object v5, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7, v7}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 1469
    .end local v1           #SelectFile:Ljava/io/File;
    :cond_3
    invoke-static {p1}, Lcom/rookiestudio/perfectviewer/Config;->FileIsPDF(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1470
    sget-boolean v4, Lcom/rookiestudio/perfectviewer/Config;->EnablePDF:Z

    if-nez v4, :cond_4

    .line 1471
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget-object v5, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v6, 0x7f0a0116

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7, v7}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 1474
    :cond_4
    new-instance v0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;

    invoke-direct {v0}, Lcom/rookiestudio/perfectviewer/TPDFNavigater;-><init>()V

    .line 1475
    .local v0, NewNavigater:Lcom/rookiestudio/perfectviewer/TPDFNavigater;
    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    .line 1477
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v2

    .line 1481
    .local v2, TmpFileName:I
    :goto_1
    invoke-virtual {v0, p1, v2}, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->SetFolder(Ljava/lang/String;I)V

    goto :goto_0

    .line 1478
    .end local v2           #TmpFileName:I
    :catch_4
    move-exception v3

    .line 1479
    .local v3, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    .restart local v2       #TmpFileName:I
    goto :goto_1

    .line 1483
    .end local v0           #NewNavigater:Lcom/rookiestudio/perfectviewer/TPDFNavigater;
    .end local v2           #TmpFileName:I
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :cond_5
    new-instance v0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;

    invoke-direct {v0}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;-><init>()V

    .line 1484
    .local v0, NewNavigater:Lcom/rookiestudio/perfectviewer/TArchiveNavigater;
    sput-object v0, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    .line 1486
    :try_start_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_5

    move-result v2

    .line 1490
    .restart local v2       #TmpFileName:I
    :goto_2
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->ArchivePasswordList:Lcom/rookiestudio/perfectviewer/TArchivePasswordList;

    invoke-virtual {v4, p1}, Lcom/rookiestudio/perfectviewer/TArchivePasswordList;->Find(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->CurrentPassword:Ljava/lang/String;

    .line 1491
    invoke-virtual {v0, p1, v2}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->SetFolder(Ljava/lang/String;I)Z

    .line 1492
    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->GetCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 1493
    iget-boolean v4, v0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->NeedPassword:Z

    if-eqz v4, :cond_6

    .line 1494
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v4}, Lcom/rookiestudio/perfectviewer/TViewer;->HideMessage()V

    .line 1495
    invoke-virtual {p0, p1, p2}, Lcom/rookiestudio/perfectviewer/TViewerMain;->DoRequirePassword(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1487
    .end local v2           #TmpFileName:I
    :catch_5
    move-exception v3

    .line 1488
    .restart local v3       #e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    .restart local v2       #TmpFileName:I
    goto :goto_2

    .line 1498
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :cond_6
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget-object v5, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xbb8

    invoke-virtual {v4, v5, v6, v7}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(Ljava/lang/String;IZ)V

    goto/16 :goto_0
.end method

.method public SetAsWallpaperCrop()V
    .locals 4

    .prologue
    .line 1223
    new-instance v0, Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;

    invoke-direct {v0, p0, p0}, Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;-><init>(Landroid/content/Context;Lcom/rookiestudio/perfectviewer/LongRunningActionCallback;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->LongRunningDispatcher:Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;

    .line 1224
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->LongRunningDispatcher:Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;

    new-instance v1, Lcom/rookiestudio/perfectviewer/TViewerMain$8;

    invoke-direct {v1, p0}, Lcom/rookiestudio/perfectviewer/TViewerMain$8;-><init>(Lcom/rookiestudio/perfectviewer/TViewerMain;)V

    .line 1245
    const v2, 0x7f0a0008

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TViewerMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1246
    const v3, 0x7f0a0009

    invoke-virtual {p0, v3}, Lcom/rookiestudio/perfectviewer/TViewerMain;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1224
    invoke-virtual {v0, v1, v2, v3}, Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;->startLongRunningAction(Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    return-void
.end method

.method public SetAsWallpaperCrop1()V
    .locals 4

    .prologue
    .line 1250
    new-instance v0, Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;

    invoke-direct {v0, p0, p0}, Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;-><init>(Landroid/content/Context;Lcom/rookiestudio/perfectviewer/LongRunningActionCallback;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->LongRunningDispatcher:Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;

    .line 1251
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->LongRunningDispatcher:Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;

    new-instance v1, Lcom/rookiestudio/perfectviewer/TViewerMain$9;

    invoke-direct {v1, p0}, Lcom/rookiestudio/perfectviewer/TViewerMain$9;-><init>(Lcom/rookiestudio/perfectviewer/TViewerMain;)V

    .line 1262
    const v2, 0x7f0a0077

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TViewerMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1263
    const v3, 0x7f0a0078

    invoke-virtual {p0, v3}, Lcom/rookiestudio/perfectviewer/TViewerMain;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1251
    invoke-virtual {v0, v1, v2, v3}, Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;->startLongRunningAction(Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    return-void
.end method

.method public SetAsWallpaperCrop2()V
    .locals 4

    .prologue
    .line 1267
    new-instance v0, Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;

    invoke-direct {v0, p0, p0}, Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;-><init>(Landroid/content/Context;Lcom/rookiestudio/perfectviewer/LongRunningActionCallback;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->LongRunningDispatcher:Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;

    .line 1268
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->LongRunningDispatcher:Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;

    .line 1269
    new-instance v1, Lcom/rookiestudio/perfectviewer/TViewerMain$10;

    invoke-direct {v1, p0}, Lcom/rookiestudio/perfectviewer/TViewerMain$10;-><init>(Lcom/rookiestudio/perfectviewer/TViewerMain;)V

    .line 1288
    const v2, 0x7f0a0077

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TViewerMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1289
    const v3, 0x7f0a0078

    invoke-virtual {p0, v3}, Lcom/rookiestudio/perfectviewer/TViewerMain;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1268
    invoke-virtual {v0, v1, v2, v3}, Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;->startLongRunningAction(Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    return-void
.end method

.method public SetAsWallpaperScreen()V
    .locals 4

    .prologue
    .line 1293
    new-instance v0, Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;

    invoke-direct {v0, p0, p0}, Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;-><init>(Landroid/content/Context;Lcom/rookiestudio/perfectviewer/LongRunningActionCallback;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->LongRunningDispatcher:Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;

    .line 1294
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->LongRunningDispatcher:Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;

    .line 1295
    new-instance v1, Lcom/rookiestudio/perfectviewer/TViewerMain$11;

    invoke-direct {v1, p0}, Lcom/rookiestudio/perfectviewer/TViewerMain$11;-><init>(Lcom/rookiestudio/perfectviewer/TViewerMain;)V

    .line 1319
    const v2, 0x7f0a0077

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TViewerMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1320
    const v3, 0x7f0a0078

    invoke-virtual {p0, v3}, Lcom/rookiestudio/perfectviewer/TViewerMain;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1294
    invoke-virtual {v0, v1, v2, v3}, Lcom/rookiestudio/perfectviewer/LongRunningActionDispatcher;->startLongRunningAction(Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    return-void
.end method

.method public native SetLowMemMode(I)V
.end method

.method public SetRegionFunction(I)V
    .locals 9
    .parameter "Region"

    .prologue
    const/4 v8, 0x1

    .line 634
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 635
    .local v3, alert:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0a006b

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 636
    const v6, 0x108009b

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 637
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 638
    .local v4, inflaterDl:Landroid/view/LayoutInflater;
    const v6, 0x7f030016

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 640
    .local v5, layout:Landroid/widget/LinearLayout;
    const v6, 0x7f0c004b

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 641
    .local v1, FunctionListListView:Landroid/widget/ListView;
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 642
    const v6, 0x109000f

    sget-object v7, Lcom/rookiestudio/perfectviewer/Config;->FunctionListStr:Ljava/util/List;

    .line 641
    invoke-direct {v0, p0, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 643
    .local v0, FunctionItems:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v6, 0x1090009

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 644
    invoke-static {p1}, Lcom/rookiestudio/perfectviewer/Config;->GetRegionFunction(I)I

    move-result v2

    .line 645
    .local v2, OldIndex:I
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 646
    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    .line 647
    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 648
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 649
    invoke-virtual {v1, v2, v8}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 650
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 651
    const v6, 0x104000a

    new-instance v7, Lcom/rookiestudio/perfectviewer/TViewerMain$2;

    invoke-direct {v7, p0, v1, p1}, Lcom/rookiestudio/perfectviewer/TViewerMain$2;-><init>(Lcom/rookiestudio/perfectviewer/TViewerMain;Landroid/widget/ListView;I)V

    invoke-virtual {v3, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 660
    const/high16 v6, 0x104

    new-instance v7, Lcom/rookiestudio/perfectviewer/TViewerMain$3;

    invoke-direct {v7, p0}, Lcom/rookiestudio/perfectviewer/TViewerMain$3;-><init>(Lcom/rookiestudio/perfectviewer/TViewerMain;)V

    invoke-virtual {v3, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 665
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 666
    return-void
.end method

.method public StartOpenFile(Ljava/lang/String;I)V
    .locals 1
    .parameter "FN"
    .parameter "FO"

    .prologue
    .line 1614
    new-instance v0, Lcom/rookiestudio/perfectviewer/TViewerMain$16;

    invoke-direct {v0, p0, p1, p2}, Lcom/rookiestudio/perfectviewer/TViewerMain$16;-><init>(Lcom/rookiestudio/perfectviewer/TViewerMain;Ljava/lang/String;I)V

    .line 1654
    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TViewerMain$16;->start()V

    .line 1668
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 236
    invoke-super {p0, p1}, Lcom/cooliris/media/MonitoredActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 237
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    if-eqz v0, :cond_0

    .line 238
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TViewer;->ConfigChanged()V

    .line 240
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/cooliris/media/MonitoredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/TStartup;->LibraryLoadded:Z

    if-nez v0, :cond_0

    .line 136
    invoke-static {p0}, Lcom/rookiestudio/perfectviewer/TStartup;->CheckNativeLibrary(Landroid/content/Context;)I

    .line 138
    :cond_0
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->UseLanguage:Ljava/lang/String;

    const-string v1, "**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->UseLanguage:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/rookiestudio/perfectviewer/TUtility;->setLocale(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    :cond_1
    const-string v0, "perfectviewer"

    const-string v1, "TViewerMain onCreate "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v0, "perfect_viewer_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->settings:Landroid/content/SharedPreferences;

    .line 152
    :try_start_0
    const-string v0, "jp.co.sharp.android.softguide.SoftGuideManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 153
    .local v10, sgManager:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v9, v0

    .line 154
    .local v9, paramstype:[Ljava/lang/Class;
    const-string v0, "setFullScreenMode"

    invoke-virtual {v10, v0, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->setFullScreenMode:Ljava/lang/reflect/Method;

    .line 155
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->setFullScreenMode:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->UseFullScreen:Z

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->setFullScreenMode:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 161
    .end local v9           #paramstype:[Ljava/lang/Class;
    .end local v10           #sgManager:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->requestWindowFeature(I)Z

    .line 163
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->UseFullScreen:Z

    if-eqz v0, :cond_3

    .line 164
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->getWindow()Landroid/view/Window;

    move-result-object v11

    .line 165
    .local v11, win:Landroid/view/Window;
    invoke-virtual {v11}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    .line 166
    .local v12, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 167
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 168
    invoke-virtual {v11, v12}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 170
    .end local v11           #win:Landroid/view/Window;
    .end local v12           #winParams:Landroid/view/WindowManager$LayoutParams;
    :cond_3
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->KeepScreenOn:Z

    if-eqz v0, :cond_4

    .line 171
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 173
    :cond_4
    sput-object p0, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    .line 174
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->LowMemoryMode:Z

    if-eqz v0, :cond_9

    .line 175
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->SetLowMemMode(I)V

    .line 179
    :goto_1
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->EnableColorAdjust:Z

    sget-wide v1, Lcom/rookiestudio/perfectviewer/Config;->ColorBrightness:D

    .line 180
    sget-wide v3, Lcom/rookiestudio/perfectviewer/Config;->ColorContrast:D

    sget-wide v5, Lcom/rookiestudio/perfectviewer/Config;->ColorGamma:D

    .line 179
    invoke-static/range {v0 .. v6}, Lcom/rookiestudio/perfectviewer/TBitmap;->SetColorAdjust(ZDDD)V

    .line 181
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->InvertImage:Z

    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TBitmap;->SetInvertImage(Z)V

    .line 182
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->EnableImageSharpen:Z

    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TBitmap;->SetSharpenImage(Z)V

    .line 183
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->EnableBorderDetect:Z

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->BorderOffset:I

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TBitmap;->SetBorderDetect(ZI)V

    .line 193
    const-string v0, "LastUseFolder"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/Config;->LoadSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rookiestudio/perfectviewer/Config;->LastUseFolder:Ljava/lang/String;

    .line 194
    const-string v0, "LastOpenFile"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/Config;->LoadSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rookiestudio/perfectviewer/Config;->LastOpenFile:Ljava/lang/String;

    .line 195
    const-string v8, ""

    .line 196
    .local v8, WMessage:Ljava/lang/String;
    sget-object v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->ViewFile:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 197
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->AutoLoadLastView:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->LastOpenFile:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 198
    const-string v0, "Running"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/Config;->LoadSetting(Ljava/lang/String;I)I

    move-result v7

    .line 199
    .local v7, Running:I
    if-nez v7, :cond_b

    .line 200
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->LastUseFolder:Ljava/lang/String;

    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/Config;->FileIsArchive(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 201
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->LastUseFolder:Ljava/lang/String;

    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/Config;->FileIsPDF(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 202
    :cond_5
    const/4 v0, 0x0

    sput v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->ViewFileOrder:I

    .line 204
    :try_start_1
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->LastOpenFile:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->ViewFileOrder:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 207
    :goto_2
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->LastUseFolder:Ljava/lang/String;

    sput-object v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->ViewFile:Ljava/lang/String;

    .line 219
    .end local v7           #Running:I
    :cond_6
    :goto_3
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->ScreenOrientation:I

    invoke-static {p0, v0}, Lcom/rookiestudio/perfectviewer/TUtility;->SetScreenOrientation(Landroid/app/Activity;I)V

    .line 220
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActivityFirstStart:Z

    if-eqz v0, :cond_7

    sget v0, Lcom/rookiestudio/perfectviewer/Global;->AndroidSDKVersion:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_7

    .line 221
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v1, 0x7f0a016e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 223
    :cond_7
    const-string v0, ""

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 224
    const v0, 0x7f0a0074

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 225
    const v1, 0x108009b

    .line 224
    invoke-static {p0, v0, v8, v1}, Lcom/rookiestudio/perfectviewer/TUtility;->MessageBox(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 232
    :cond_8
    return-void

    .line 177
    .end local v8           #WMessage:Ljava/lang/String;
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->SetLowMemMode(I)V

    goto/16 :goto_1

    .line 209
    .restart local v7       #Running:I
    .restart local v8       #WMessage:Ljava/lang/String;
    :cond_a
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->LastOpenFile:Ljava/lang/String;

    sput-object v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->ViewFile:Ljava/lang/String;

    .line 210
    const/4 v0, -0x1

    sput v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->ViewFileOrder:I

    goto :goto_3

    .line 212
    :cond_b
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->LastOpenFile:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 213
    const v0, 0x7f0a00ad

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 216
    .end local v7           #Running:I
    :cond_c
    const/4 v0, 0x0

    sput-object v0, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    goto :goto_3

    .line 205
    .restart local v7       #Running:I
    :catch_0
    move-exception v0

    goto :goto_2

    .line 158
    .end local v7           #Running:I
    .end local v8           #WMessage:Ljava/lang/String;
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 383
    const/16 v0, 0x20

    invoke-static {p0, v0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 340
    const-string v0, "perfectviewer"

    const-string v1, "TViewerMain onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    if-eqz v0, :cond_1

    .line 342
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TViewer;->Delete()V

    .line 343
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->MainLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->MainLayout:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 346
    :cond_0
    sput-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    .line 348
    :cond_1
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->NavigateBar:Lcom/rookiestudio/perfectviewer/TNavigateBar;

    if-eqz v0, :cond_3

    .line 349
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->MainLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 350
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->MainLayout:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->NavigateBar:Lcom/rookiestudio/perfectviewer/TNavigateBar;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 352
    :cond_2
    sput-object v2, Lcom/rookiestudio/perfectviewer/Global;->NavigateBar:Lcom/rookiestudio/perfectviewer/TNavigateBar;

    .line 353
    sput-boolean v3, Lcom/rookiestudio/perfectviewer/Config;->ShowQuickBar:Z

    .line 355
    :cond_3
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainMenu:Lcom/rookiestudio/perfectviewer/TMainMenu;

    if-eqz v0, :cond_5

    .line 356
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->MainLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    .line 357
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->MainLayout:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainMenu:Lcom/rookiestudio/perfectviewer/TMainMenu;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 359
    :cond_4
    sput-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainMenu:Lcom/rookiestudio/perfectviewer/TMainMenu;

    .line 360
    sput-boolean v3, Lcom/rookiestudio/perfectviewer/Config;->ShowMainMenu:Z

    .line 362
    :cond_5
    sput-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    .line 363
    sput-object v2, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    .line 364
    invoke-super {p0}, Lcom/cooliris/media/MonitoredActivity;->onDestroy()V

    .line 365
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 686
    const/4 v0, 0x0

    .line 687
    .local v0, Result:Z
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    if-nez v3, :cond_1

    .line 726
    :cond_0
    :goto_0
    return v2

    .line 690
    :cond_1
    sget-boolean v3, Lcom/rookiestudio/perfectviewer/Config;->TouchScreenSetup:Z

    if-nez v3, :cond_0

    .line 693
    sget-boolean v3, Lcom/rookiestudio/perfectviewer/Config;->PlayingSlideshow:Z

    if-eqz v3, :cond_2

    .line 694
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->MainSlideshow:Lcom/rookiestudio/perfectviewer/TSlideshow;

    invoke-virtual {v3}, Lcom/rookiestudio/perfectviewer/TSlideshow;->StopPlay()V

    .line 695
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    const v4, 0x7f0a00c1

    .line 696
    const/16 v5, 0xbb8

    .line 695
    invoke-virtual {v3, v4, v5}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(II)V

    goto :goto_0

    .line 699
    :cond_2
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-boolean v3, v3, Lcom/rookiestudio/perfectviewer/TViewer;->ChangingPage:Z

    if-nez v3, :cond_0

    .line 702
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->HardwareKeyList:Lcom/rookiestudio/perfectviewer/THardwareKeyList;

    invoke-virtual {v3, p1}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->FindKeyCode(I)Lcom/rookiestudio/baseclass/THardwareKey;

    move-result-object v1

    .line 703
    .local v1, aKey:Lcom/rookiestudio/baseclass/THardwareKey;
    const/4 v3, 0x4

    if-ne p1, v3, :cond_5

    .line 704
    sget-boolean v3, Lcom/rookiestudio/perfectviewer/Config;->ShowQuickBar:Z

    if-nez v3, :cond_0

    .line 706
    sget-boolean v3, Lcom/rookiestudio/perfectviewer/Config;->ShowMainMenu:Z

    if-nez v3, :cond_0

    .line 709
    if-eqz v1, :cond_0

    iget v3, v1, Lcom/rookiestudio/baseclass/THardwareKey;->Action:I

    if-eqz v3, :cond_0

    .line 710
    iget v2, v1, Lcom/rookiestudio/baseclass/THardwareKey;->Action:I

    invoke-static {p0, v2}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    move-result v0

    .line 723
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 724
    invoke-super {p0, p1, p2}, Lcom/cooliris/media/MonitoredActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_4
    move v2, v0

    .line 726
    goto :goto_0

    .line 717
    :cond_5
    if-eqz v1, :cond_3

    .line 718
    iget v2, v1, Lcom/rookiestudio/baseclass/THardwareKey;->Action:I

    if-eqz v2, :cond_3

    .line 719
    iget v2, v1, Lcom/rookiestudio/baseclass/THardwareKey;->Action:I

    invoke-static {p0, v2}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    move-result v0

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 731
    const/4 v0, 0x0

    .line 732
    .local v0, Result:Z
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->HardwareKeyList:Lcom/rookiestudio/perfectviewer/THardwareKeyList;

    invoke-virtual {v4, p1}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->FindKeyCode(I)Lcom/rookiestudio/baseclass/THardwareKey;

    move-result-object v1

    .line 733
    .local v1, aKey:Lcom/rookiestudio/baseclass/THardwareKey;
    const/4 v4, 0x4

    if-ne p1, v4, :cond_8

    .line 734
    sget-boolean v4, Lcom/rookiestudio/perfectviewer/Config;->ShowQuickBar:Z

    if-eqz v4, :cond_0

    .line 735
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->NavigateBar:Lcom/rookiestudio/perfectviewer/TNavigateBar;

    invoke-virtual {v2}, Lcom/rookiestudio/perfectviewer/TNavigateBar;->Hide()V

    .line 761
    :goto_0
    return v3

    .line 737
    :cond_0
    sget-boolean v4, Lcom/rookiestudio/perfectviewer/Config;->ShowMainMenu:Z

    if-eqz v4, :cond_1

    .line 738
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainMenu:Lcom/rookiestudio/perfectviewer/TMainMenu;

    invoke-virtual {v2}, Lcom/rookiestudio/perfectviewer/TMainMenu;->Hide()V

    goto :goto_0

    .line 740
    :cond_1
    sget-boolean v4, Lcom/rookiestudio/perfectviewer/Config;->TouchScreenSetup:Z

    if-eqz v4, :cond_3

    .line 741
    sget-boolean v4, Lcom/rookiestudio/perfectviewer/Config;->TouchScreenSetup:Z

    if-eqz v4, :cond_2

    :goto_1
    sput-boolean v2, Lcom/rookiestudio/perfectviewer/Config;->TouchScreenSetup:Z

    .line 742
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v2}, Lcom/rookiestudio/perfectviewer/TViewer;->DoUpdate()V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 741
    goto :goto_1

    .line 745
    :cond_3
    if-eqz v1, :cond_4

    iget v2, v1, Lcom/rookiestudio/baseclass/THardwareKey;->Action:I

    if-nez v2, :cond_5

    .line 746
    :cond_4
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->finish()V

    .line 747
    sget v2, Lcom/rookiestudio/perfectviewer/Global;->PreviousScreen:I

    if-ne v2, v3, :cond_7

    .line 748
    const/16 v2, 0x1d

    invoke-static {p0, v2}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    move-result v0

    .line 758
    :cond_5
    :goto_2
    if-nez v0, :cond_6

    .line 759
    invoke-super {p0, p1, p2}, Lcom/cooliris/media/MonitoredActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_6
    move v3, v0

    .line 761
    goto :goto_0

    .line 749
    :cond_7
    sget v2, Lcom/rookiestudio/perfectviewer/Global;->PreviousScreen:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 750
    const/16 v2, 0x10

    invoke-static {p0, v2}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    move-result v0

    goto :goto_2

    .line 754
    :cond_8
    if-eqz v1, :cond_5

    .line 755
    iget v4, v1, Lcom/rookiestudio/baseclass/THardwareKey;->Action:I

    if-eqz v4, :cond_9

    move v0, v3

    :goto_3
    goto :goto_2

    :cond_9
    move v0, v2

    goto :goto_3
.end method

.method public onLongRunningActionFinished(Ljava/lang/Long;Ljava/lang/Exception;)V
    .locals 8
    .parameter "result"
    .parameter "error"

    .prologue
    .line 1673
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 1674
    const v4, 0x7f0a0074

    invoke-virtual {p0, v4}, Lcom/rookiestudio/perfectviewer/TViewerMain;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1675
    const v5, 0x7f0a007a

    invoke-virtual {p0, v5}, Lcom/rookiestudio/perfectviewer/TViewerMain;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1676
    const v6, 0x108009b

    .line 1674
    invoke-static {p0, v4, v5, v6}, Lcom/rookiestudio/perfectviewer/TUtility;->MessageBox(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1713
    :cond_0
    :goto_0
    return-void

    .line 1677
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 1678
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/cooliris/media/CropImage;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1680
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/rookiestudio/perfectviewer/TViewerMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1711
    .end local v3           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1681
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0xa

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 1682
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const v5, 0x7f0a0097

    invoke-virtual {p0, v5}, Lcom/rookiestudio/perfectviewer/TViewerMain;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1683
    const/4 v6, 0x0

    .line 1682
    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 1683
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1684
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0xb

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 1685
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    .line 1686
    const v5, 0x7f0a0096

    invoke-virtual {p0, v5}, Lcom/rookiestudio/perfectviewer/TViewerMain;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 1685
    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 1686
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1687
    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    iget-object v4, v4, Lcom/rookiestudio/perfectviewer/TNavigater;->CurrentFolderName:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1688
    .local v0, CFolder:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1689
    const/4 v4, 0x0

    sput-object v4, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    .line 1690
    const/4 v4, 0x0

    sput-object v4, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    .line 1691
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v4}, Lcom/rookiestudio/perfectviewer/TViewer;->DoUpdate()V

    goto :goto_0

    .line 1693
    :cond_4
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    check-cast v2, Lcom/rookiestudio/perfectviewer/TFileNavigater;

    .line 1694
    .local v2, FileNavigator:Lcom/rookiestudio/perfectviewer/TFileNavigater;
    const/4 v1, 0x0

    .line 1695
    .local v1, FileData:Lcom/rookiestudio/baseclass/TFileData;
    invoke-virtual {v2}, Lcom/rookiestudio/perfectviewer/TFileNavigater;->GetCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 1696
    const/4 v4, 0x0

    sput-object v4, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    .line 1697
    const/4 v4, 0x0

    sput-object v4, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    .line 1698
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v4}, Lcom/rookiestudio/perfectviewer/TViewer;->DoUpdate()V

    goto/16 :goto_0

    .line 1700
    :cond_5
    invoke-virtual {v2}, Lcom/rookiestudio/perfectviewer/TFileNavigater;->GetIndex()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2}, Lcom/rookiestudio/perfectviewer/TFileNavigater;->GetCount()I

    move-result v5

    if-lt v4, v5, :cond_6

    .line 1701
    iget-object v4, v2, Lcom/rookiestudio/perfectviewer/TFileNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;

    .line 1702
    invoke-virtual {v2}, Lcom/rookiestudio/perfectviewer/TFileNavigater;->GetCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v5}, Lcom/rookiestudio/perfectviewer/TFileList;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v1

    .line 1707
    :goto_1
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->MainImageCache:Lcom/rookiestudio/perfectviewer/TImageCache;

    invoke-virtual {v4}, Lcom/rookiestudio/perfectviewer/TImageCache;->DeleteAllCache()V

    .line 1708
    iget-object v4, v1, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {p0, v4, v5}, Lcom/rookiestudio/perfectviewer/TViewerMain;->StartOpenFile(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1704
    :cond_6
    iget-object v4, v2, Lcom/rookiestudio/perfectviewer/TFileNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;

    .line 1705
    invoke-virtual {v2}, Lcom/rookiestudio/perfectviewer/TFileNavigater;->GetIndex()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lcom/rookiestudio/perfectviewer/TFileList;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1704
    goto :goto_1
.end method

.method public bridge synthetic onLongRunningActionFinished(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/rookiestudio/perfectviewer/TViewerMain;->onLongRunningActionFinished(Ljava/lang/Long;Ljava/lang/Exception;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 328
    const-string v0, "perfectviewer"

    const-string v1, "TViewerMain onLowMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-super {p0}, Lcom/cooliris/media/MonitoredActivity;->onLowMemory()V

    .line 330
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 369
    const-string v0, "perfectviewer"

    const-string v1, "TViewerMain onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-super {p0}, Lcom/cooliris/media/MonitoredActivity;->onPause()V

    .line 371
    const-string v0, "Running"

    invoke-static {v0, v2}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;I)V

    .line 372
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->settings:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Landroid/content/SharedPreferences;)V

    .line 373
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->PlayingSlideshow:Z

    if-eqz v0, :cond_0

    .line 374
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainSlideshow:Lcom/rookiestudio/perfectviewer/TSlideshow;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TSlideshow;->StopPlay()V

    .line 376
    :cond_0
    iget-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->EndApplication:Z

    if-eqz v0, :cond_1

    .line 377
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 379
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 286
    const-string v1, "perfectviewer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TViewerMain onResume "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/rookiestudio/perfectviewer/TUtility;->GetTotalMemory()I

    move-result v3

    div-int/lit16 v3, v3, 0x400

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-super {p0}, Lcom/cooliris/media/MonitoredActivity;->onResume()V

    .line 288
    sput v6, Lcom/rookiestudio/perfectviewer/Global;->CurrentScreen:I

    .line 289
    invoke-static {}, Lcom/rookiestudio/perfectviewer/TUtility;->GetTotalMemory()I

    move-result v1

    div-int/lit16 v1, v1, 0x400

    const/16 v2, 0x140

    if-ge v1, v2, :cond_0

    .line 290
    sput-boolean v6, Lcom/rookiestudio/perfectviewer/Config;->EnableCacheScaledImage:Z

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 296
    .local v0, aIntent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->isWallpaperIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 297
    sput-boolean v7, Lcom/rookiestudio/perfectviewer/Config;->SetWallpaperMode:Z

    .line 304
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->setFullScreenMode:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/rookiestudio/perfectviewer/Config;->UseFullScreen:Z

    if-eqz v1, :cond_1

    .line 305
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->setFullScreenMode:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :cond_1
    :goto_1
    sput-boolean v6, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActivityFirstStart:Z

    .line 311
    invoke-static {p0}, Lcom/rookiestudio/perfectviewer/TPerfectViewer;->FirstStartCheck(Landroid/app/Activity;)V

    .line 312
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->CreateMainView()V

    .line 318
    const-string v1, "Running"

    invoke-static {v1, v7}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;I)V

    .line 319
    sget-boolean v1, Lcom/rookiestudio/perfectviewer/Config;->EnableBrightnessControl:Z

    if-eqz v1, :cond_3

    .line 320
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->ScreenBrightness:I

    invoke-static {v1, v2}, Lcom/rookiestudio/perfectviewer/TUtility;->SetBacklightBrightness(Landroid/view/Window;I)V

    .line 324
    :goto_2
    return-void

    .line 298
    :cond_2
    invoke-direct {p0, v0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->isViewIntent(Landroid/content/Intent;)Z

    goto :goto_0

    .line 322
    :cond_3
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/rookiestudio/perfectviewer/TUtility;->SetBacklightBrightness(Landroid/view/Window;I)V

    goto :goto_2

    .line 307
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TViewerMain;->settings:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/Config;->LoadSetting(Landroid/content/SharedPreferences;)V

    .line 336
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 281
    invoke-super {p0}, Lcom/cooliris/media/MonitoredActivity;->onStop()V

    .line 282
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 18
    .parameter "v"
    .parameter "event"

    .prologue
    .line 435
    sget-boolean v14, Lcom/rookiestudio/perfectviewer/Config;->PlayingSlideshow:Z

    if-eqz v14, :cond_0

    .line 436
    const-string v14, "perfectviewer"

    const-string v15, "PlayingSlideshow"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    sget-object v14, Lcom/rookiestudio/perfectviewer/Global;->MainSlideshow:Lcom/rookiestudio/perfectviewer/TSlideshow;

    invoke-virtual {v14}, Lcom/rookiestudio/perfectviewer/TSlideshow;->StopPlay()V

    .line 438
    sget-object v14, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    const v15, 0x7f0a00c1

    .line 439
    const/16 v16, 0xbb8

    .line 438
    invoke-virtual/range {v14 .. v16}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(II)V

    .line 440
    const/4 v14, 0x1

    .line 613
    :goto_0
    return v14

    .line 442
    :cond_0
    sget-object v14, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    if-nez v14, :cond_1

    .line 443
    const-string v14, "perfectviewer"

    const-string v15, "MainView==null"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 v14, 0x1

    goto :goto_0

    .line 446
    :cond_1
    sget-object v14, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-boolean v14, v14, Lcom/rookiestudio/perfectviewer/TViewer;->ChangingPage:Z

    if-eqz v14, :cond_2

    .line 447
    const-string v14, "perfectviewer"

    const-string v15, "ChangingPage"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/4 v14, 0x1

    goto :goto_0

    .line 450
    :cond_2
    sget-boolean v14, Lcom/rookiestudio/perfectviewer/Config;->TouchScreenSetup:Z

    if-nez v14, :cond_4

    sget-boolean v14, Lcom/rookiestudio/perfectviewer/Config;->EnableFlingGesture:Z

    if-eqz v14, :cond_4

    .line 451
    sget-object v14, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-boolean v14, v14, Lcom/rookiestudio/perfectviewer/TViewer;->Fling:Z

    if-eqz v14, :cond_3

    .line 452
    sget-object v14, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-object v14, v14, Lcom/rookiestudio/perfectviewer/TViewer;->MainScroller:Landroid/widget/Scroller;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 454
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->MainGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 455
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->GestureMode:I

    .line 456
    const/4 v14, 0x1

    goto :goto_0

    .line 459
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    and-int/lit16 v2, v14, 0xff

    .line 466
    .local v2, MouseAction:I
    if-nez v2, :cond_6

    .line 468
    sget-object v14, Lcom/rookiestudio/perfectviewer/Global;->MainAnimator:Lcom/rookiestudio/perfectviewer/TAnimator;

    sget-object v15, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-object v15, v15, Lcom/rookiestudio/perfectviewer/TViewer;->MainPageSprite:Lcom/rookiestudio/baseclass/TSprite;

    invoke-virtual {v14, v15}, Lcom/rookiestudio/perfectviewer/TAnimator;->TestAnimateExist(Lcom/rookiestudio/baseclass/TSprite;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->StartPoint:Landroid/graphics/PointF;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/PointF;->set(FF)V

    .line 470
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->MiddlePoint:Landroid/graphics/PointF;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/PointF;->set(FF)V

    .line 471
    sget-boolean v14, Lcom/rookiestudio/perfectviewer/Config;->EnableLongTap:Z

    if-eqz v14, :cond_5

    .line 472
    new-instance v14, Ljava/util/Timer;

    invoke-direct {v14}, Ljava/util/Timer;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->LongPressTimer:Ljava/util/Timer;

    .line 473
    new-instance v14, Lcom/rookiestudio/perfectviewer/TViewerMain$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/rookiestudio/perfectviewer/TViewerMain$1;-><init>(Lcom/rookiestudio/perfectviewer/TViewerMain;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->ShowMainMenuTask:Ljava/util/TimerTask;

    .line 485
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->LongPressTimer:Ljava/util/Timer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->ShowMainMenuTask:Ljava/util/TimerTask;

    .line 486
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 485
    invoke-virtual/range {v14 .. v17}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 488
    :cond_5
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 489
    :cond_6
    sget v14, Lcom/rookiestudio/perfectviewer/TViewerMain;->ACTION_POINTER_DOWN:I

    if-ne v2, v14, :cond_a

    .line 490
    sget-boolean v14, Lcom/rookiestudio/perfectviewer/Config;->ShowQuickBar:Z

    if-nez v14, :cond_7

    sget-boolean v14, Lcom/rookiestudio/perfectviewer/Config;->TouchScreenSetup:Z

    if-nez v14, :cond_7

    .line 491
    sget-boolean v14, Lcom/rookiestudio/perfectviewer/Config;->EnableMultiTouch:Z

    if-nez v14, :cond_8

    .line 492
    :cond_7
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 494
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->spacing(Landroid/view/MotionEvent;)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->OldDist:F

    .line 495
    move-object/from16 v0, p0

    iget v14, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->OldDist:F

    const/high16 v15, 0x4120

    cmpl-float v14, v14, v15

    if-lez v14, :cond_9

    .line 496
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->MiddlePoint:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 497
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->GestureMode:I

    .line 499
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->CancelLongPress()V

    .line 500
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 501
    :cond_a
    sget v14, Lcom/rookiestudio/perfectviewer/TViewerMain;->ACTION_POINTER_UP:I

    if-ne v2, v14, :cond_c

    .line 502
    move-object/from16 v0, p0

    iget v14, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->GestureMode:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_b

    .line 503
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->GestureMode:I

    .line 506
    :cond_b
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 507
    :cond_c
    const/4 v14, 0x2

    if-ne v2, v14, :cond_1c

    .line 510
    sget-boolean v14, Lcom/rookiestudio/perfectviewer/Config;->TouchScreenSetup:Z

    if-eqz v14, :cond_d

    .line 511
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 513
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->CancelLongPress()V

    .line 514
    move-object/from16 v0, p0

    iget v14, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->GestureMode:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_e

    .line 515
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->MiddlePoint:Landroid/graphics/PointF;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/PointF;->set(FF)V

    .line 516
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 517
    :cond_e
    move-object/from16 v0, p0

    iget v14, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->GestureMode:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_13

    .line 518
    sget-object v14, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    if-eqz v14, :cond_f

    .line 519
    sget-object v14, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    iget-object v14, v14, Lcom/rookiestudio/perfectviewer/TNavigater;->CurrentFileName:Ljava/lang/String;

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 520
    :cond_f
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 522
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->spacing(Landroid/view/MotionEvent;)F

    move-result v10

    .line 523
    .local v10, newDist:F
    const/high16 v14, 0x4120

    cmpl-float v14, v10, v14

    if-lez v14, :cond_12

    .line 525
    move-object/from16 v0, p0

    iget v14, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->OldDist:F

    div-float v11, v10, v14

    .line 526
    .local v11, scale:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->MiddlePoint:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->MiddlePoint:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    mul-float/2addr v15, v11

    sub-float v4, v14, v15

    .line 527
    .local v4, NewX:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->MiddlePoint:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->MiddlePoint:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->y:F

    mul-float/2addr v15, v11

    sub-float v5, v14, v15

    .line 528
    .local v5, NewY:F
    new-instance v7, Lcom/rookiestudio/baseclass/TSizeFactor;

    invoke-direct {v7}, Lcom/rookiestudio/baseclass/TSizeFactor;-><init>()V

    .line 529
    .local v7, OldSizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;
    sget-object v14, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-object v14, v14, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v14, v14, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    iput v14, v7, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    .line 530
    sget-object v14, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-object v14, v14, Lcom/rookiestudio/perfectviewer/TViewer;->SizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;

    iget v14, v14, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    iput v14, v7, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    .line 531
    new-instance v3, Lcom/rookiestudio/baseclass/TSizeFactor;

    invoke-direct {v3}, Lcom/rookiestudio/baseclass/TSizeFactor;-><init>()V

    .line 532
    .local v3, NewSizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;
    sget-object v14, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v14, v11}, Lcom/rookiestudio/perfectviewer/TViewer;->CalcSizeFactor(F)F

    move-result v14

    iput v14, v3, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    .line 533
    iget v14, v3, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    iput v14, v3, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    .line 534
    iget v14, v7, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    const/high16 v15, 0x3f80

    cmpg-float v14, v14, v15

    if-gez v14, :cond_11

    iget v14, v3, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    const/high16 v15, 0x3f80

    cmpl-float v14, v14, v15

    if-lez v14, :cond_11

    .line 535
    const/high16 v14, 0x3f80

    iput v14, v3, Lcom/rookiestudio/baseclass/TSizeFactor;->WFactor:F

    .line 536
    const/high16 v14, 0x3f80

    iput v14, v3, Lcom/rookiestudio/baseclass/TSizeFactor;->HFactor:F

    .line 537
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->GestureMode:I

    .line 539
    :cond_11
    move-object/from16 v0, p0

    iput v10, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->OldDist:F

    .line 540
    sget v6, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    .line 541
    .local v6, OldResample:I
    const/4 v14, 0x0

    sput v14, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    .line 542
    sget-object v14, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/rookiestudio/perfectviewer/TViewer;->ShowZoomFactor:Z

    .line 543
    sget-object v14, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    float-to-int v15, v4

    float-to-int v0, v5

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v3, v15, v0}, Lcom/rookiestudio/perfectviewer/TViewer;->FastZoom(Lcom/rookiestudio/baseclass/TSizeFactor;II)V

    .line 544
    sget-object v14, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v14}, Lcom/rookiestudio/perfectviewer/TViewer;->DoUpdate()V

    .line 545
    sput v6, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    .line 547
    .end local v3           #NewSizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;
    .end local v4           #NewX:F
    .end local v5           #NewY:F
    .end local v6           #OldResample:I
    .end local v7           #OldSizeFactor:Lcom/rookiestudio/baseclass/TSizeFactor;
    .end local v11           #scale:F
    :cond_12
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 548
    .end local v10           #newDist:F
    :cond_13
    move-object/from16 v0, p0

    iget v14, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->GestureMode:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1a

    .line 549
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->MiddlePoint:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    sub-float/2addr v14, v15

    float-to-int v12, v14

    .line 550
    .local v12, xDiff:I
    sget-boolean v14, Lcom/rookiestudio/perfectviewer/Config;->LockVerticalMove:Z

    if-eqz v14, :cond_14

    .line 551
    const/4 v12, 0x0

    .line 553
    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->MiddlePoint:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->y:F

    sub-float/2addr v14, v15

    float-to-int v13, v14

    .line 554
    .local v13, yDiff:I
    sget-boolean v14, Lcom/rookiestudio/perfectviewer/Config;->LockHorizontalMove:Z

    if-eqz v14, :cond_15

    .line 555
    const/4 v13, 0x0

    .line 559
    :cond_15
    sget-boolean v14, Lcom/rookiestudio/perfectviewer/Config;->ShowQuickBar:Z

    if-eqz v14, :cond_16

    .line 560
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 562
    :cond_16
    sget-object v14, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    if-eqz v14, :cond_17

    .line 563
    sget-object v14, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    iget-object v14, v14, Lcom/rookiestudio/perfectviewer/TNavigater;->CurrentFileName:Ljava/lang/String;

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 564
    :cond_17
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 566
    :cond_18
    sget-object v14, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v14, v12, v13}, Lcom/rookiestudio/perfectviewer/TViewer;->SetPosition(II)V

    .line 567
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->MiddlePoint:Landroid/graphics/PointF;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/PointF;->set(FF)V

    .line 613
    .end local v12           #xDiff:I
    .end local v13           #yDiff:I
    :cond_19
    :goto_1
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 570
    :cond_1a
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->MiddlePoint:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    sub-float/2addr v14, v15

    float-to-int v12, v14

    .line 571
    .restart local v12       #xDiff:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->MiddlePoint:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->y:F

    sub-float/2addr v14, v15

    float-to-int v13, v14

    .line 572
    .restart local v13       #yDiff:I
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v14

    const/16 v15, 0x14

    if-gt v14, v15, :cond_1b

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v14

    const/16 v15, 0x14

    if-le v14, v15, :cond_19

    .line 573
    :cond_1b
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->GestureMode:I

    goto :goto_1

    .line 576
    .end local v12           #xDiff:I
    .end local v13           #yDiff:I
    :cond_1c
    const/4 v14, 0x1

    if-ne v2, v14, :cond_19

    .line 578
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->LongPressTimer:Ljava/util/Timer;

    if-eqz v14, :cond_1d

    .line 579
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->ShowMainMenuTask:Ljava/util/TimerTask;

    invoke-virtual {v14}, Ljava/util/TimerTask;->cancel()Z

    .line 580
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->LongPressTimer:Ljava/util/Timer;

    invoke-virtual {v14}, Ljava/util/Timer;->cancel()V

    .line 581
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->LongPressTimer:Ljava/util/Timer;

    .line 583
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->CheckEndPinchZoom()Z

    move-result v14

    if-eqz v14, :cond_1e

    .line 584
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 586
    :cond_1e
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->StartPoint:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    sub-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-int v12, v14

    .line 587
    .restart local v12       #xDiff:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->StartPoint:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->y:F

    sub-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-int v13, v14

    .line 588
    .restart local v13       #yDiff:I
    sget-boolean v14, Lcom/rookiestudio/perfectviewer/Config;->ShowQuickBar:Z

    if-eqz v14, :cond_1f

    .line 589
    sget-object v14, Lcom/rookiestudio/perfectviewer/Global;->NavigateBar:Lcom/rookiestudio/perfectviewer/TNavigateBar;

    invoke-virtual {v14}, Lcom/rookiestudio/perfectviewer/TNavigateBar;->Hide()V

    goto :goto_1

    .line 590
    :cond_1f
    sget-boolean v14, Lcom/rookiestudio/perfectviewer/Config;->ShowMainMenu:Z

    if-eqz v14, :cond_21

    .line 591
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->LongPressShowMenu:Z

    if-eqz v14, :cond_20

    .line 592
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->LongPressShowMenu:Z

    goto/16 :goto_1

    .line 594
    :cond_20
    sget-object v14, Lcom/rookiestudio/perfectviewer/Global;->MainMenu:Lcom/rookiestudio/perfectviewer/TMainMenu;

    invoke-virtual {v14}, Lcom/rookiestudio/perfectviewer/TMainMenu;->Hide()V

    goto/16 :goto_1

    .line 597
    :cond_21
    move-object/from16 v0, p0

    iget v14, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->GestureMode:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_22

    .line 598
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->GestureMode:I

    .line 599
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 601
    :cond_22
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v14, v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    float-to-int v15, v15

    invoke-static {v14, v15}, Lcom/rookiestudio/perfectviewer/Config;->CheckPointFunction(II)I

    move-result v8

    .line 603
    .local v8, Region:I
    invoke-static {v8}, Lcom/rookiestudio/perfectviewer/Config;->GetRegionFunction(I)I

    move-result v9

    .line 604
    .local v9, RegionFunction:I
    sget-boolean v14, Lcom/rookiestudio/perfectviewer/Config;->TouchScreenSetup:Z

    if-eqz v14, :cond_23

    .line 605
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/rookiestudio/perfectviewer/TViewerMain;->SetRegionFunction(I)V

    goto/16 :goto_1

    .line 607
    :cond_23
    sget-boolean v14, Lcom/rookiestudio/perfectviewer/Config;->EnableTouchZone:Z

    if-eqz v14, :cond_19

    .line 608
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto/16 :goto_1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/high16 v4, 0x4120

    const/4 v3, 0x1

    .line 670
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->PlayingSlideshow:Z

    if-eqz v0, :cond_1

    .line 671
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    const v1, 0x7f0a00c1

    .line 672
    const/16 v2, 0xbb8

    .line 671
    invoke-virtual {v0, v1, v2}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(II)V

    .line 673
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainSlideshow:Lcom/rookiestudio/perfectviewer/TSlideshow;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TSlideshow;->StopPlay()V

    .line 681
    :cond_0
    :goto_0
    return v3

    .line 676
    :cond_1
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->ShowQuickBar:Z

    if-nez v0, :cond_0

    .line 679
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 680
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 679
    invoke-virtual {v0, v1, v2}, Lcom/rookiestudio/perfectviewer/TViewer;->SetPosition(II)V

    goto :goto_0
.end method

.method public onViewerReady()V
    .locals 2

    .prologue
    .line 1826
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TViewer;->DoUpdate()V

    .line 1827
    sget-object v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->ViewFile:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1829
    sget-object v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->ViewFile:Ljava/lang/String;

    sget v1, Lcom/rookiestudio/perfectviewer/TViewerMain;->ViewFileOrder:I

    invoke-virtual {p0, v0, v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->StartOpenFile(Ljava/lang/String;I)V

    .line 1830
    const-string v0, ""

    sput-object v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->ViewFile:Ljava/lang/String;

    .line 1831
    const/4 v0, -0x1

    sput v0, Lcom/rookiestudio/perfectviewer/TViewerMain;->ViewFileOrder:I

    .line 1837
    :goto_0
    return-void

    .line 1832
    :cond_0
    sget-object v0, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    if-eqz v0, :cond_1

    .line 1833
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->PageFit:I

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewer;->SetPageFit(I)V

    goto :goto_0

    .line 1835
    :cond_1
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TViewer;->DoUpdate()V

    goto :goto_0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 244
    invoke-super {p0, p1}, Lcom/cooliris/media/MonitoredActivity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 245
    return-void
.end method
