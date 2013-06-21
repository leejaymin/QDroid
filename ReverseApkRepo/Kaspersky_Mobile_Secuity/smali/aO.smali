.class public final LaO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/kms/activation/gui/EnterCodeActivity;


# direct methods
.method public constructor <init>(Lcom/kms/activation/gui/EnterCodeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, LaO;->a:Lcom/kms/activation/gui/EnterCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x6

    const/4 v2, 0x0

    const/4 v5, 0x5

    .line 71
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    iget-object v1, p0, LaO;->a:Lcom/kms/activation/gui/EnterCodeActivity;

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    invoke-static {v1, v0}, Lcom/kms/activation/gui/EnterCodeActivity;->a(Lcom/kms/activation/gui/EnterCodeActivity;Landroid/text/Spanned;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt v0, v5, :cond_0

    move v1, v2

    .line 76
    :goto_1
    iget-object v0, p0, LaO;->a:Lcom/kms/activation/gui/EnterCodeActivity;

    invoke-static {v0}, Lcom/kms/activation/gui/EnterCodeActivity;->a(Lcom/kms/activation/gui/EnterCodeActivity;)[Landroid/text/TextWatcher;

    move-result-object v0

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 77
    iget-object v0, p0, LaO;->a:Lcom/kms/activation/gui/EnterCodeActivity;

    invoke-static {v0}, Lcom/kms/activation/gui/EnterCodeActivity;->a(Lcom/kms/activation/gui/EnterCodeActivity;)[Landroid/text/TextWatcher;

    move-result-object v0

    aget-object v0, v0, v1

    if-ne v0, p0, :cond_5

    .line 78
    add-int/lit8 v0, v1, 0x1

    .line 79
    const/4 v3, 0x4

    if-ge v0, v3, :cond_4

    .line 80
    iget-object v3, p0, LaO;->a:Lcom/kms/activation/gui/EnterCodeActivity;

    invoke-static {v3}, Lcom/kms/activation/gui/EnterCodeActivity;->b(Lcom/kms/activation/gui/EnterCodeActivity;)[Landroid/widget/EditText;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/EditText;->isFocused()Z

    move-result v3

    if-nez v3, :cond_0

    .line 83
    iget-object v3, p0, LaO;->a:Lcom/kms/activation/gui/EnterCodeActivity;

    invoke-static {v3}, Lcom/kms/activation/gui/EnterCodeActivity;->b(Lcom/kms/activation/gui/EnterCodeActivity;)[Landroid/widget/EditText;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    if-lt v3, v5, :cond_3

    .line 84
    iget-object v3, p0, LaO;->a:Lcom/kms/activation/gui/EnterCodeActivity;

    invoke-static {v3}, Lcom/kms/activation/gui/EnterCodeActivity;->b(Lcom/kms/activation/gui/EnterCodeActivity;)[Landroid/widget/EditText;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 85
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, v5, :cond_2

    iget-object v3, p0, LaO;->a:Lcom/kms/activation/gui/EnterCodeActivity;

    invoke-static {v3}, Lcom/kms/activation/gui/EnterCodeActivity;->b(Lcom/kms/activation/gui/EnterCodeActivity;)[Landroid/widget/EditText;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    if-le v3, v5, :cond_2

    .line 86
    iget-object v3, p0, LaO;->a:Lcom/kms/activation/gui/EnterCodeActivity;

    invoke-static {v3}, Lcom/kms/activation/gui/EnterCodeActivity;->b(Lcom/kms/activation/gui/EnterCodeActivity;)[Landroid/widget/EditText;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {p1, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 88
    :cond_2
    iget-object v2, p0, LaO;->a:Lcom/kms/activation/gui/EnterCodeActivity;

    invoke-static {v2}, Lcom/kms/activation/gui/EnterCodeActivity;->b(Lcom/kms/activation/gui/EnterCodeActivity;)[Landroid/widget/EditText;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 97
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v5, :cond_0

    .line 98
    iget-object v0, p0, LaO;->a:Lcom/kms/activation/gui/EnterCodeActivity;

    invoke-static {v0}, Lcom/kms/activation/gui/EnterCodeActivity;->b(Lcom/kms/activation/gui/EnterCodeActivity;)[Landroid/widget/EditText;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, v5, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto/16 :goto_0

    .line 92
    :cond_4
    iget-object v0, p0, LaO;->a:Lcom/kms/activation/gui/EnterCodeActivity;

    invoke-static {v0}, Lcom/kms/activation/gui/EnterCodeActivity;->b(Lcom/kms/activation/gui/EnterCodeActivity;)[Landroid/widget/EditText;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 93
    iget-object v0, p0, LaO;->a:Lcom/kms/activation/gui/EnterCodeActivity;

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Lcom/kms/activation/gui/EnterCodeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 94
    iget-object v3, p0, LaO;->a:Lcom/kms/activation/gui/EnterCodeActivity;

    invoke-static {v3}, Lcom/kms/activation/gui/EnterCodeActivity;->b(Lcom/kms/activation/gui/EnterCodeActivity;)[Landroid/widget/EditText;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_2

    .line 76
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method
