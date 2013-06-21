.class Lcom/fleapapa/helper/ItemList$24;
.super Ljava/lang/Thread;
.source "ItemList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemList;->match1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/ItemList;

.field private final synthetic val$err:Ljava/lang/Runnable;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$ok:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemList;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemList$24;->this$0:Lcom/fleapapa/helper/ItemList;

    iput-object p3, p0, Lcom/fleapapa/helper/ItemList$24;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/fleapapa/helper/ItemList$24;->val$err:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/fleapapa/helper/ItemList$24;->val$ok:Ljava/lang/Runnable;

    .line 538
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 540
    new-instance v0, Lcom/fleapapa/helper/ItemRoute;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemList$24;->this$0:Lcom/fleapapa/helper/ItemList;

    iget-object v2, p0, Lcom/fleapapa/helper/ItemList$24;->this$0:Lcom/fleapapa/helper/ItemList;

    iget-object v2, v2, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget v2, v2, Lcom/fleapapa/helper/Category;->dist:I

    sget-object v3, Lcom/fleapapa/helper/ItemList;->from:Ljava/lang/String;

    sget-object v4, Lcom/fleapapa/helper/ItemList;->to:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fleapapa/helper/ItemRoute;-><init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/fleapapa/helper/ItemList;->route:Lcom/fleapapa/helper/ItemRoute;

    .line 541
    iget-object v0, p0, Lcom/fleapapa/helper/ItemList$24;->val$handler:Landroid/os/Handler;

    sget-object v1, Lcom/fleapapa/helper/ItemList;->route:Lcom/fleapapa/helper/ItemRoute;

    iget-object v1, v1, Lcom/fleapapa/helper/ItemRoute;->points:[Lcom/google/android/maps/GeoPoint;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/fleapapa/helper/ItemList$24;->val$err:Ljava/lang/Runnable;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 542
    sget-object v0, Lcom/fleapapa/helper/ItemList;->route:Lcom/fleapapa/helper/ItemRoute;

    iget-object v0, v0, Lcom/fleapapa/helper/ItemRoute;->points:[Lcom/google/android/maps/GeoPoint;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/fleapapa/helper/ItemList;->route:Lcom/fleapapa/helper/ItemRoute;

    .line 543
    :cond_0
    return-void

    .line 541
    :cond_1
    iget-object v1, p0, Lcom/fleapapa/helper/ItemList$24;->val$ok:Ljava/lang/Runnable;

    goto :goto_0
.end method
