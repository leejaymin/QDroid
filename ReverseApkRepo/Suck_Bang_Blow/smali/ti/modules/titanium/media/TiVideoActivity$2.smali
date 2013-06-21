.class Lti/modules/titanium/media/TiVideoActivity$2;
.super Ljava/lang/Object;
.source "TiVideoActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 98
    iput-object p1, p0, Lti/modules/titanium/media/TiVideoActivity$2;->this$0:Lti/modules/titanium/media/TiVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 103
    iget-object v0, p0, Lti/modules/titanium/media/TiVideoActivity$2;->this$0:Lti/modules/titanium/media/TiVideoActivity;

    const/16 v1, 0x64

    #calls: Lti/modules/titanium/media/TiVideoActivity;->sendProxyMessage(I)V
    invoke-static {v0, v1}, Lti/modules/titanium/media/TiVideoActivity;->access$200(Lti/modules/titanium/media/TiVideoActivity;I)V

    .line 104
    return-void
.end method
