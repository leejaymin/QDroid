.class public Lexam/Widget/ShowHideKey;
.super Landroid/app/Activity;
.source "ShowHideKey.java"


# instance fields
.field mClickListener:Landroid/view/View$OnClickListener;

.field mEdit:Landroid/widget/EditText;

.field mImm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    new-instance v0, Lexam/Widget/ShowHideKey$1;

    invoke-direct {v0, p0}, Lexam/Widget/ShowHideKey$1;-><init>(Lexam/Widget/ShowHideKey;)V

    iput-object v0, p0, Lexam/Widget/ShowHideKey;->mClickListener:Landroid/view/View$OnClickListener;

    .line 10
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v0, 0x7f030082

    invoke-virtual {p0, v0}, Lexam/Widget/ShowHideKey;->setContentView(I)V

    .line 18
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lexam/Widget/ShowHideKey;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lexam/Widget/ShowHideKey;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 19
    const v0, 0x7f0c0009

    invoke-virtual {p0, v0}, Lexam/Widget/ShowHideKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lexam/Widget/ShowHideKey;->mEdit:Landroid/widget/EditText;

    .line 21
    const v0, 0x7f0c009a

    invoke-virtual {p0, v0}, Lexam/Widget/ShowHideKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lexam/Widget/ShowHideKey;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    const v0, 0x7f0c009b

    invoke-virtual {p0, v0}, Lexam/Widget/ShowHideKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lexam/Widget/ShowHideKey;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    return-void
.end method
