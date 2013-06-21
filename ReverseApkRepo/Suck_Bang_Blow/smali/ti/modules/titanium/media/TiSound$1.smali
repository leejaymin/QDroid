.class Lti/modules/titanium/media/TiSound$1;
.super Ljava/util/TimerTask;
.source "TiSound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/media/TiSound;->startProgressTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/media/TiSound;


# direct methods
.method constructor <init>(Lti/modules/titanium/media/TiSound;)V
    .locals 0
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lti/modules/titanium/media/TiSound$1;->this$0:Lti/modules/titanium/media/TiSound;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-string v5, "progress"

    .line 474
    iget-object v3, p0, Lti/modules/titanium/media/TiSound$1;->this$0:Lti/modules/titanium/media/TiSound;

    iget-object v3, v3, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lti/modules/titanium/media/TiSound$1;->this$0:Lti/modules/titanium/media/TiSound;

    iget-object v3, v3, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 475
    iget-object v3, p0, Lti/modules/titanium/media/TiSound$1;->this$0:Lti/modules/titanium/media/TiSound;

    iget-object v3, v3, Lti/modules/titanium/media/TiSound;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    int-to-double v1, v3

    .line 476
    .local v1, position:D
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 477
    .local v0, event:Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "progress"

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    iget-object v3, p0, Lti/modules/titanium/media/TiSound$1;->this$0:Lti/modules/titanium/media/TiSound;

    iget-object v3, v3, Lti/modules/titanium/media/TiSound;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v4, "progress"

    invoke-virtual {v3, v5, v0}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 480
    .end local v0           #event:Lorg/appcelerator/kroll/KrollDict;
    .end local v1           #position:D
    :cond_0
    return-void
.end method
