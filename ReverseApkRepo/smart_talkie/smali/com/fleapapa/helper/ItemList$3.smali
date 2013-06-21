.class Lcom/fleapapa/helper/ItemList$3;
.super Ljava/lang/Object;
.source "ItemList.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    iput-object p1, p0, Lcom/fleapapa/helper/ItemList$3;->this$0:Lcom/fleapapa/helper/ItemList;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/fleapapa/helper/ItemList$3;->this$0:Lcom/fleapapa/helper/ItemList;

    iget-object v0, v0, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iput-boolean p2, v0, Lcom/fleapapa/helper/Category;->poll:Z

    .line 105
    return-void
.end method
