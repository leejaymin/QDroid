.class final Lccc71/pmw/lib/cs;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_backup_activity;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_backup_activity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/cs;->a:Lccc71/pmw/lib/pmw_backup_activity;

    .line 67
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lccc71/pmw/lib/cs;->a:Lccc71/pmw/lib/pmw_backup_activity;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backup_activity;->a(Lccc71/pmw/lib/pmw_backup_activity;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/cs;->a:Lccc71/pmw/lib/pmw_backup_activity;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backup_activity;->b(Lccc71/pmw/lib/pmw_backup_activity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lccc71/pmw/lib/cs;->a:Lccc71/pmw/lib/pmw_backup_activity;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_backup_activity;->c(Lccc71/pmw/lib/pmw_backup_activity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    const-string v0, "process_monitor_widget"

    const-string v1, "Nothing to backup!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lccc71/pmw/lib/cs;->a:Lccc71/pmw/lib/pmw_backup_activity;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_backup_activity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/cs;->a:Lccc71/pmw/lib/pmw_backup_activity;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backup_activity;->d(Lccc71/pmw/lib/pmw_backup_activity;)V

    goto :goto_0
.end method
