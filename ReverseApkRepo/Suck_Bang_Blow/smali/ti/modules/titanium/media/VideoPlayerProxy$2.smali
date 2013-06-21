.class Lti/modules/titanium/media/VideoPlayerProxy$2;
.super Ljava/lang/Object;
.source "VideoPlayerProxy.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/media/VideoPlayerProxy;->createControlHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/media/VideoPlayerProxy;


# direct methods
.method constructor <init>(Lti/modules/titanium/media/VideoPlayerProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lti/modules/titanium/media/VideoPlayerProxy$2;->this$0:Lti/modules/titanium/media/VideoPlayerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v1, "VideoPlayerProxy"

    .line 187
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 204
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 189
    :pswitch_0
    invoke-static {}, Lti/modules/titanium/media/VideoPlayerProxy;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const-string v0, "VideoPlayerProxy"

    const-string v0, "Video Loaded message received from TiVideoActivity"

    invoke-static {v1, v0}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxy$2;->this$0:Lti/modules/titanium/media/VideoPlayerProxy;

    const-string v1, "load"

    invoke-virtual {v0, v1, v3}, Lti/modules/titanium/media/VideoPlayerProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    move v0, v2

    .line 194
    goto :goto_0

    .line 197
    :pswitch_1
    invoke-static {}, Lti/modules/titanium/media/VideoPlayerProxy;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    const-string v0, "VideoPlayerProxy"

    const-string v0, "Video playback message received from TiVideoActivity"

    invoke-static {v1, v0}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/media/VideoPlayerProxy$2;->this$0:Lti/modules/titanium/media/VideoPlayerProxy;

    const-string v1, "complete"

    invoke-virtual {v0, v1, v3}, Lti/modules/titanium/media/VideoPlayerProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    move v0, v2

    .line 201
    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
