.class Lcom/fleapapa/helper/ItemList$7;
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
    iput-object p1, p0, Lcom/fleapapa/helper/ItemList$7;->this$0:Lcom/fleapapa/helper/ItemList;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/fleapapa/helper/ItemList$7;->this$0:Lcom/fleapapa/helper/ItemList;

    invoke-virtual {v0}, Lcom/fleapapa/helper/ItemList;->match0()V

    .line 125
    return-void
.end method