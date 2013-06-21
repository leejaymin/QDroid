.class Lcom/fleapapa/helper/ItemView$5$1;
.super Ljava/lang/Object;
.source "ItemView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemView$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fleapapa/helper/ItemView$5;

.field private final synthetic val$item:Lcom/fleapapa/helper/Item;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemView$5;Lcom/fleapapa/helper/Item;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemView$5$1;->this$1:Lcom/fleapapa/helper/ItemView$5;

    iput-object p2, p0, Lcom/fleapapa/helper/ItemView$5$1;->val$item:Lcom/fleapapa/helper/Item;

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichMyImageButton"

    .prologue
    .line 352
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Yes to delete item "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fleapapa/helper/ItemView$5$1;->val$item:Lcom/fleapapa/helper/Item;

    iget-object v2, v2, Lcom/fleapapa/helper/Item;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$5$1;->this$1:Lcom/fleapapa/helper/ItemView$5;

    #getter for: Lcom/fleapapa/helper/ItemView$5;->this$0:Lcom/fleapapa/helper/ItemView;
    invoke-static {v0}, Lcom/fleapapa/helper/ItemView$5;->access$0(Lcom/fleapapa/helper/ItemView$5;)Lcom/fleapapa/helper/ItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/fleapapa/helper/ItemView$5$1;->val$item:Lcom/fleapapa/helper/Item;

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemView;->delete(Lcom/fleapapa/helper/Item;)V

    .line 354
    return-void
.end method
