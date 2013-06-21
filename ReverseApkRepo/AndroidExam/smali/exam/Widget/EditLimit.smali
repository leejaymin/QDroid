.class public Lexam/Widget/EditLimit;
.super Landroid/app/Activity;
.source "EditLimit.java"


# instance fields
.field mLimitEdit:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v0, 0x7f030064

    invoke-virtual {p0, v0}, Lexam/Widget/EditLimit;->setContentView(I)V

    .line 16
    const v0, 0x7f0c007b

    invoke-virtual {p0, v0}, Lexam/Widget/EditLimit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lexam/Widget/EditLimit;->mLimitEdit:Landroid/widget/EditText;

    .line 17
    iget-object v0, p0, Lexam/Widget/EditLimit;->mLimitEdit:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    .line 18
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 20
    return-void
.end method
