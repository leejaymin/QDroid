.class Lcom/jellybus/fx/Activity_Main$4;
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
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Main$4;->this$0:Lcom/jellybus/fx/Activity_Main;

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/high16 v4, 0x7f04

    .line 584
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main$4;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->empty_view:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Main;->access$5(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 585
    sget-object v2, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main$4;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->urDo:Lcom/jellybus/fx_sub/UndoRedo;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Main;->access$6(Lcom/jellybus/fx/Activity_Main;)Lcom/jellybus/fx_sub/UndoRedo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/jellybus/fx_sub/UndoRedo;->changeCurrentIndex(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 586
    sget v2, Lcom/jellybus/fx_sub/UndoRedo;->currentIndex:I

    if-nez v2, :cond_0

    .line 587
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main$4;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->main_undo:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Main;->access$7(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020123

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 588
    :cond_0
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main$4;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->main_redo:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Main;->access$8(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020129

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 589
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main$4;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->main_undo_count:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Main;->access$9(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Main$4;->this$0:Lcom/jellybus/fx/Activity_Main;

    invoke-virtual {v3}, Lcom/jellybus/fx/Activity_Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 590
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main$4;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->main_redo_count:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Main;->access$10(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Main$4;->this$0:Lcom/jellybus/fx/Activity_Main;

    invoke-virtual {v3}, Lcom/jellybus/fx/Activity_Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 591
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main$4;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->main_undo_count:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Main;->access$9(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Main$4;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->count_index:[Ljava/lang/Integer;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Main;->access$11(Lcom/jellybus/fx/Activity_Main;)[Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/jellybus/fx_sub/UndoRedo;->currentIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 592
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main$4;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->main_redo_count:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Main;->access$10(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Main$4;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->count_index:[Ljava/lang/Integer;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Main;->access$11(Lcom/jellybus/fx/Activity_Main;)[Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sget v5, Lcom/jellybus/fx_sub/UndoRedo;->currentIndex:I

    sub-int/2addr v4, v5

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 595
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main$4;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->toast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Main;->access$12(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/Toast;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "Undo : "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    sget v5, Lcom/jellybus/fx_sub/UndoRedo;->currentIndex:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/UndoRedo$StateList;

    iget-object v2, v2, Lcom/jellybus/fx_sub/UndoRedo$StateList;->function:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 596
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main$4;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->toast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Main;->access$12(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 599
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main$4;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->urDo:Lcom/jellybus/fx_sub/UndoRedo;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Main;->access$6(Lcom/jellybus/fx/Activity_Main;)Lcom/jellybus/fx_sub/UndoRedo;

    move-result-object v2

    sget v3, Lcom/jellybus/fx_sub/UndoRedo;->currentIndex:I

    invoke-virtual {v2, v3}, Lcom/jellybus/fx_sub/UndoRedo;->getSize(I)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 600
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main$4;->this$0:Lcom/jellybus/fx/Activity_Main;

    #calls: Lcom/jellybus/fx/Activity_Main;->removeBitmap()V
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Main;->access$13(Lcom/jellybus/fx/Activity_Main;)V

    .line 601
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Main$4;->this$0:Lcom/jellybus/fx/Activity_Main;

    sget-object v2, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    sget v4, Lcom/jellybus/fx_sub/UndoRedo;->currentIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/UndoRedo$StateList;

    iget-object v2, v2, Lcom/jellybus/fx_sub/UndoRedo$StateList;->path:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;
    invoke-static {v3, v2}, Lcom/jellybus/fx/Activity_Main;->access$14(Lcom/jellybus/fx/Activity_Main;Landroid/graphics/Bitmap;)V

    .line 602
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main$4;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->image:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Main;->access$1(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Main$4;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Main;->access$0(Lcom/jellybus/fx/Activity_Main;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 605
    sget v2, Lcom/jellybus/fx_sub/PictureController;->flurry_undo_count:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/jellybus/fx_sub/PictureController;->flurry_undo_count:I

    .line 608
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    sget-object v2, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sget v3, Lcom/jellybus/fx_sub/UndoRedo;->currentIndex:I

    sub-int/2addr v2, v3

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    .line 609
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 610
    .local v0, flurry_value:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "RedoMax value"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    const-string v2, "RedoMax"

    invoke-static {v2, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 614
    .end local v0           #flurry_value:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main$4;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->empty_view:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Main;->access$5(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 615
    return-void
.end method
