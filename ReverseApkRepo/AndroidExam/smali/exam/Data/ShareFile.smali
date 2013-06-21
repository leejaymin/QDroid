.class public Lexam/Data/ShareFile;
.super Landroid/app/Activity;
.source "ShareFile.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v2, 0x7f03000f

    invoke-virtual {p0, v2}, Lexam/Data/ShareFile;->setContentView(I)V

    .line 19
    const v2, 0x7f0c0018

    invoke-virtual {p0, v2}, Lexam/Data/ShareFile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 21
    .local v1, edit:Landroid/widget/EditText;
    const v2, 0x7f0c001b

    invoke-virtual {p0, v2}, Lexam/Data/ShareFile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 22
    .local v0, btnload:Landroid/widget/Button;
    new-instance v2, Lexam/Data/ShareFile$1;

    invoke-direct {v2, p0, v1}, Lexam/Data/ShareFile$1;-><init>(Lexam/Data/ShareFile;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method
