.class Lcom/fleapapa/helper/ItemList$29;
.super Ljava/lang/Thread;
.source "ItemList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemList;->setIcon(Lcom/fleapapa/helper/Item;Landroid/widget/ImageView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$item:Lcom/fleapapa/helper/Item;

.field private final synthetic val$purl:Ljava/lang/String;

.field private final synthetic val$runner:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/fleapapa/helper/Item;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "$anonymous0"
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p2, p0, Lcom/fleapapa/helper/ItemList$29;->val$item:Lcom/fleapapa/helper/Item;

    iput-object p3, p0, Lcom/fleapapa/helper/ItemList$29;->val$purl:Ljava/lang/String;

    iput-object p4, p0, Lcom/fleapapa/helper/ItemList$29;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/fleapapa/helper/ItemList$29;->val$runner:Ljava/lang/Runnable;

    .line 631
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 634
    :try_start_0
    iget-object v1, p0, Lcom/fleapapa/helper/ItemList$29;->val$item:Lcom/fleapapa/helper/Item;

    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/fleapapa/helper/ItemList$29;->val$purl:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "wth"

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/fleapapa/helper/Item;->icon:Landroid/graphics/drawable/Drawable;

    .line 635
    iget-object v1, p0, Lcom/fleapapa/helper/ItemList$29;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/fleapapa/helper/ItemList$29;->val$runner:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :goto_0
    return-void

    .line 637
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 638
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ItemList.setIcon: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fleapapa/helper/ItemList$29;->val$purl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
