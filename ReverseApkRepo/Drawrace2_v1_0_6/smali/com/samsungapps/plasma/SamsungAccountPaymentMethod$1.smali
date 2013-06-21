.class Lcom/samsungapps/plasma/SamsungAccountPaymentMethod$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;->b()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod$1;->c:Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;

    iput-object p2, p0, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod$1;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod$1;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod$1;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod$1;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod$1;->c:Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;

    invoke-virtual {v2, v0, v1}, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod$1;->c:Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;

    iput-object v0, v2, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod$1;->c:Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;

    iput-object v1, v0, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;->m:Ljava/lang/String;

    return-void
.end method
