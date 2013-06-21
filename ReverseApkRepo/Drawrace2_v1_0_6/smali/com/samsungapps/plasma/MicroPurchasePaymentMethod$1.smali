.class Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$1;
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
.field final synthetic a:Landroid/widget/Spinner;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Landroid/widget/EditText;

.field final synthetic d:Landroid/widget/EditText;

.field final synthetic e:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$1;->e:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    iput-object p2, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$1;->a:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$1;->b:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$1;->c:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$1;->d:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$1;->a:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$1;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$1;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$1;->e:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    iget-object v1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$1;->e:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    iget v1, v1, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->C:I

    iget-object v2, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$1;->e:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    iget-object v2, v2, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->D:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$1;->d:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    return-void
.end method
