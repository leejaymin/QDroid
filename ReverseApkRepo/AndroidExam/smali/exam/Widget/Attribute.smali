.class public Lexam/Widget/Attribute;
.super Landroid/app/Activity;
.source "Attribute.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v2, 0x7f030061

    invoke-virtual {p0, v2}, Lexam/Widget/Attribute;->setContentView(I)V

    .line 16
    const v2, 0x7f0c0075

    invoke-virtual {p0, v2}, Lexam/Widget/Attribute;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lexam/Widget/AttrButton;

    .line 17
    .local v0, btn:Lexam/Widget/AttrButton;
    const v2, 0x7f0c0076

    invoke-virtual {p0, v2}, Lexam/Widget/Attribute;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 18
    .local v1, edit:Landroid/widget/EditText;
    iget-object v2, v0, Lexam/Widget/AttrButton;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 19
    return-void
.end method
