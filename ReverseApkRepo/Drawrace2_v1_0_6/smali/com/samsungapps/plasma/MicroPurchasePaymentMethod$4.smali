.class Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->b()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/widget/Spinner;

.field final synthetic e:Landroid/widget/EditText;

.field final synthetic f:Landroid/widget/EditText;

.field final synthetic g:Landroid/widget/EditText;

.field final synthetic h:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;Ljava/lang/String;Landroid/widget/EditText;Ljava/lang/String;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->h:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    iput-object p2, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->b:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->d:Landroid/widget/Spinner;

    iput-object p6, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->e:Landroid/widget/EditText;

    iput-object p7, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->f:Landroid/widget/EditText;

    iput-object p8, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->g:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v8, v7

    :cond_0
    if-eqz v8, :cond_1

    iget-object v3, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->c:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->h:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    iget-object v1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->h:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    iget v1, v1, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->C:I

    iget-object v2, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->h:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    iget-object v2, v2, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->D:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v8}, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->h:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    iget-object v1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->d:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    iput v1, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->a:I

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->h:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    iput-object v4, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->h:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    iput-object v9, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->h:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    iput-object v10, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->h:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    iput-boolean v7, v0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->e:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$4;->d:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    goto :goto_0
.end method
