.class Lti/modules/titanium/media/TiVideoActivity$3;
.super Ljava/lang/Object;
.source "TiVideoActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 106
    iput-object p1, p0, Lti/modules/titanium/media/TiVideoActivity$3;->this$0:Lti/modules/titanium/media/TiVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 110
    iget-object v0, p0, Lti/modules/titanium/media/TiVideoActivity$3;->this$0:Lti/modules/titanium/media/TiVideoActivity;

    const/16 v1, 0x65

    #calls: Lti/modules/titanium/media/TiVideoActivity;->sendProxyMessage(I)V
    invoke-static {v0, v1}, Lti/modules/titanium/media/TiVideoActivity;->access$200(Lti/modules/titanium/media/TiVideoActivity;I)V

    .line 111
    iget-object v0, p0, Lti/modules/titanium/media/TiVideoActivity$3;->this$0:Lti/modules/titanium/media/TiVideoActivity;

    const/4 v1, 0x0

    #setter for: Lti/modules/titanium/media/TiVideoActivity;->started:Z
    invoke-static {v0, v1}, Lti/modules/titanium/media/TiVideoActivity;->access$302(Lti/modules/titanium/media/TiVideoActivity;Z)Z

    .line 112
    return-void
.end method
