.class Lcom/jellybus/fx/Activity_Main$5;
.super Ljava/lang/Object;
.source "Activity_Main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Main;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Main$5;->this$0:Lcom/jellybus/fx/Activity_Main;

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/high16 v3, 0x7f04

    const/4 v2, 0x0

    .line 622
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$5;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->empty_view:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main;->access$5(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 623
    sget-object v1, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$5;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->urDo:Lcom/jellybus/fx_sub/UndoRedo;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main;->access$6(Lcom/jellybus/fx/Activity_Main;)Lcom/jellybus/fx_sub/UndoRedo;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/jellybus/fx_sub/UndoRedo;->changeCurrentIndex(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 624
    sget v1, Lcom/jellybus/fx_sub/UndoRedo;->currentIndex:I

    sget-object v2, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 625
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$5;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->main_redo:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main;->access$8(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020119

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 626
    :cond_0
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$5;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->main_undo:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main;->access$7(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020204

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 627
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$5;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->main_undo_count:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main;->access$9(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main$5;->this$0:Lcom/jellybus/fx/Activity_Main;

    invoke-virtual {v2}, Lcom/jellybus/fx/Activity_Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 628
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$5;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->main_redo_count:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main;->access$10(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main$5;->this$0:Lcom/jellybus/fx/Activity_Main;

    invoke-virtual {v2}, Lcom/jellybus/fx/Activity_Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 629
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$5;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->main_redo_count:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main;->access$10(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main$5;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->count_index:[Ljava/lang/Integer;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Main;->access$11(Lcom/jellybus/fx/Activity_Main;)[Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sget v4, Lcom/jellybus/fx_sub/UndoRedo;->currentIndex:I

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 630
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$5;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->main_undo_count:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main;->access$9(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main$5;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->count_index:[Ljava/lang/Integer;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Main;->access$11(Lcom/jellybus/fx/Activity_Main;)[Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/jellybus/fx_sub/UndoRedo;->currentIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 633
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$5;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->toast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main;->access$12(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/Toast;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "Redo : "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    sget v4, Lcom/jellybus/fx_sub/UndoRedo;->currentIndex:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/UndoRedo$StateList;

    iget-object v1, v1, Lcom/jellybus/fx_sub/UndoRedo$StateList;->function:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 634
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$5;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->toast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main;->access$12(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 637
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$5;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->urDo:Lcom/jellybus/fx_sub/UndoRedo;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main;->access$6(Lcom/jellybus/fx/Activity_Main;)Lcom/jellybus/fx_sub/UndoRedo;

    move-result-object v1

    sget v2, Lcom/jellybus/fx_sub/UndoRedo;->currentIndex:I

    invoke-virtual {v1, v2}, Lcom/jellybus/fx_sub/UndoRedo;->getSize(I)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 638
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$5;->this$0:Lcom/jellybus/fx/Activity_Main;

    #calls: Lcom/jellybus/fx/Activity_Main;->removeBitmap()V
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main;->access$13(Lcom/jellybus/fx/Activity_Main;)V

    .line 639
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main$5;->this$0:Lcom/jellybus/fx/Activity_Main;

    sget-object v1, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    sget v3, Lcom/jellybus/fx_sub/UndoRedo;->currentIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/UndoRedo$StateList;

    iget-object v1, v1, Lcom/jellybus/fx_sub/UndoRedo$StateList;->path:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    #setter for: Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;
    invoke-static {v2, v1}, Lcom/jellybus/fx/Activity_Main;->access$14(Lcom/jellybus/fx/Activity_Main;Landroid/graphics/Bitmap;)V

    .line 640
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$5;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->image:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main;->access$1(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main$5;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Main;->access$0(Lcom/jellybus/fx/Activity_Main;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 643
    sget v1, Lcom/jellybus/fx_sub/PictureController;->flurry_redo_count:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/jellybus/fx_sub/PictureController;->flurry_redo_count:I

    .line 645
    .end local v0           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$5;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->empty_view:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main;->access$5(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 646
    return-void
.end method
