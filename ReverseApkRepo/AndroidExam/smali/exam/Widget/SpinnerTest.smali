.class public Lexam/Widget/SpinnerTest;
.super Landroid/app/Activity;
.source "SpinnerTest.java"


# instance fields
.field adspin:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


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
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v1, 0x7f030086

    invoke-virtual {p0, v1}, Lexam/Widget/SpinnerTest;->setContentView(I)V

    .line 16
    const v1, 0x7f0c009e

    invoke-virtual {p0, v1}, Lexam/Widget/SpinnerTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 17
    .local v0, spin:Landroid/widget/Spinner;
    const-string v1, "\uacfc\uc77c\uc744 \uace0\ub974\uc138\uc694."

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 19
    const v1, 0x7f060001

    .line 20
    const v2, 0x1090008

    .line 19
    invoke-static {p0, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    iput-object v1, p0, Lexam/Widget/SpinnerTest;->adspin:Landroid/widget/ArrayAdapter;

    .line 21
    iget-object v1, p0, Lexam/Widget/SpinnerTest;->adspin:Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 22
    iget-object v1, p0, Lexam/Widget/SpinnerTest;->adspin:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 24
    new-instance v1, Lexam/Widget/SpinnerTest$1;

    invoke-direct {v1, p0}, Lexam/Widget/SpinnerTest$1;-><init>(Lexam/Widget/SpinnerTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 32
    return-void
.end method
