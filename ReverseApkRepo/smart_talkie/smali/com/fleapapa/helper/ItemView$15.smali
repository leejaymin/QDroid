.class Lcom/fleapapa/helper/ItemView$15;
.super Ljava/lang/Object;
.source "ItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemView;->showVariables(Lcom/fleapapa/helper/Item;)V
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
    iput-object p1, p0, Lcom/fleapapa/helper/ItemView$15;->this$0:Lcom/fleapapa/helper/ItemView;

    iput-object p2, p0, Lcom/fleapapa/helper/ItemView$15;->val$item:Lcom/fleapapa/helper/Item;

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$15;->this$0:Lcom/fleapapa/helper/ItemView;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemView$15;->val$item:Lcom/fleapapa/helper/Item;

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemView;->qa(Lcom/fleapapa/helper/Item;)V

    return-void
.end method
