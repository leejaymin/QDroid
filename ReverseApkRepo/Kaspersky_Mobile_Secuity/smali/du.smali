.class final Ldu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method constructor <init>(Ldt;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 63
    const-class v2, Lgd;

    monitor-enter v2

    .line 64
    if-nez p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    :try_start_0
    iput-boolean v1, v0, Lgd;->e:Z

    .line 65
    invoke-virtual {v0}, Lgd;->b()V

    .line 66
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 64
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
