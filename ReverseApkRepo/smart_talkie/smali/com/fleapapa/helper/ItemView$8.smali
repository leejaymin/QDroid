.class Lcom/fleapapa/helper/ItemView$8;
.super Ljava/lang/Object;
.source "ItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemView;->add2Scroll(Lcom/fleapapa/helper/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/ItemView;

.field private final synthetic val$item:Lcom/fleapapa/helper/Item;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemView;Lcom/fleapapa/helper/Item;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemView$8;->this$0:Lcom/fleapapa/helper/ItemView;

    iput-object p2, p0, Lcom/fleapapa/helper/ItemView$8;->val$item:Lcom/fleapapa/helper/Item;

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$8;->this$0:Lcom/fleapapa/helper/ItemView;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemView$8;->val$item:Lcom/fleapapa/helper/Item;

    iget-object v2, p0, Lcom/fleapapa/helper/ItemView$8;->this$0:Lcom/fleapapa/helper/ItemView;

    iget-boolean v2, v2, Lcom/fleapapa/helper/ItemView;->fromMap:Z

    invoke-static {v0, v1, v2}, Lcom/fleapapa/helper/ItemMap;->mapItem(Landroid/app/Activity;Lcom/fleapapa/helper/Item;Z)V

    .line 373
    return-void
.end method
