.class final Lccc71/pmw/lib/cv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/cu;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/cu;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/cv;->a:Lccc71/pmw/lib/cu;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lccc71/pmw/lib/cv;->a:Lccc71/pmw/lib/cu;

    invoke-static {v0}, Lccc71/pmw/lib/cu;->a(Lccc71/pmw/lib/cu;)Lccc71/pmw/lib/pmw_backup_activity;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backup_activity;->f(Lccc71/pmw/lib/pmw_backup_activity;)Landroid/app/ProgressDialog;

    .line 234
    iget-object v0, p0, Lccc71/pmw/lib/cv;->a:Lccc71/pmw/lib/cu;

    invoke-static {v0}, Lccc71/pmw/lib/cu;->a(Lccc71/pmw/lib/cu;)Lccc71/pmw/lib/pmw_backup_activity;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backup_activity;->f(Lccc71/pmw/lib/pmw_backup_activity;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v0, p0, Lccc71/pmw/lib/cv;->a:Lccc71/pmw/lib/cu;

    invoke-static {v0}, Lccc71/pmw/lib/cu;->a(Lccc71/pmw/lib/cu;)Lccc71/pmw/lib/pmw_backup_activity;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backup_activity;->e(Lccc71/pmw/lib/pmw_backup_activity;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 235
    return-void
.end method
