.class Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails$1;
.super Ljava/lang/Object;
.source "TrimWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails;

.field private final synthetic val$bm:Landroid/graphics/Bitmap;

.field private final synthetic val$thumbParams:Landroid/widget/LinearLayout$LayoutParams;

.field private final synthetic val$thumbSize:I

.field private final synthetic val$thumbSizeMargin:I

.field private final synthetic val$thumbsContainer:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails;Landroid/widget/LinearLayout;IILandroid/graphics/Bitmap;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails$1;->this$1:Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails;

    iput-object p2, p0, Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails$1;->val$thumbsContainer:Landroid/widget/LinearLayout;

    iput p3, p0, Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails$1;->val$thumbSize:I

    iput p4, p0, Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails$1;->val$thumbSizeMargin:I

    iput-object p5, p0, Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails$1;->val$bm:Landroid/graphics/Bitmap;

    iput-object p6, p0, Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails$1;->val$thumbParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, -0x2

    .line 282
    iget-object v2, p0, Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails$1;->val$thumbsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 283
    iget-object v2, p0, Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails$1;->val$thumbsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    .line 284
    .local v0, containerWidth:I
    int-to-double v2, v0

    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->access$7()D

    move-result-wide v4

    iget v6, p0, Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails$1;->val$thumbSize:I

    iget v7, p0, Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails$1;->val$thumbSizeMargin:I

    add-int/2addr v6, v7

    int-to-double v6, v6

    sub-double/2addr v4, v6

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 285
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails$1;->this$1:Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails;

    #getter for: Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails;->this$0:Lcom/ui/LapseIt/project/TrimWidget;
    invoke-static {v2}, Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails;->access$0(Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails;)Lcom/ui/LapseIt/project/TrimWidget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ui/LapseIt/project/TrimWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 286
    .local v1, thumb:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails$1;->val$bm:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 287
    iget-object v2, p0, Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails$1;->val$thumbsContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/ui/LapseIt/project/TrimWidget$SetupThumbnails$1;->val$thumbParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    .end local v1           #thumb:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method
