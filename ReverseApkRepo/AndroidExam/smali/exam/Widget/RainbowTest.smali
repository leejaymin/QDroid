.class public Lexam/Widget/RainbowTest;
.super Landroid/app/Activity;
.source "RainbowTest.java"


# instance fields
.field mHandler:Landroid/os/Handler;

.field mProgress:Lexam/Widget/RainbowProgress;


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
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v1, 0x7f03007c

    invoke-virtual {p0, v1}, Lexam/Widget/RainbowTest;->setContentView(I)V

    .line 21
    const v1, 0x7f0c008a

    invoke-virtual {p0, v1}, Lexam/Widget/RainbowTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lexam/Widget/RainbowProgress;

    iput-object v1, p0, Lexam/Widget/RainbowTest;->mProgress:Lexam/Widget/RainbowProgress;

    .line 23
    const v1, 0x7f0c0029

    invoke-virtual {p0, v1}, Lexam/Widget/RainbowTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 24
    .local v0, btn:Landroid/widget/Button;
    new-instance v1, Lexam/Widget/RainbowTest$1;

    invoke-direct {v1, p0}, Lexam/Widget/RainbowTest$1;-><init>(Lexam/Widget/RainbowTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    new-instance v1, Lexam/Widget/RainbowTest$2;

    invoke-direct {v1, p0}, Lexam/Widget/RainbowTest$2;-><init>(Lexam/Widget/RainbowTest;)V

    iput-object v1, p0, Lexam/Widget/RainbowTest;->mHandler:Landroid/os/Handler;

    .line 46
    return-void
.end method
