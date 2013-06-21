.class public final LcZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/gui/IncompatibleAppsSetupActivity;


# direct methods
.method public constructor <init>(Lcom/kms/gui/IncompatibleAppsSetupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, LcZ;->a:Lcom/kms/gui/IncompatibleAppsSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 143
    const-class v1, Lgd;

    monitor-enter v1

    .line 145
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lgd;->v:Z

    .line 146
    invoke-virtual {v0}, Lgd;->b()V

    .line 147
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 149
    iget-object v0, p0, LcZ;->a:Lcom/kms/gui/IncompatibleAppsSetupActivity;

    invoke-static {v0}, Lcom/kms/gui/IncompatibleAppsSetupActivity;->a(Lcom/kms/gui/IncompatibleAppsSetupActivity;)V

    .line 150
    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
