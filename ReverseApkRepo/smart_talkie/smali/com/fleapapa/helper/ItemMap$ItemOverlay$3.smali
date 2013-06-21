.class Lcom/fleapapa/helper/ItemMap$ItemOverlay$3;
.super Ljava/lang/Thread;
.source "ItemMap.java"


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

.field private final synthetic val$done:Ljava/lang/Runnable;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemMap$ItemOverlay;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$3;->this$1:Lcom/fleapapa/helper/ItemMap$ItemOverlay;

    iput-object p3, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$3;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$3;->val$done:Ljava/lang/Runnable;

    .line 535
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 537
    iget-object v0, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$3;->this$1:Lcom/fleapapa/helper/ItemMap$ItemOverlay;

    #getter for: Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;
    invoke-static {v0}, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->access$0(Lcom/fleapapa/helper/ItemMap$ItemOverlay;)Lcom/fleapapa/helper/ItemMap;

    move-result-object v0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemMap;->waypts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$3;->this$1:Lcom/fleapapa/helper/ItemMap$ItemOverlay;

    #getter for: Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;
    invoke-static {v1}, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->access$0(Lcom/fleapapa/helper/ItemMap$ItemOverlay;)Lcom/fleapapa/helper/ItemMap;

    move-result-object v1

    iget-object v1, v1, Lcom/fleapapa/helper/ItemMap;->waypts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/maps/GeoPoint;

    .line 538
    .local v5, wpts:[Lcom/google/android/maps/GeoPoint;
    iget-object v0, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$3;->this$1:Lcom/fleapapa/helper/ItemMap$ItemOverlay;

    #getter for: Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;
    invoke-static {v0}, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->access$0(Lcom/fleapapa/helper/ItemMap$ItemOverlay;)Lcom/fleapapa/helper/ItemMap;

    move-result-object v6

    new-instance v0, Lcom/fleapapa/helper/ItemRoute;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$3;->this$1:Lcom/fleapapa/helper/ItemMap$ItemOverlay;

    #getter for: Lcom/fleapapa/helper/ItemMap$ItemOverlay;->this$0:Lcom/fleapapa/helper/ItemMap;
    invoke-static {v1}, Lcom/fleapapa/helper/ItemMap$ItemOverlay;->access$0(Lcom/fleapapa/helper/ItemMap$ItemOverlay;)Lcom/fleapapa/helper/ItemMap;

    move-result-object v1

    sget v2, Lcom/fleapapa/helper/ItemRoute;->mdist:I

    sget-object v3, Lcom/fleapapa/helper/ItemList;->from:Ljava/lang/String;

    sget-object v4, Lcom/fleapapa/helper/ItemList;->to:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/fleapapa/helper/ItemRoute;-><init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;[Lcom/google/android/maps/GeoPoint;)V

    iput-object v0, v6, Lcom/fleapapa/helper/ItemMap;->dragr:Lcom/fleapapa/helper/ItemRoute;

    .line 539
    iget-object v0, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$3;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$3;->val$done:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 540
    return-void
.end method
