.class final Lz;
.super Ljava/lang/Object;

# interfaces
.implements Lv;


# instance fields
.field final synthetic a:Lx;


# direct methods
.method constructor <init>(Lx;)V
    .locals 0

    iput-object p1, p0, Lz;->a:Lx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lz;->a:Lx;

    invoke-static {v0}, Lx;->a(Lx;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LA;

    invoke-direct {v1, p0}, LA;-><init>(Lz;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(J)V
    .locals 1

    iget-object v0, p0, Lz;->a:Lx;

    invoke-static {v0}, Lx;->b(Lx;)LD;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LD;->a(J)V

    return-void
.end method
