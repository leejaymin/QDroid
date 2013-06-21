.class final Lgm;
.super Ln;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lk;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Ln;-><init>(Landroid/content/Context;Lk;)V

    .line 131
    return-void
.end method

.method private static a(I)V
    .locals 3
    .parameter

    .prologue
    .line 144
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 145
    const-class v1, Lgd;

    monitor-enter v1

    .line 146
    :try_start_0
    invoke-virtual {v0}, Lgd;->a()V

    .line 147
    iget v2, v0, Lgd;->p:I

    if-eq v2, p0, :cond_0

    .line 148
    iput p0, v0, Lgd;->p:I

    .line 149
    invoke-virtual {v0}, Lgd;->b()V

    .line 151
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()I
    .locals 2

    .prologue
    .line 135
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 136
    const-class v1, Lgd;

    monitor-enter v1

    .line 137
    :try_start_0
    invoke-virtual {v0}, Lgd;->a()V

    .line 138
    iget v0, v0, Lgd;->p:I

    .line 139
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    return v0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/android/vending/licensing/Policy$LicenseResponse;Lm;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 123
    if-eqz p2, :cond_0

    .line 124
    iget v0, p2, Lm;->a:I

    invoke-static {v0}, Lgm;->a(I)V

    .line 126
    :cond_0
    invoke-super {p0, p1, p2}, Ln;->a(Lcom/android/vending/licensing/Policy$LicenseResponse;Lm;)V

    .line 127
    return-void
.end method
