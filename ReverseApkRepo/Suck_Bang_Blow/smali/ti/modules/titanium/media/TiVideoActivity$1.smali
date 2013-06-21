.class Lti/modules/titanium/media/TiVideoActivity$1;
.super Ljava/lang/Object;
.source "TiVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/media/TiVideoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/media/TiVideoActivity;


# direct methods
.method constructor <init>(Lti/modules/titanium/media/TiVideoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lti/modules/titanium/media/TiVideoActivity$1;->this$0:Lti/modules/titanium/media/TiVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const-string v2, "TiVideoActivity"

    .line 79
    const-string v0, "TiVideoActivity"

    const-string v0, "Setting URI"

    invoke-static {v2, v0}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lti/modules/titanium/media/TiVideoActivity$1;->this$0:Lti/modules/titanium/media/TiVideoActivity;

    #getter for: Lti/modules/titanium/media/TiVideoActivity;->videoView:Landroid/widget/TiVideoView4;
    invoke-static {v0}, Lti/modules/titanium/media/TiVideoActivity;->access$100(Lti/modules/titanium/media/TiVideoActivity;)Landroid/widget/TiVideoView4;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/media/TiVideoActivity$1;->this$0:Lti/modules/titanium/media/TiVideoActivity;

    #getter for: Lti/modules/titanium/media/TiVideoActivity;->contentUrl:Ljava/lang/String;
    invoke-static {v1}, Lti/modules/titanium/media/TiVideoActivity;->access$000(Lti/modules/titanium/media/TiVideoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TiVideoView4;->setVideoURI(Landroid/net/Uri;)V

    .line 81
    iget-object v0, p0, Lti/modules/titanium/media/TiVideoActivity$1;->this$0:Lti/modules/titanium/media/TiVideoActivity;

    #getter for: Lti/modules/titanium/media/TiVideoActivity;->videoView:Landroid/widget/TiVideoView4;
    invoke-static {v0}, Lti/modules/titanium/media/TiVideoActivity;->access$100(Lti/modules/titanium/media/TiVideoActivity;)Landroid/widget/TiVideoView4;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TiVideoView4;->start()V

    .line 82
    const-string v0, "TiVideoActivity"

    const-string v0, "URI Set, start called."

    invoke-static {v2, v0}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method
