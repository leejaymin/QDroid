.class public Lexam/Widget/Measuring;
.super Landroid/app/Activity;
.source "Measuring.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
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
    const v2, 0x7f03006f

    invoke-virtual {p0, v2}, Lexam/Widget/Measuring;->setContentView(I)V

    .line 17
    const v2, 0x7f0c0087

    invoke-virtual {p0, v2}, Lexam/Widget/Measuring;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lexam/Widget/MeasView;

    .line 18
    .local v0, meas:Lexam/Widget/MeasView;
    const v2, 0x7f0c0008

    invoke-virtual {p0, v2}, Lexam/Widget/Measuring;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 19
    .local v1, text:Landroid/widget/EditText;
    new-instance v2, Lexam/Widget/Measuring$1;

    invoke-direct {v2, p0, v1, v0}, Lexam/Widget/Measuring$1;-><init>(Lexam/Widget/Measuring;Landroid/widget/EditText;Lexam/Widget/MeasView;)V

    .line 23
    const-wide/16 v3, 0x3e8

    .line 19
    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    return-void
.end method
