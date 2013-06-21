.class Lcom/fleapapa/helper/ItemEdit$6;
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
    iput-object p1, p0, Lcom/fleapapa/helper/ItemEdit$6;->this$0:Lcom/fleapapa/helper/ItemEdit;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 271
    if-eqz p2, :cond_0

    .line 272
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$6;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget v1, v0, Lcom/fleapapa/helper/Item;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/fleapapa/helper/Item;->flags:I

    .line 274
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$6;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget v1, v0, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/fleapapa/helper/Item;->flags:I

    goto :goto_0
.end method
