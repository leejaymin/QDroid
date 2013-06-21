.class Lcom/fleapapa/helper/ItemList$28;
.super Ljava/lang/Object;
.source "ItemList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemList;->setIcon(Lcom/fleapapa/helper/Item;Landroid/widget/ImageView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$item:Lcom/fleapapa/helper/Item;

.field private final synthetic val$iv:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Lcom/fleapapa/helper/Item;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemList$28;->val$iv:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/fleapapa/helper/ItemList$28;->val$item:Lcom/fleapapa/helper/Item;

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/fleapapa/helper/ItemList$28;->val$iv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemList$28;->val$item:Lcom/fleapapa/helper/Item;

    iget-object v1, v1, Lcom/fleapapa/helper/Item;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 629
    return-void
.end method
