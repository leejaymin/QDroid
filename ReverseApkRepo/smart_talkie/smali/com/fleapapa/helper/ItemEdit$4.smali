.class Lcom/fleapapa/helper/ItemEdit$4;
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
    iput-object p1, p0, Lcom/fleapapa/helper/ItemEdit$4;->this$0:Lcom/fleapapa/helper/ItemEdit;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const/16 v4, 0x9

    .line 242
    packed-switch p2, :pswitch_data_0

    .line 247
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$4;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    const/4 v1, 0x3

    iput v1, v0, Lcom/fleapapa/helper/Item;->type:I

    .line 249
    :goto_0
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$4;->this$0:Lcom/fleapapa/helper/ItemEdit;

    const v1, 0x7f08009e

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit$4;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v1, v1, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget-boolean v2, v1, Lcom/fleapapa/helper/Item;->biddable:Z

    iget-object v3, p0, Lcom/fleapapa/helper/ItemEdit$4;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v3, v3, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget v3, v3, Lcom/fleapapa/helper/Item;->type:I

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_1
    and-int/2addr v2, v3

    iput-boolean v2, v1, Lcom/fleapapa/helper/Item;->biddable:Z

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 250
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$4;->this$0:Lcom/fleapapa/helper/ItemEdit;

    invoke-virtual {v0}, Lcom/fleapapa/helper/ItemEdit;->setVisuals()V

    .line 251
    return-void

    .line 243
    :pswitch_0
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$4;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    const/16 v1, 0x11

    iput v1, v0, Lcom/fleapapa/helper/Item;->type:I

    goto :goto_0

    .line 244
    :pswitch_1
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$4;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    const/16 v1, 0x12

    iput v1, v0, Lcom/fleapapa/helper/Item;->type:I

    goto :goto_0

    .line 245
    :pswitch_2
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$4;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iput v4, v0, Lcom/fleapapa/helper/Item;->type:I

    goto :goto_0

    .line 246
    :pswitch_3
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$4;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    const/16 v1, 0xa

    iput v1, v0, Lcom/fleapapa/helper/Item;->type:I

    goto :goto_0

    .line 249
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 242
    :pswitch_data_0
    .packed-switch 0x7f08009a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
