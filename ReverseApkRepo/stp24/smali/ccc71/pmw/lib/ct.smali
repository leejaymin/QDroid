.class final Lccc71/pmw/lib/ct;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_backup_activity;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_backup_activity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ct;->a:Lccc71/pmw/lib/pmw_backup_activity;

    .line 197
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 201
    if-eqz p1, :cond_0

    .line 203
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccc71/pmw/a/a;

    .line 204
    if-eqz v0, :cond_0

    .line 205
    iget-object v1, p0, Lccc71/pmw/lib/ct;->a:Lccc71/pmw/lib/pmw_backup_activity;

    invoke-static {v1, v0}, Lccc71/pmw/lib/pmw_backup_activity;->a(Lccc71/pmw/lib/pmw_backup_activity;Lccc71/pmw/a/a;)V

    .line 207
    :cond_0
    return-void
.end method
