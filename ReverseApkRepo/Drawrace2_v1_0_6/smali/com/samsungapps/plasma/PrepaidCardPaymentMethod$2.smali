.class Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->a_()Landroid/view/View;
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

.field final synthetic e:Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$2;->e:Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;

    iput-object p2, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$2;->a:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$2;->b:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$2;->c:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$2;->d:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$2;->a:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$PrepaidCardType;

    iget-object v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$2;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$2;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$2;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$2;->e:Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;

    iget-object v1, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$2;->e:Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;

    iget v1, v1, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->C:I

    iget-object v2, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$2;->e:Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;

    iget-object v2, v2, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$2;->e:Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;

    iget-object v3, v3, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->m:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod$PrepaidCardType;->getProviderType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v7}, Lcom/samsungapps/plasma/PrepaidCardPaymentMethod;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
