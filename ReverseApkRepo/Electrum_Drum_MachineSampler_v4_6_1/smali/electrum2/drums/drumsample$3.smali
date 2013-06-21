.class Lelectrum2/drums/drumsample$3;
.super Ljava/lang/Object;
.source "drumsample.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/drumsample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/drumsample;


# direct methods
.method constructor <init>(Lelectrum2/drums/drumsample;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/drumsample$3;->this$0:Lelectrum2/drums/drumsample;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 265
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 267
    return-void
.end method
