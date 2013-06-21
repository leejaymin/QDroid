.class Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication$1;
.super Ljava/lang/Object;
.source "FastBurstCameraApplication.java"

# interfaces
.implements Lcom/spritefish/camera/ExceptionReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "tag"
    .parameter "t"

    .prologue
    .line 78
    invoke-static {p1, p2}, Lcom/bugsense/trace/BugSenseHandler;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 80
    return-void
.end method
