.class public Lexam/thread/LongTime;
.super Landroid/app/Activity;
.source "LongTime.java"


# instance fields
.field mText:Landroid/widget/TextView;

.field mValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public Update()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 34
    return-void

    .line 30
    :cond_0
    iget v1, p0, Lexam/thread/LongTime;->mValue:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lexam/thread/LongTime;->mValue:I

    .line 31
    iget-object v1, p0, Lexam/thread/LongTime;->mText:Landroid/widget/TextView;

    iget v2, p0, Lexam/thread/LongTime;->mValue:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v1, 0x7f03005b

    invoke-virtual {p0, v1}, Lexam/thread/LongTime;->setContentView(I)V

    .line 18
    const v1, 0x7f0c0008

    invoke-virtual {p0, v1}, Lexam/thread/LongTime;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lexam/thread/LongTime;->mText:Landroid/widget/TextView;

    .line 19
    const v1, 0x7f0c0017

    invoke-virtual {p0, v1}, Lexam/thread/LongTime;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 20
    .local v0, btnUpdate:Landroid/widget/Button;
    new-instance v1, Lexam/thread/LongTime$1;

    invoke-direct {v1, p0}, Lexam/thread/LongTime$1;-><init>(Lexam/thread/LongTime;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    return-void
.end method
