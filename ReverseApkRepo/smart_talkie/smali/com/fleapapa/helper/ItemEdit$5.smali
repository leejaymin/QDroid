.class Lcom/fleapapa/helper/ItemEdit$5;
.super Ljava/lang/Object;
.source "ItemEdit.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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
    iput-object p1, p0, Lcom/fleapapa/helper/ItemEdit$5;->this$0:Lcom/fleapapa/helper/ItemEdit;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 263
    const v0, 0x7f080095

    if-ne p2, v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$5;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    const/16 v1, 0xa

    iput v1, v0, Lcom/fleapapa/helper/Item;->type:I

    .line 266
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$5;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    const/16 v1, 0x9

    iput v1, v0, Lcom/fleapapa/helper/Item;->type:I

    goto :goto_0
.end method
