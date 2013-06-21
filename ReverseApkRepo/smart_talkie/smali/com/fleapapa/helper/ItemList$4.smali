.class Lcom/fleapapa/helper/ItemList$4;
.super Ljava/lang/Object;
.source "ItemList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/ItemList;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemList$4;->this$0:Lcom/fleapapa/helper/ItemList;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/fleapapa/helper/ItemList$4;->this$0:Lcom/fleapapa/helper/ItemList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/fleapapa/helper/ItemMap;->mapItem(Landroid/app/Activity;Lcom/fleapapa/helper/Item;Z)V

    .line 110
    return-void
.end method
