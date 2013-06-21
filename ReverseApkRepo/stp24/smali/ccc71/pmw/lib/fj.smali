.class final Lccc71/pmw/lib/fj;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_easy_apps;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_easy_apps;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/fj;->a:Lccc71/pmw/lib/pmw_easy_apps;

    .line 712
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 716
    iget-object v0, p0, Lccc71/pmw/lib/fj;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_easy_apps;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 719
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccc71/pmw/a/a;

    .line 721
    iget-boolean v1, v0, Lccc71/pmw/a/a;->a:Z

    if-nez v1, :cond_2

    .line 722
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/pmw_easy_apps;->a(Ljava/lang/String;)V

    .line 724
    :cond_2
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 725
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v0, v0, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 726
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getMax()I

    move-result v0

    .line 727
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v1

    .line 729
    if-ne v0, v1, :cond_0

    .line 733
    :try_start_0
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 735
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 737
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 738
    sget v1, Lccc71/pmw/lib/g;->cN:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 739
    sget v1, Lccc71/pmw/lib/c;->j:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 740
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 741
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 753
    :goto_1
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->m(Lccc71/pmw/lib/pmw_easy_apps;)V

    .line 754
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->n(Lccc71/pmw/lib/pmw_easy_apps;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 745
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 746
    sget v1, Lccc71/pmw/lib/g;->ex:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 747
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 748
    sget v1, Lccc71/pmw/lib/c;->j:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 749
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 750
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
