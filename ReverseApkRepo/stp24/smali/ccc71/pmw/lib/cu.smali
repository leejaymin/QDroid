.class final Lccc71/pmw/lib/cu;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_backup_activity;

.field private final synthetic b:I

.field private final synthetic c:Landroid/os/Handler;

.field private final synthetic d:I


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_backup_activity;ILandroid/os/Handler;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/cu;->a:Lccc71/pmw/lib/pmw_backup_activity;

    iput p2, p0, Lccc71/pmw/lib/cu;->b:I

    iput-object p3, p0, Lccc71/pmw/lib/cu;->c:Landroid/os/Handler;

    iput p4, p0, Lccc71/pmw/lib/cu;->d:I

    .line 210
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/cu;)Lccc71/pmw/lib/pmw_backup_activity;
    .locals 1
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lccc71/pmw/lib/cu;->a:Lccc71/pmw/lib/pmw_backup_activity;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 215
    move v1, v2

    :goto_0
    iget v0, p0, Lccc71/pmw/lib/cu;->b:I

    if-lt v1, v0, :cond_0

    .line 221
    :goto_1
    iget v0, p0, Lccc71/pmw/lib/cu;->d:I

    if-lt v2, v0, :cond_1

    .line 228
    iget-object v0, p0, Lccc71/pmw/lib/cu;->a:Lccc71/pmw/lib/pmw_backup_activity;

    iget-object v0, v0, Lccc71/pmw/lib/pmw_backup_activity;->a:Landroid/os/Handler;

    new-instance v1, Lccc71/pmw/lib/cv;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/cv;-><init>(Lccc71/pmw/lib/cu;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 237
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/cu;->a:Lccc71/pmw/lib/pmw_backup_activity;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backup_activity;->b(Lccc71/pmw/lib/pmw_backup_activity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 218
    iget-object v3, p0, Lccc71/pmw/lib/cu;->a:Lccc71/pmw/lib/pmw_backup_activity;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_backup_activity;->e(Lccc71/pmw/lib/pmw_backup_activity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v3, p0, Lccc71/pmw/lib/cu;->a:Lccc71/pmw/lib/pmw_backup_activity;

    iget-object v4, p0, Lccc71/pmw/lib/cu;->c:Landroid/os/Handler;

    invoke-static {v3, v0, v4, v2}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/os/Handler;Z)V

    .line 215
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 223
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/cu;->a:Lccc71/pmw/lib/pmw_backup_activity;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backup_activity;->c(Lccc71/pmw/lib/pmw_backup_activity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 224
    iget-object v1, p0, Lccc71/pmw/lib/cu;->a:Lccc71/pmw/lib/pmw_backup_activity;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_backup_activity;->e(Lccc71/pmw/lib/pmw_backup_activity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v1, p0, Lccc71/pmw/lib/cu;->a:Lccc71/pmw/lib/pmw_backup_activity;

    iget-object v3, p0, Lccc71/pmw/lib/cu;->c:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-static {v1, v0, v3, v4}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/os/Handler;Z)V

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
