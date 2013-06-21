.class Lcom/fleapapa/helper/ItemList$15;
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
    iput-object p1, p0, Lcom/fleapapa/helper/ItemList$15;->this$0:Lcom/fleapapa/helper/ItemList;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const-string v2, ""

    .line 171
    iget-object v0, p0, Lcom/fleapapa/helper/ItemList$15;->this$0:Lcom/fleapapa/helper/ItemList;

    const v1, 0x7f0800d5

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/fleapapa/helper/ItemList$15;->this$0:Lcom/fleapapa/helper/ItemList;

    const v1, 0x7f0800d3

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/fleapapa/helper/ItemList$15;->this$0:Lcom/fleapapa/helper/ItemList;

    const v1, 0x7f0800d1

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 174
    return-void
.end method
