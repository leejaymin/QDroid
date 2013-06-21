.class final Lccc71/pmw/lib/fn;
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
    iput-object p1, p0, Lccc71/pmw/lib/fn;->a:Lccc71/pmw/lib/pmw_easy_apps;

    .line 874
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 878
    iget-object v0, p0, Lccc71/pmw/lib/fn;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_easy_apps;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 957
    :cond_0
    :goto_0
    return-void

    .line 881
    :cond_1
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->g()Ljava/util/ArrayList;

    move-result-object v0

    .line 883
    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccc71/pmw/a/a;

    .line 888
    iget-boolean v2, v0, Lccc71/pmw/a/a;->a:Z

    if-eqz v2, :cond_2

    .line 890
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->g()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 892
    iget-object v2, p0, Lccc71/pmw/lib/fn;->a:Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_easy_apps;->q(Lccc71/pmw/lib/pmw_easy_apps;)Lccc71/pmw/b/m;

    move-result-object v2

    iget-object v3, v0, Lccc71/pmw/a/a;->d:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Lccc71/pmw/b/m;->a(Landroid/content/pm/ApplicationInfo;)V

    .line 899
    :goto_1
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->h()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v0, Lccc71/pmw/a/a;->d:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v2

    iget-object v3, v0, Lccc71/pmw/a/a;->d:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 901
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->h()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 902
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->i()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->h()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 904
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 905
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->h()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 906
    :goto_2
    if-lt v2, v4, :cond_3

    .line 914
    :try_start_0
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 916
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 918
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 919
    sget v1, Lccc71/pmw/lib/g;->cN:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 920
    sget v1, Lccc71/pmw/lib/c;->j:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 921
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 922
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 934
    :goto_3
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->m(Lccc71/pmw/lib/pmw_easy_apps;)V

    .line 935
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lccc71/pmw/lib/pmw_easy_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_easy_apps;->n(Lccc71/pmw/lib/pmw_easy_apps;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 937
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 896
    :cond_2
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->g()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 908
    :cond_3
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    .line 909
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v5, v0, Lccc71/pmw/a/a;->g:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_2

    .line 926
    :cond_5
    :try_start_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 927
    sget v1, Lccc71/pmw/lib/g;->ex:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 928
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 929
    sget v1, Lccc71/pmw/lib/c;->j:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 930
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 931
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 947
    :cond_6
    :try_start_2
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->i()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->h()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 948
    iget-object v0, v0, Lccc71/pmw/a/a;->c:Lccc71/pmw/a/b;

    sget-object v1, Lccc71/pmw/a/b;->b:Lccc71/pmw/a/b;

    if-ne v0, v1, :cond_7

    .line 949
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->fH:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    goto/16 :goto_0

    .line 957
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 951
    :cond_7
    invoke-static {}, Lccc71/pmw/lib/pmw_easy_apps;->e()Landroid/app/ProgressDialog;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->fF:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
