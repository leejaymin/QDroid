.class Lcom/fleapapa/helper/CallPapa$7;
.super Ljava/lang/Object;
.source "CallPapa.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallPapa;->play_clip(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "player"

    .prologue
    .line 275
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 276
    return-void
.end method
