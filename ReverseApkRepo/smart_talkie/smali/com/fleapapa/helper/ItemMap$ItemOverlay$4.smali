.class Lcom/fleapapa/helper/ItemMap$ItemOverlay$4;
.super Ljava/lang/Object;
.source "ItemMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemMap$ItemOverlay;->matchItems(Lcom/fleapapa/helper/ItemRoute;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fleapapa/helper/ItemMap$ItemOverlay;

.field private final synthetic val$pdlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemMap$ItemOverlay;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$4;->this$1:Lcom/fleapapa/helper/ItemMap$ItemOverlay;

    iput-object p2, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$4;->val$pdlg:Landroid/app/ProgressDialog;

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 553
    iget-object v1, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$4;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 555
    :goto_0
    iget-object v1, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$4;->this$1:Lcom/fleapapa/helper/ItemMap$ItemOverlay;

    #getter for: Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;
    invoke-static {v1}, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->access$0(Lcom/fleapapa/helper/ItemMap$ItemOverlay;)Lcom/fleapapa/helper/ItemMap;

    move-result-object v1

    iget-object v1, v1, Lcom/fleapapa/helper/ItemMap;->mitems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget-object v2, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 560
    iget-object v1, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$4;->this$1:Lcom/fleapapa/helper/ItemMap$ItemOverlay;

    #getter for: Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;
    invoke-static {v1}, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->access$0(Lcom/fleapapa/helper/ItemMap$ItemOverlay;)Lcom/fleapapa/helper/ItemMap;

    move-result-object v1

    iget-object v1, v1, Lcom/fleapapa/helper/ItemMap;->mview:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->invalidate()V

    .line 561
    return-void

    .line 556
    :cond_0
    new-instance v0, Lcom/fleapapa/helper/ItemMap$MapItem;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$4;->this$1:Lcom/fleapapa/helper/ItemMap$ItemOverlay;

    #getter for: Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;
    invoke-static {v1}, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->access$0(Lcom/fleapapa/helper/ItemMap$ItemOverlay;)Lcom/fleapapa/helper/ItemMap;

    move-result-object v2

    sget-object v1, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v3, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$4;->this$1:Lcom/fleapapa/helper/ItemMap$ItemOverlay;

    #getter for: Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;
    invoke-static {v3}, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->access$0(Lcom/fleapapa/helper/ItemMap$ItemOverlay;)Lcom/fleapapa/helper/ItemMap;

    move-result-object v3

    iget-object v3, v3, Lcom/fleapapa/helper/ItemMap;->mitems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/helper/Item;

    invoke-direct {v0, v2, v1}, Lcom/fleapapa/helper/ItemMap$MapItem;-><init>(Lcom/fleapapa/helper/ItemMap;Lcom/fleapapa/helper/Item;)V

    .line 557
    .local v0, mit:Lcom/fleapapa/helper/ItemMap$MapItem;
    iget-object v1, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$4;->this$1:Lcom/fleapapa/helper/ItemMap$ItemOverlay;

    #getter for: Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;
    invoke-static {v1}, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->access$0(Lcom/fleapapa/helper/ItemMap$ItemOverlay;)Lcom/fleapapa/helper/ItemMap;

    move-result-object v1

    iget-object v1, v1, Lcom/fleapapa/helper/ItemMap;->mitems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    iget-object v1, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$4;->this$1:Lcom/fleapapa/helper/ItemMap$ItemOverlay;

    #getter for: Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;
    invoke-static {v1}, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->access$0(Lcom/fleapapa/helper/ItemMap$ItemOverlay;)Lcom/fleapapa/helper/ItemMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fleapapa/helper/ItemMap;->item2Scroll(Lcom/fleapapa/helper/ItemMap$MapItem;)V

    goto :goto_0
.end method
