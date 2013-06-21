.class Lcom/ui/LapseIt/project/SoundTrackView$8;
.super Ljava/lang/Object;
.source "SoundTrackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/project/SoundTrackView;->readWave([S)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/project/SoundTrackView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/project/SoundTrackView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/project/SoundTrackView$8;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 426
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView$8;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    iget-object v1, p0, Lcom/ui/LapseIt/project/SoundTrackView$8;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->normalizedBuffer:[F
    invoke-static {v1}, Lcom/ui/LapseIt/project/SoundTrackView;->access$15(Lcom/ui/LapseIt/project/SoundTrackView;)[F

    move-result-object v1

    array-length v1, v1

    iget-object v2, p0, Lcom/ui/LapseIt/project/SoundTrackView$8;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->waveHeight:I
    invoke-static {v2}, Lcom/ui/LapseIt/project/SoundTrackView;->access$16(Lcom/ui/LapseIt/project/SoundTrackView;)I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ui/LapseIt/project/SoundTrackView;->drawSoundWave(III)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/ui/LapseIt/project/SoundTrackView;->access$17(Landroid/graphics/Bitmap;)V

    .line 427
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView$8;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->soundImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/ui/LapseIt/project/SoundTrackView;->access$18(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {}, Lcom/ui/LapseIt/project/SoundTrackView;->access$19()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 428
    return-void
.end method
