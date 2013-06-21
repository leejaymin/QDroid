.class public Lexam/thread/ANR;
.super Landroid/app/Activity;
.source "ANR.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mUpload:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method doUpload()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 32
    return-void

    .line 30
    :cond_0
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 26
    :goto_0
    return-void

    .line 22
    :pswitch_0
    invoke-virtual {p0}, Lexam/thread/ANR;->doUpload()V

    .line 23
    const-string v0, "\uc5c5\ub85c\ub4dc\ub97c \uc644\ub8cc\ud588\uc2b5\ub2c8\ub2e4."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 20
    :pswitch_data_0
    .packed-switch 0x7f0c0074
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const v0, 0x7f03005e

    invoke-virtual {p0, v0}, Lexam/thread/ANR;->setContentView(I)V

    .line 15
    const v0, 0x7f0c0074

    invoke-virtual {p0, v0}, Lexam/thread/ANR;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lexam/thread/ANR;->mUpload:Landroid/widget/Button;

    .line 16
    iget-object v0, p0, Lexam/thread/ANR;->mUpload:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    return-void
.end method
