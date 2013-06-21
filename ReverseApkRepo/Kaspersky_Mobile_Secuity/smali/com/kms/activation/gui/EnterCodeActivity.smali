.class public Lcom/kms/activation/gui/EnterCodeActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private a:[Landroid/widget/EditText;

.field private b:[Landroid/text/TextWatcher;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 162
    .line 164
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x4

    if-ge v1, v0, :cond_2

    .line 165
    mul-int/lit8 v2, v1, 0x5

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 167
    add-int/lit8 v0, v2, 0x5

    .line 168
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v0, v3, :cond_0

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 171
    :cond_0
    iget-object v3, p0, Lcom/kms/activation/gui/EnterCodeActivity;->a:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/kms/activation/gui/EnterCodeActivity;->a:[Landroid/widget/EditText;

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/kms/activation/gui/EnterCodeActivity;->a:[Landroid/widget/EditText;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 173
    iget-object v0, p0, Lcom/kms/activation/gui/EnterCodeActivity;->a:[Landroid/widget/EditText;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 164
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 176
    :cond_2
    return-void
.end method

.method private static a(Landroid/text/Spanned;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 218
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    invoke-interface {p0, v0, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 220
    if-eqz v2, :cond_0

    .line 222
    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 224
    aget-object v3, v2, v1

    .line 225
    invoke-interface {p0, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_1

    .line 227
    const/4 v0, 0x1

    .line 231
    :cond_0
    return v0

    .line 222
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static synthetic a(Lcom/kms/activation/gui/EnterCodeActivity;Landroid/text/Spanned;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-static {p1}, Lcom/kms/activation/gui/EnterCodeActivity;->a(Landroid/text/Spanned;)Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/kms/activation/gui/EnterCodeActivity;)[Landroid/text/TextWatcher;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kms/activation/gui/EnterCodeActivity;->b:[Landroid/text/TextWatcher;

    return-object v0
.end method

.method public static synthetic b(Lcom/kms/activation/gui/EnterCodeActivity;)[Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kms/activation/gui/EnterCodeActivity;->a:[Landroid/widget/EditText;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/kms/activation/gui/EnterCodeActivity;->a:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final b_()I
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/kms/activation/gui/EnterCodeActivity;->c:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 137
    invoke-direct {p0}, Lcom/kms/activation/gui/EnterCodeActivity;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/kms/activation/gui/EnterCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 139
    const-string v1, "activationCode"

    invoke-direct {p0}, Lcom/kms/activation/gui/EnterCodeActivity;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/kms/activation/gui/EnterCodeActivity;->setResult(ILandroid/content/Intent;)V

    .line 141
    invoke-virtual {p0}, Lcom/kms/activation/gui/EnterCodeActivity;->finish()V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    const v0, 0x7f0b0006

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/EnterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 144
    const/16 v1, -0x7f80

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    const v1, 0x7f0800e3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/kms/activation/gui/EnterCodeActivity;->d:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/EnterCodeActivity;->setResult(I)V

    .line 149
    invoke-virtual {p0}, Lcom/kms/activation/gui/EnterCodeActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v1, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f030015

    invoke-virtual {p0, v0, v1}, Lcom/kms/activation/gui/EnterCodeActivity;->a(II)V

    .line 45
    invoke-virtual {p0}, Lcom/kms/activation/gui/EnterCodeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 46
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 47
    invoke-virtual {p0}, Lcom/kms/activation/gui/EnterCodeActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 50
    invoke-virtual {p0}, Lcom/kms/activation/gui/EnterCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "codeFailed"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const v0, 0x7f0b0006

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/EnterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    const/16 v2, -0x7f80

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    const/high16 v2, 0x4188

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 54
    const v2, 0x7f0800e3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 57
    :cond_0
    new-array v0, v5, [Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kms/activation/gui/EnterCodeActivity;->a:[Landroid/widget/EditText;

    .line 58
    new-array v0, v5, [Landroid/text/TextWatcher;

    iput-object v0, p0, Lcom/kms/activation/gui/EnterCodeActivity;->b:[Landroid/text/TextWatcher;

    .line 59
    iget-object v2, p0, Lcom/kms/activation/gui/EnterCodeActivity;->a:[Landroid/widget/EditText;

    const v0, 0x7f0b0059

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/EnterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    aput-object v0, v2, v1

    .line 60
    iget-object v2, p0, Lcom/kms/activation/gui/EnterCodeActivity;->a:[Landroid/widget/EditText;

    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/EnterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    aput-object v0, v2, v6

    .line 61
    iget-object v2, p0, Lcom/kms/activation/gui/EnterCodeActivity;->a:[Landroid/widget/EditText;

    const/4 v3, 0x2

    const v0, 0x7f0b005b

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/EnterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    aput-object v0, v2, v3

    .line 62
    iget-object v2, p0, Lcom/kms/activation/gui/EnterCodeActivity;->a:[Landroid/widget/EditText;

    const/4 v3, 0x3

    const v0, 0x7f0b005d

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/EnterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    aput-object v0, v2, v3

    move v0, v1

    .line 63
    :goto_0
    if-ge v0, v5, :cond_1

    .line 64
    iget-object v2, p0, Lcom/kms/activation/gui/EnterCodeActivity;->b:[Landroid/text/TextWatcher;

    new-instance v3, LaO;

    invoke-direct {v3, p0}, LaO;-><init>(Lcom/kms/activation/gui/EnterCodeActivity;)V

    aput-object v3, v2, v0

    .line 106
    iget-object v2, p0, Lcom/kms/activation/gui/EnterCodeActivity;->a:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/kms/activation/gui/EnterCodeActivity;->b:[Landroid/text/TextWatcher;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 107
    iget-object v2, p0, Lcom/kms/activation/gui/EnterCodeActivity;->a:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 109
    new-array v2, v6, [Landroid/text/InputFilter;

    .line 110
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v1

    .line 111
    iget-object v3, p0, Lcom/kms/activation/gui/EnterCodeActivity;->a:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 112
    iget-object v2, p0, Lcom/kms/activation/gui/EnterCodeActivity;->a:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/kms/activation/gui/EnterCodeActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 113
    iget-object v2, p0, Lcom/kms/activation/gui/EnterCodeActivity;->a:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    new-instance v3, LaP;

    invoke-direct {v3, p0}, LaP;-><init>(Lcom/kms/activation/gui/EnterCodeActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/kms/activation/gui/EnterCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "activationCode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {p0}, Lcom/kms/activation/gui/EnterCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "activationCode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kms/activation/gui/EnterCodeActivity;->a(Ljava/lang/String;)V

    .line 127
    :cond_2
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/EnterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/activation/gui/EnterCodeActivity;->c:Landroid/widget/Button;

    .line 128
    iget-object v0, p0, Lcom/kms/activation/gui/EnterCodeActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v0, 0x7f0b001a

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/EnterCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/activation/gui/EnterCodeActivity;->d:Landroid/widget/Button;

    .line 130
    iget-object v0, p0, Lcom/kms/activation/gui/EnterCodeActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 197
    const/16 v0, 0x43

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move-object v0, p1

    .line 198
    check-cast v0, Landroid/widget/EditText;

    .line 199
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    if-le v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 200
    :goto_0
    if-nez v0, :cond_0

    move v0, v1

    .line 201
    :goto_1
    iget-object v2, p0, Lcom/kms/activation/gui/EnterCodeActivity;->a:[Landroid/widget/EditText;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 202
    iget-object v2, p0, Lcom/kms/activation/gui/EnterCodeActivity;->a:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_2

    .line 203
    add-int/lit8 v0, v0, -0x1

    .line 204
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/kms/activation/gui/EnterCodeActivity;->a:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 206
    iget-object v2, p0, Lcom/kms/activation/gui/EnterCodeActivity;->a:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/kms/activation/gui/EnterCodeActivity;->a:[Landroid/widget/EditText;

    aget-object v0, v3, v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 213
    :cond_0
    return v1

    .line 199
    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    goto :goto_0

    .line 201
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 186
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/EnterCodeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 187
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kms/activation/gui/EnterCodeActivity;->a(Ljava/lang/String;)V

    .line 191
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
