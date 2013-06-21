.class final Lccc71/pmw/a/j;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1979
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1983
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccc71/pmw/a/a;

    .line 1985
    iget-boolean v1, v0, Lccc71/pmw/a/a;->a:Z

    if-nez v1, :cond_1

    .line 1987
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to backup app: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lccc71/pmw/a/a;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    iget-object v1, v0, Lccc71/pmw/a/a;->i:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 1991
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1992
    sget v2, Lccc71/pmw/lib/g;->cU:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1993
    const v2, 0x1040013

    new-instance v3, Lccc71/pmw/a/k;

    invoke-direct {v3, p0, v0}, Lccc71/pmw/a/k;-><init>(Lccc71/pmw/a/j;Lccc71/pmw/a/a;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2001
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2002
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2036
    :goto_0
    return-void

    .line 2006
    :cond_0
    iput-boolean v4, v0, Lccc71/pmw/a/a;->a:Z

    .line 2007
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": Failed to backup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccc71/pmw/a/a;->g:Ljava/lang/String;

    .line 2009
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2010
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2011
    iget-object v0, v0, Lccc71/pmw/a/a;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2016
    :cond_1
    iget-object v1, v0, Lccc71/pmw/a/a;->i:Landroid/os/Handler;

    if-nez v1, :cond_3

    .line 2018
    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/pmw_settings;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2020
    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lccc71/pmw/a/d;->b()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/g;->cW:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 2021
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2034
    :cond_2
    :goto_1
    iget-object v1, v0, Lccc71/pmw/a/a;->d:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Lccc71/pmw/a/a;->i:Landroid/os/Handler;

    invoke-static {v1, v0}, Lccc71/pmw/a/d;->a(Landroid/content/pm/ApplicationInfo;Landroid/os/Handler;)V

    goto :goto_0

    .line 2026
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, v0, Lccc71/pmw/a/a;->a:Z

    .line 2027
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " backed-up"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccc71/pmw/a/a;->g:Ljava/lang/String;

    .line 2029
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2030
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2031
    iget-object v2, v0, Lccc71/pmw/a/a;->i:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
