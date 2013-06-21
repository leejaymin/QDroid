.class Lcom/fleapapa/helper/ItemList$25;
.super Ljava/lang/Object;
.source "ItemList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemList;->match2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/ItemList;

.field private final synthetic val$pdlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemList;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemList$25;->this$0:Lcom/fleapapa/helper/ItemList;

    iput-object p2, p0, Lcom/fleapapa/helper/ItemList$25;->val$pdlg:Landroid/app/ProgressDialog;

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 551
    iget-object v0, p0, Lcom/fleapapa/helper/ItemList$25;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 552
    :goto_0
    iget-object v0, p0, Lcom/fleapapa/helper/ItemList$25;->this$0:Lcom/fleapapa/helper/ItemList;

    iget-object v0, v0, Lcom/fleapapa/helper/ItemList;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    sget-object v1, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 554
    return-void

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/fleapapa/helper/ItemList$25;->this$0:Lcom/fleapapa/helper/ItemList;

    iget-object v1, v0, Lcom/fleapapa/helper/ItemList;->adapter:Landroid/widget/ArrayAdapter;

    sget-object v0, Lcom/fleapapa/helper/ItemList;->items:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lcom/fleapapa/helper/ItemList$25;->this$0:Lcom/fleapapa/helper/ItemList;

    iget-object v2, v2, Lcom/fleapapa/helper/ItemList;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/Item;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method
