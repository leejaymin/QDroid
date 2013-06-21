.class Lcom/fleapapa/helper/ItemMap$2;
.super Ljava/lang/Object;
.source "ItemMap.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemMap;->item2Scroll(Lcom/fleapapa/helper/ItemMap$MapItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/ItemMap;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemMap;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemMap$2;->this$0:Lcom/fleapapa/helper/ItemMap;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/ItemMap$MapItem;

    .line 205
    .local v0, mit:Lcom/fleapapa/helper/ItemMap$MapItem;
    iget-object v1, p0, Lcom/fleapapa/helper/ItemMap$2;->this$0:Lcom/fleapapa/helper/ItemMap;

    iget-object v1, v1, Lcom/fleapapa/helper/ItemMap;->pops:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/fleapapa/helper/ItemMap$2;->this$0:Lcom/fleapapa/helper/ItemMap;

    iget-object v1, v1, Lcom/fleapapa/helper/ItemMap;->pops:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 207
    iget-object v1, p0, Lcom/fleapapa/helper/ItemMap$2;->this$0:Lcom/fleapapa/helper/ItemMap;

    iget-object v1, v1, Lcom/fleapapa/helper/ItemMap;->pops:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v1, p0, Lcom/fleapapa/helper/ItemMap$2;->this$0:Lcom/fleapapa/helper/ItemMap;

    iget-object v1, v1, Lcom/fleapapa/helper/ItemMap;->mview:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->invalidate()V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/fleapapa/helper/ItemMap$2;->this$0:Lcom/fleapapa/helper/ItemMap;

    iget-boolean v1, v1, Lcom/fleapapa/helper/ItemMap;->fromMap:Z

    if-nez v1, :cond_0

    .line 214
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->viewed:Z

    .line 215
    iget-object v1, p0, Lcom/fleapapa/helper/ItemMap$2;->this$0:Lcom/fleapapa/helper/ItemMap;

    iget-object v2, v0, Lcom/fleapapa/helper/ItemMap$MapItem;->item:Lcom/fleapapa/helper/Item;

    iget v2, v2, Lcom/fleapapa/helper/Item;->iid:I

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/ItemMap;->setResult(I)V

    .line 216
    iget-object v1, p0, Lcom/fleapapa/helper/ItemMap$2;->this$0:Lcom/fleapapa/helper/ItemMap;

    invoke-virtual {v1}, Lcom/fleapapa/helper/ItemMap;->finish()V

    goto :goto_0
.end method
