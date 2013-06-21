.class Lcom/sphericbox/syb/processing/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic j:Lcom/sphericbox/syb/processing/g;

.field final synthetic k:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/sphericbox/syb/processing/g;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/sphericbox/syb/processing/b;->j:Lcom/sphericbox/syb/processing/g;

    iput-object p2, p0, Lcom/sphericbox/syb/processing/b;->k:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sphericbox/syb/processing/b;->j:Lcom/sphericbox/syb/processing/g;

    iget-object v0, v0, Lcom/sphericbox/syb/processing/g;->aI:Lcom/sphericbox/syb/processing/ProcessingActivity;

    #getter for: Lcom/sphericbox/syb/processing/ProcessingActivity;->az:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sphericbox/syb/processing/ProcessingActivity;->access$700(Lcom/sphericbox/syb/processing/ProcessingActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sphericbox/syb/processing/b;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 137
    return-void
.end method
