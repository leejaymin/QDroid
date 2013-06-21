.class public Lexam/Widget/EditableTest;
.super Landroid/app/Activity;
.source "EditableTest.java"


# instance fields
.field mClickListener:Landroid/view/View$OnClickListener;

.field mEdit:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    new-instance v0, Lexam/Widget/EditableTest$1;

    invoke-direct {v0, p0}, Lexam/Widget/EditableTest$1;-><init>(Lexam/Widget/EditableTest;)V

    iput-object v0, p0, Lexam/Widget/EditableTest;->mClickListener:Landroid/view/View$OnClickListener;

    .line 10
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v0, 0x7f030063

    invoke-virtual {p0, v0}, Lexam/Widget/EditableTest;->setContentView(I)V

    .line 17
    const v0, 0x7f0c0009

    invoke-virtual {p0, v0}, Lexam/Widget/EditableTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lexam/Widget/EditableTest;->mEdit:Landroid/widget/EditText;

    .line 19
    const v0, 0x7f0c0015

    invoke-virtual {p0, v0}, Lexam/Widget/EditableTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lexam/Widget/EditableTest;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    const v0, 0x7f0c0016

    invoke-virtual {p0, v0}, Lexam/Widget/EditableTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lexam/Widget/EditableTest;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const v0, 0x7f0c0077

    invoke-virtual {p0, v0}, Lexam/Widget/EditableTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lexam/Widget/EditableTest;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    const v0, 0x7f0c0078

    invoke-virtual {p0, v0}, Lexam/Widget/EditableTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lexam/Widget/EditableTest;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    const v0, 0x7f0c0079

    invoke-virtual {p0, v0}, Lexam/Widget/EditableTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lexam/Widget/EditableTest;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    return-void
.end method
