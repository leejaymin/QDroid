.class Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsungapps/plasma/CyberCashPaymentMethod;->b()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/Spinner;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Landroid/widget/EditText;

.field final synthetic d:Lcom/samsungapps/plasma/CyberCashPaymentMethod;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/CyberCashPaymentMethod;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;->d:Lcom/samsungapps/plasma/CyberCashPaymentMethod;

    iput-object p2, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;->a:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;->b:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;->c:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    iget-object v0, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;->a:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/samsungapps/plasma/CyberCashPaymentMethod$CyberCashType;

    iget-object v0, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;->a:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    iget-object v0, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;->d:Lcom/samsungapps/plasma/CyberCashPaymentMethod;

    iget-object v1, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;->d:Lcom/samsungapps/plasma/CyberCashPaymentMethod;

    iget v1, v1, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->C:I

    iget-object v2, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;->d:Lcom/samsungapps/plasma/CyberCashPaymentMethod;

    iget-object v2, v2, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->D:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;->d:Lcom/samsungapps/plasma/CyberCashPaymentMethod;

    iget-wide v5, v5, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->x:D

    invoke-virtual {v8}, Lcom/samsungapps/plasma/CyberCashPaymentMethod$CyberCashType;->getProviderType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Lcom/samsungapps/plasma/CyberCashPaymentMethod$CyberCashType;->getProviderName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;->d:Lcom/samsungapps/plasma/CyberCashPaymentMethod;

    iput-object v3, v0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;->d:Lcom/samsungapps/plasma/CyberCashPaymentMethod;

    iput-object v4, v0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;->d:Lcom/samsungapps/plasma/CyberCashPaymentMethod;

    iput v9, v0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->b:I

    return-void
.end method
