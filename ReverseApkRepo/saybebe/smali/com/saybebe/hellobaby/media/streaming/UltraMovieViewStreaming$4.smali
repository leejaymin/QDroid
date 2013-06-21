.class Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$4;
.super Ljava/lang/Object;
.source "UltraMovieViewStreaming.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;


# direct methods
.method constructor <init>(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$4;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 222
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    .line 223
    .local v0, view:Landroid/widget/ImageView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 224
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v2, -0x6656

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 228
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 225
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 226
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method
