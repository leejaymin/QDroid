.class public Lexam/thread/BackWork3;
.super Landroid/app/Activity;
.source "BackWork3.java"


# instance fields
.field mResult:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method Accumulate(II)I
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 36
    const/4 v1, 0x0

    .line 37
    .local v1, sum:I
    move v0, p1

    .local v0, i:I
    :goto_0
    if-le v0, p2, :cond_0

    .line 41
    return v1

    .line 38
    :cond_0
    add-int/2addr v1, v0

    .line 39
    const-wide/16 v2, 0x14

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v1, 0x7f03005a

    invoke-virtual {p0, v1}, Lexam/thread/BackWork3;->setContentView(I)V

    .line 17
    const v1, 0x7f0c0050

    invoke-virtual {p0, v1}, Lexam/thread/BackWork3;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lexam/thread/BackWork3;->mResult:Landroid/widget/TextView;

    .line 18
    const v1, 0x7f0c0029

    invoke-virtual {p0, v1}, Lexam/thread/BackWork3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 19
    .local v0, btn:Landroid/widget/Button;
    new-instance v1, Lexam/thread/BackWork3$1;

    invoke-direct {v1, p0}, Lexam/thread/BackWork3$1;-><init>(Lexam/thread/BackWork3;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    return-void
.end method
