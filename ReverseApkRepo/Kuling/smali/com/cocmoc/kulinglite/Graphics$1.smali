.class Lcom/cocmoc/kulinglite/Graphics$1;
.super Landroid/os/Handler;
.source "Graphics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cocmoc/kulinglite/Graphics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cocmoc/kulinglite/Graphics;


# direct methods
.method constructor <init>(Lcom/cocmoc/kulinglite/Graphics;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cocmoc/kulinglite/Graphics$1;->this$0:Lcom/cocmoc/kulinglite/Graphics;

    .line 44
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Graphics$1;->this$0:Lcom/cocmoc/kulinglite/Graphics;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cocmoc/kulinglite/Graphics;->setProgressBarVisibility(Z)V

    .line 49
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Graphics$1;->this$0:Lcom/cocmoc/kulinglite/Graphics;

    #getter for: Lcom/cocmoc/kulinglite/Graphics;->image:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/cocmoc/kulinglite/Graphics;->access$0(Lcom/cocmoc/kulinglite/Graphics;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/cocmoc/kulinglite/Graphics$1;->this$0:Lcom/cocmoc/kulinglite/Graphics;

    iget-object v1, v1, Lcom/cocmoc/kulinglite/Graphics;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 50
    const-string v0, "Kuling"

    const-string v1, "Graphics: Handler, image.setImageBitmap(bm)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method
