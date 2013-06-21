.class public Lexam/activity/ActEdit;
.super Landroid/app/Activity;
.source "ActEdit.java"


# instance fields
.field mEdit:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const/high16 v3, 0x7f03

    invoke-virtual {p0, v3}, Lexam/activity/ActEdit;->setContentView(I)V

    .line 17
    const/high16 v3, 0x7f0c

    invoke-virtual {p0, v3}, Lexam/activity/ActEdit;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lexam/activity/ActEdit;->mEdit:Landroid/widget/EditText;

    .line 19
    invoke-virtual {p0}, Lexam/activity/ActEdit;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 20
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Lexam/activity/ActEdit;->mEdit:Landroid/widget/EditText;

    const-string v4, "TextIn"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 22
    const v3, 0x7f0c0001

    invoke-virtual {p0, v3}, Lexam/activity/ActEdit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 23
    .local v1, btnOK:Landroid/widget/Button;
    new-instance v3, Lexam/activity/ActEdit$1;

    invoke-direct {v3, p0}, Lexam/activity/ActEdit$1;-><init>(Lexam/activity/ActEdit;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    const v3, 0x7f0c0002

    invoke-virtual {p0, v3}, Lexam/activity/ActEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 33
    .local v0, btnCancel:Landroid/widget/Button;
    new-instance v3, Lexam/activity/ActEdit$2;

    invoke-direct {v3, p0}, Lexam/activity/ActEdit$2;-><init>(Lexam/activity/ActEdit;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method
