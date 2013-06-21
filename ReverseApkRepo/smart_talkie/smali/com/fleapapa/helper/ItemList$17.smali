.class Lcom/fleapapa/helper/ItemList$17;
.super Ljava/lang/Object;
.source "ItemList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemList;->showAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/ItemList;

.field private final synthetic val$ad:Lcom/fleapapa/helper/Ad;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemList;Lcom/fleapapa/helper/Ad;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemList$17;->this$0:Lcom/fleapapa/helper/ItemList;

    iput-object p2, p0, Lcom/fleapapa/helper/ItemList$17;->val$ad:Lcom/fleapapa/helper/Ad;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/fleapapa/helper/ItemList$17;->val$ad:Lcom/fleapapa/helper/Ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fleapapa/helper/ItemList$17;->val$ad:Lcom/fleapapa/helper/Ad;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemList$17;->this$0:Lcom/fleapapa/helper/ItemList;

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/Ad;->browse(Landroid/content/Context;)V

    .line 280
    :cond_0
    return-void
.end method
