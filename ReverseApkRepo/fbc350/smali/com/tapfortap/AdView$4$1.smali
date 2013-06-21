.class Lcom/tapfortap/AdView$4$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapfortap/AdView$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tapfortap/AdView$4;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/tapfortap/AdView$4;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/tapfortap/AdView$4$1;->this$1:Lcom/tapfortap/AdView$4;

    iput-object p2, p0, Lcom/tapfortap/AdView$4$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/tapfortap/AdView$4$1;->this$1:Lcom/tapfortap/AdView$4;

    iget-object v0, v0, Lcom/tapfortap/AdView$4;->this$0:Lcom/tapfortap/AdView;

    #getter for: Lcom/tapfortap/AdView;->adButtons:Ljava/util/List;
    invoke-static {v0}, Lcom/tapfortap/AdView;->access$600(Lcom/tapfortap/AdView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tapfortap/AdView$4$1;->this$1:Lcom/tapfortap/AdView$4;

    iget v1, v1, Lcom/tapfortap/AdView$4;->val$index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tapfortap/AdView$4$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 248
    return-void
.end method
