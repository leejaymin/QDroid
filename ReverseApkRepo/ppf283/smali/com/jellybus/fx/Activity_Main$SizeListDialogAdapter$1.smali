.class Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter$1;
.super Ljava/lang/Object;
.source "Activity_Main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter$1;->this$1:Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;

    iput p2, p0, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter$1;->val$position:I

    .line 2310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 2313
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter$1;->this$1:Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;

    #getter for: Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;->this$0:Lcom/jellybus/fx/Activity_Main;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;->access$0(Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;)Lcom/jellybus/fx/Activity_Main;

    move-result-object v1

    #getter for: Lcom/jellybus/fx/Activity_Main;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main;->access$47(Lcom/jellybus/fx/Activity_Main;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2314
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter$1;->this$1:Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;

    #getter for: Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;->this$0:Lcom/jellybus/fx/Activity_Main;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;->access$0(Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;)Lcom/jellybus/fx/Activity_Main;

    move-result-object v1

    #getter for: Lcom/jellybus/fx/Activity_Main;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main;->access$47(Lcom/jellybus/fx/Activity_Main;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 2316
    :cond_0
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter$1;->this$1:Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;

    #getter for: Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;->this$0:Lcom/jellybus/fx/Activity_Main;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;->access$0(Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;)Lcom/jellybus/fx/Activity_Main;

    move-result-object v1

    #getter for: Lcom/jellybus/fx/Activity_Main;->size:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main;->access$46(Lcom/jellybus/fx/Activity_Main;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sput v1, Lcom/jellybus/fx_sub/PictureController;->width:I

    .line 2317
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter$1;->this$1:Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;

    #getter for: Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;->this$0:Lcom/jellybus/fx/Activity_Main;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;->access$0(Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;)Lcom/jellybus/fx/Activity_Main;

    move-result-object v1

    #getter for: Lcom/jellybus/fx/Activity_Main;->size:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main;->access$46(Lcom/jellybus/fx/Activity_Main;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sput v1, Lcom/jellybus/fx_sub/PictureController;->height:I

    .line 2318
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter$1;->this$1:Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;

    #getter for: Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;->this$0:Lcom/jellybus/fx/Activity_Main;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;->access$0(Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;)Lcom/jellybus/fx/Activity_Main;

    move-result-object v1

    #getter for: Lcom/jellybus/fx/Activity_Main;->size:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main;->access$46(Lcom/jellybus/fx/Activity_Main;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sput v1, Lcom/jellybus/fx_sub/PictureController;->reset_width:I

    .line 2319
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter$1;->this$1:Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;

    #getter for: Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;->this$0:Lcom/jellybus/fx/Activity_Main;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;->access$0(Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;)Lcom/jellybus/fx/Activity_Main;

    move-result-object v1

    #getter for: Lcom/jellybus/fx/Activity_Main;->size:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main;->access$46(Lcom/jellybus/fx/Activity_Main;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sput v1, Lcom/jellybus/fx_sub/PictureController;->reset_height:I

    .line 2323
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2324
    .local v0, flurry_value:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Size value"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter$1;->val$position:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2325
    const-string v1, "Picture Size"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 2327
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter$1;->this$1:Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;

    #getter for: Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;->this$0:Lcom/jellybus/fx/Activity_Main;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;->access$0(Lcom/jellybus/fx/Activity_Main$SizeListDialogAdapter;)Lcom/jellybus/fx/Activity_Main;

    move-result-object v1

    #getter for: Lcom/jellybus/fx/Activity_Main;->bitmap_create_handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main;->access$48(Lcom/jellybus/fx/Activity_Main;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2328
    return-void
.end method
