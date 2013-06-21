.class Lcom/fleapapa/helper/ItemEdit$15;
.super Ljava/lang/Object;
.source "ItemEdit.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemEdit;->edit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/ItemEdit;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemEdit;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemEdit$15;->this$0:Lcom/fleapapa/helper/ItemEdit;

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$15;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iput-boolean p2, v0, Lcom/fleapapa/helper/Item;->biddable:Z

    .line 382
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$15;->this$0:Lcom/fleapapa/helper/ItemEdit;

    invoke-virtual {v0}, Lcom/fleapapa/helper/ItemEdit;->setVisuals()V

    .line 383
    return-void
.end method
