.class Lti/modules/titanium/media/VideoPlayerProxy$1;
.super Landroid/os/ResultReceiver;
.source "VideoPlayerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/media/VideoPlayerProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/media/VideoPlayerProxy;


# direct methods
.method constructor <init>(Lti/modules/titanium/media/VideoPlayerProxy;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 79
    iput-object p1, p0, Lti/modules/titanium/media/VideoPlayerProxy$1;->this$0:Lti/modules/titanium/media/VideoPlayerProxy;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 83
    iget-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxy$1;->this$0:Lti/modules/titanium/media/VideoPlayerProxy;

    const-string v1, "messenger"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/os/Messenger;

    invoke-virtual {v0, p0}, Lti/modules/titanium/media/VideoPlayerProxy;->setActivityMessenger(Landroid/os/Messenger;)V

    .line 84
    invoke-static {}, Lti/modules/titanium/media/VideoPlayerProxy;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "VideoPlayerProxy"

    const-string v1, "TiVideoActivity messenger received. Releasing latch"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    return-void
.end method
