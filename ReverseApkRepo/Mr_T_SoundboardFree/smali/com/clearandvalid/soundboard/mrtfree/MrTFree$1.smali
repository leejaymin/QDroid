.class Lcom/clearandvalid/soundboard/mrtfree/MrTFree$1;
.super Ljava/lang/Object;
.source "MrTFree.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearandvalid/soundboard/mrtfree/MrTFree;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearandvalid/soundboard/mrtfree/MrTFree;


# direct methods
.method constructor <init>(Lcom/clearandvalid/soundboard/mrtfree/MrTFree;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearandvalid/soundboard/mrtfree/MrTFree$1;->this$0:Lcom/clearandvalid/soundboard/mrtfree/MrTFree;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 156
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 158
    return-void
.end method
