.class Landroid/widget/TiVideoView4$5;
.super Ljava/lang/Object;
.source "TiVideoView4.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TiVideoView4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TiVideoView4;


# direct methods
.method constructor <init>(Landroid/widget/TiVideoView4;)V
    .locals 0
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Landroid/widget/TiVideoView4$5;->this$0:Landroid/widget/TiVideoView4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 430
    iget-object v0, p0, Landroid/widget/TiVideoView4$5;->this$0:Landroid/widget/TiVideoView4;

    #setter for: Landroid/widget/TiVideoView4;->mCurrentBufferPercentage:I
    invoke-static {v0, p2}, Landroid/widget/TiVideoView4;->access$1402(Landroid/widget/TiVideoView4;I)I

    .line 431
    return-void
.end method
