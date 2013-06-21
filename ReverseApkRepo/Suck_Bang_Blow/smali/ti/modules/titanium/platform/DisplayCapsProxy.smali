.class public Lti/modules/titanium/platform/DisplayCapsProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "DisplayCapsProxy.java"


# instance fields
.field private final dm:Landroid/util/DisplayMetrics;

.field private softDisplay:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 1
    .parameter "tiContext"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 27
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    .line 28
    return-void
.end method

.method private getDisplay()Landroid/view/Display;
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->softDisplay:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->softDisplay:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Lti/modules/titanium/platform/DisplayCapsProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->softDisplay:Ljava/lang/ref/SoftReference;

    .line 34
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->softDisplay:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/Display;

    return-object p0
.end method


# virtual methods
.method public getDensity()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, "medium"

    .line 49
    iget-object v0, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    monitor-enter v0

    .line 50
    :try_start_0
    invoke-direct {p0}, Lti/modules/titanium/platform/DisplayCapsProxy;->getDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 51
    iget-object v1, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v1, :sswitch_data_0

    .line 61
    const-string v1, "medium"

    monitor-exit v0

    move-object v0, v3

    :goto_0
    return-object v0

    .line 53
    :sswitch_0
    const-string v1, "high"

    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    .line 55
    :sswitch_1
    const-string v1, "medium"

    monitor-exit v0

    move-object v0, v3

    goto :goto_0

    .line 57
    :sswitch_2
    const-string v1, "xhigh"

    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    .line 59
    :sswitch_3
    const-string v1, "low"

    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 51
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_3
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_0
        0x140 -> :sswitch_2
    .end sparse-switch
.end method

.method public getDpi()F
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    monitor-enter v0

    .line 69
    :try_start_0
    invoke-direct {p0}, Lti/modules/titanium/platform/DisplayCapsProxy;->getDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 70
    iget-object v1, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    monitor-exit v0

    return v1

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLogicalDensityFactor()F
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    monitor-enter v0

    .line 93
    :try_start_0
    invoke-direct {p0}, Lti/modules/titanium/platform/DisplayCapsProxy;->getDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 94
    iget-object v1, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    monitor-exit v0

    return v1

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlatformHeight()I
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lti/modules/titanium/platform/DisplayCapsProxy;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    return v0
.end method

.method public getPlatformWidth()I
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lti/modules/titanium/platform/DisplayCapsProxy;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method public getXdpi()F
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    monitor-enter v0

    .line 77
    :try_start_0
    invoke-direct {p0}, Lti/modules/titanium/platform/DisplayCapsProxy;->getDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 78
    iget-object v1, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    monitor-exit v0

    return v1

    .line 79
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getYdpi()F
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    monitor-enter v0

    .line 85
    :try_start_0
    invoke-direct {p0}, Lti/modules/titanium/platform/DisplayCapsProxy;->getDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 86
    iget-object v1, p0, Lti/modules/titanium/platform/DisplayCapsProxy;->dm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    monitor-exit v0

    return v1

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
