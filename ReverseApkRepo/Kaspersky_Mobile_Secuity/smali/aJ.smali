.class final LaJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lej;


# instance fields
.field private synthetic a:LaI;


# direct methods
.method constructor <init>(LaI;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, LaJ;->a:LaI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public final c()I
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, LaJ;->a:LaI;

    iget-object v0, v0, LaI;->a:Lcom/kms/activation/gui/ActivationActivity;

    invoke-static {v0}, Lcom/kms/activation/gui/ActivationActivity;->b(Lcom/kms/activation/gui/ActivationActivity;)V

    .line 185
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 186
    const-class v1, Lgd;

    monitor-enter v1

    .line 187
    :try_start_0
    invoke-virtual {v0}, Lgd;->a()V

    .line 188
    iget-object v2, p0, LaJ;->a:LaI;

    iget-object v2, v2, LaI;->a:Lcom/kms/activation/gui/ActivationActivity;

    invoke-static {v2}, Lcom/kms/activation/gui/ActivationActivity;->c(Lcom/kms/activation/gui/ActivationActivity;)I

    move-result v2

    iput v2, v0, Lgd;->s:I

    .line 189
    const/4 v2, 0x0

    iput-boolean v2, v0, Lgd;->f:Z

    .line 190
    const/4 v2, 0x0

    iput-boolean v2, v0, Lgd;->m:Z

    .line 191
    iget-object v2, p0, LaJ;->a:LaI;

    iget-object v2, v2, LaI;->a:Lcom/kms/activation/gui/ActivationActivity;

    invoke-static {v2}, Lfp;->i(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    const/4 v2, 0x1

    iput-boolean v2, v0, Lgd;->r:Z

    .line 194
    :cond_0
    invoke-virtual {v0}, Lgd;->b()V

    .line 195
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    const/16 v0, 0x64

    return v0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
