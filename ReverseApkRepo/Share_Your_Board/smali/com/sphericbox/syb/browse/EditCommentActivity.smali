.class public Lcom/sphericbox/syb/browse/EditCommentActivity;
.super Lcom/sphericbox/syb/ui/ActionActivity;
.source "SourceFile"


# instance fields
.field private G:Lcom/sphericbox/syb/b;

.field private T:Lcom/sphericbox/syb/h;

.field private af:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/sphericbox/syb/ui/ActionActivity;-><init>()V

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/sphericbox/syb/browse/EditCommentActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/sphericbox/syb/browse/EditCommentActivity;->af:Landroid/widget/EditText;

    return-object v0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    if-nez p1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/sphericbox/syb/browse/EditCommentActivity;->T:Lcom/sphericbox/syb/h;

    invoke-virtual {v0}, Lcom/sphericbox/syb/h;->A()[Lcom/sphericbox/syb/b;

    move-result-object v0

    .line 74
    const-string v1, "INDEX_EXTRA"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 75
    if-ltz v1, :cond_0

    .line 76
    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/sphericbox/syb/browse/EditCommentActivity;->G:Lcom/sphericbox/syb/b;

    goto :goto_0
.end method

.method static synthetic b(Lcom/sphericbox/syb/browse/EditCommentActivity;)Lcom/sphericbox/syb/b;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/sphericbox/syb/browse/EditCommentActivity;->G:Lcom/sphericbox/syb/b;

    return-object v0
.end method

.method static synthetic c(Lcom/sphericbox/syb/browse/EditCommentActivity;)Lcom/sphericbox/syb/h;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/sphericbox/syb/browse/EditCommentActivity;->T:Lcom/sphericbox/syb/h;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 27
    :try_start_0
    invoke-super {p0, p1}, Lcom/sphericbox/syb/ui/ActionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    new-instance v0, Lcom/sphericbox/syb/h;

    invoke-direct {v0, p0}, Lcom/sphericbox/syb/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sphericbox/syb/browse/EditCommentActivity;->T:Lcom/sphericbox/syb/h;

    .line 30
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/browse/EditCommentActivity;->setContentView(I)V

    .line 31
    const v0, 0x7f090010

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/browse/EditCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sphericbox/syb/browse/EditCommentActivity;->af:Landroid/widget/EditText;

    .line 33
    invoke-virtual {p0}, Lcom/sphericbox/syb/browse/EditCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 34
    invoke-direct {p0, v0}, Lcom/sphericbox/syb/browse/EditCommentActivity;->a(Landroid/os/Bundle;)V

    .line 36
    iget-object v0, p0, Lcom/sphericbox/syb/browse/EditCommentActivity;->G:Lcom/sphericbox/syb/b;

    if-nez v0, :cond_0

    .line 37
    const-string v0, "EditCommentActivity"

    const-string v1, "Was not able to resolve data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p0}, Lcom/sphericbox/syb/browse/EditCommentActivity;->finish()V

    .line 53
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/sphericbox/syb/browse/EditCommentActivity;->af:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sphericbox/syb/browse/EditCommentActivity;->G:Lcom/sphericbox/syb/b;

    invoke-virtual {v1}, Lcom/sphericbox/syb/b;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 42
    const v0, 0x7f09000e

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/browse/EditCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 43
    new-instance v1, Lcom/sphericbox/syb/browse/q;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sphericbox/syb/browse/q;-><init>(Lcom/sphericbox/syb/browse/EditCommentActivity;Lcom/sphericbox/syb/browse/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const v0, 0x7f09000f

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/browse/EditCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 46
    new-instance v1, Lcom/sphericbox/syb/browse/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sphericbox/syb/browse/e;-><init>(Lcom/sphericbox/syb/browse/EditCommentActivity;Lcom/sphericbox/syb/browse/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-static {p0, v0}, Lcom/sphericbox/syb/j;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/sphericbox/syb/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/sphericbox/syb/e;-><init>(Lcom/sphericbox/syb/ui/ActionActivity;ILjava/lang/String;)V

    .line 51
    invoke-virtual {p0, v1}, Lcom/sphericbox/syb/browse/EditCommentActivity;->showDialog(Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/sphericbox/syb/browse/EditCommentActivity;->T:Lcom/sphericbox/syb/h;

    invoke-virtual {v0}, Lcom/sphericbox/syb/h;->release()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sphericbox/syb/browse/EditCommentActivity;->T:Lcom/sphericbox/syb/h;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    invoke-super {p0}, Lcom/sphericbox/syb/ui/ActionActivity;->onDestroy()V

    .line 66
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-static {p0, v0}, Lcom/sphericbox/syb/j;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Lcom/sphericbox/syb/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/sphericbox/syb/e;-><init>(Lcom/sphericbox/syb/ui/ActionActivity;ILjava/lang/String;)V

    .line 63
    invoke-virtual {p0, v1}, Lcom/sphericbox/syb/browse/EditCommentActivity;->showDialog(Landroid/app/Dialog;)V

    goto :goto_0
.end method
