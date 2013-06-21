.class public Lexam/Widget/TextChange;
.super Landroid/app/Activity;
.source "TextChange.java"


# instance fields
.field mEdit:Landroid/widget/EditText;

.field mText:Landroid/widget/TextView;

.field mWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    new-instance v0, Lexam/Widget/TextChange$1;

    invoke-direct {v0, p0}, Lexam/Widget/TextChange$1;-><init>(Lexam/Widget/TextChange;)V

    iput-object v0, p0, Lexam/Widget/TextChange;->mWatcher:Landroid/text/TextWatcher;

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
    const v0, 0x7f030088

    invoke-virtual {p0, v0}, Lexam/Widget/TextChange;->setContentView(I)V

    .line 18
    const v0, 0x7f0c0009

    invoke-virtual {p0, v0}, Lexam/Widget/TextChange;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lexam/Widget/TextChange;->mEdit:Landroid/widget/EditText;

    .line 19
    const v0, 0x7f0c0008

    invoke-virtual {p0, v0}, Lexam/Widget/TextChange;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lexam/Widget/TextChange;->mText:Landroid/widget/TextView;

    .line 20
    iget-object v0, p0, Lexam/Widget/TextChange;->mEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lexam/Widget/TextChange;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 21
    return-void
.end method
