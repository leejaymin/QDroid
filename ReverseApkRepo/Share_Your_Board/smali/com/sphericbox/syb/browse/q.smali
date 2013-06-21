.class final Lcom/sphericbox/syb/browse/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aa:Lcom/sphericbox/syb/browse/EditCommentActivity;


# direct methods
.method private constructor <init>(Lcom/sphericbox/syb/browse/EditCommentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sphericbox/syb/browse/q;->aa:Lcom/sphericbox/syb/browse/EditCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sphericbox/syb/browse/EditCommentActivity;Lcom/sphericbox/syb/browse/o;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/sphericbox/syb/browse/q;-><init>(Lcom/sphericbox/syb/browse/EditCommentActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/sphericbox/syb/browse/q;->aa:Lcom/sphericbox/syb/browse/EditCommentActivity;

    invoke-static {v0}, Lcom/sphericbox/syb/browse/EditCommentActivity;->b(Lcom/sphericbox/syb/browse/EditCommentActivity;)Lcom/sphericbox/syb/b;

    move-result-object v0

    iget-object v1, p0, Lcom/sphericbox/syb/browse/q;->aa:Lcom/sphericbox/syb/browse/EditCommentActivity;

    invoke-static {v1}, Lcom/sphericbox/syb/browse/EditCommentActivity;->a(Lcom/sphericbox/syb/browse/EditCommentActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sphericbox/syb/b;->setComment(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/sphericbox/syb/browse/q;->aa:Lcom/sphericbox/syb/browse/EditCommentActivity;

    invoke-static {v0}, Lcom/sphericbox/syb/browse/EditCommentActivity;->c(Lcom/sphericbox/syb/browse/EditCommentActivity;)Lcom/sphericbox/syb/h;

    move-result-object v0

    iget-object v1, p0, Lcom/sphericbox/syb/browse/q;->aa:Lcom/sphericbox/syb/browse/EditCommentActivity;

    invoke-static {v1}, Lcom/sphericbox/syb/browse/EditCommentActivity;->b(Lcom/sphericbox/syb/browse/EditCommentActivity;)Lcom/sphericbox/syb/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sphericbox/syb/h;->c(Lcom/sphericbox/syb/b;)V

    .line 99
    iget-object v0, p0, Lcom/sphericbox/syb/browse/q;->aa:Lcom/sphericbox/syb/browse/EditCommentActivity;

    invoke-virtual {v0}, Lcom/sphericbox/syb/browse/EditCommentActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    iget-object v1, p0, Lcom/sphericbox/syb/browse/q;->aa:Lcom/sphericbox/syb/browse/EditCommentActivity;

    invoke-static {v1, v0}, Lcom/sphericbox/syb/j;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v1, Lcom/sphericbox/syb/e;

    iget-object v2, p0, Lcom/sphericbox/syb/browse/q;->aa:Lcom/sphericbox/syb/browse/EditCommentActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/sphericbox/syb/e;-><init>(Lcom/sphericbox/syb/ui/ActionActivity;ILjava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/sphericbox/syb/browse/q;->aa:Lcom/sphericbox/syb/browse/EditCommentActivity;

    invoke-virtual {v0, v1}, Lcom/sphericbox/syb/browse/EditCommentActivity;->showDialog(Landroid/app/Dialog;)V

    goto :goto_0
.end method
