.class Lcom/fleapapa/helper/ItemMap$ItemOverlay$2;
.super Ljava/lang/Object;
.source "ItemMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemMap$ItemOverlay;->findRoute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fleapapa/helper/ItemMap$ItemOverlay;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemMap$ItemOverlay;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$2;->this$1:Lcom/fleapapa/helper/ItemMap$ItemOverlay;

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 525
    iget-object v0, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$2;->this$1:Lcom/fleapapa/helper/ItemMap$ItemOverlay;

    #getter for: Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;
    invoke-static {v0}, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->access$0(Lcom/fleapapa/helper/ItemMap$ItemOverlay;)Lcom/fleapapa/helper/ItemMap;

    move-result-object v0

    iput-boolean v2, v0, Lcom/fleapapa/helper/ItemMap;->routing:Z

    .line 526
    iget-object v0, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$2;->this$1:Lcom/fleapapa/helper/ItemMap$ItemOverlay;

    #getter for: Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;
    invoke-static {v0}, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->access$0(Lcom/fleapapa/helper/ItemMap$ItemOverlay;)Lcom/fleapapa/helper/ItemMap;

    move-result-object v0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->mview:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->invalidate()V

    .line 527
    iget-object v0, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$2;->this$1:Lcom/fleapapa/helper/ItemMap$ItemOverlay;

    #getter for: Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;
    invoke-static {v0}, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->access$0(Lcom/fleapapa/helper/ItemMap$ItemOverlay;)Lcom/fleapapa/helper/ItemMap;

    move-result-object v0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->draps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$2;->this$1:Lcom/fleapapa/helper/ItemMap$ItemOverlay;

    invoke-virtual {v0}, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->findRoute()V

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$2;->this$1:Lcom/fleapapa/helper/ItemMap$ItemOverlay;

    #getter for: Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;
    invoke-static {v0}, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->access$0(Lcom/fleapapa/helper/ItemMap$ItemOverlay;)Lcom/fleapapa/helper/ItemMap;

    move-result-object v0

    iget-boolean v0, v0, Lcom/fleapapa/helper/ItemMap;->dragging:Z

    if-eqz v0, :cond_2

    .line 533
    :cond_1
    :goto_0
    return-void

    .line 530
    :cond_2
    iget-object v0, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$2;->this$1:Lcom/fleapapa/helper/ItemMap$ItemOverlay;

    #getter for: Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;
    invoke-static {v0}, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->access$0(Lcom/fleapapa/helper/ItemMap$ItemOverlay;)Lcom/fleapapa/helper/ItemMap;

    move-result-object v0

    iget-boolean v0, v0, Lcom/fleapapa/helper/ItemMap;->routing:Z

    if-nez v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$2;->this$1:Lcom/fleapapa/helper/ItemMap$ItemOverlay;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$2;->this$1:Lcom/fleapapa/helper/ItemMap$ItemOverlay;

    #getter for: Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;
    invoke-static {v1}, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->access$0(Lcom/fleapapa/helper/ItemMap$ItemOverlay;)Lcom/fleapapa/helper/ItemMap;

    move-result-object v1

    iget-object v1, v1, Lcom/fleapapa/helper/ItemMap;->dragr:Lcom/fleapapa/helper/ItemRoute;

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->matchItems(Lcom/fleapapa/helper/ItemRoute;)V

    .line 532
    iget-object v0, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$2;->this$1:Lcom/fleapapa/helper/ItemMap$ItemOverlay;

    #getter for: Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;
    invoke-static {v0}, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->access$0(Lcom/fleapapa/helper/ItemMap$ItemOverlay;)Lcom/fleapapa/helper/ItemMap;

    move-result-object v0

    iput-boolean v2, v0, Lcom/fleapapa/helper/ItemMap;->dlocked:Z

    goto :goto_0
.end method
