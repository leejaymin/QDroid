.class final Ly;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lx;


# direct methods
.method constructor <init>(Lx;)V
    .locals 0

    iput-object p1, p0, Ly;->a:Lx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ly;->a:Lx;

    invoke-virtual {v0}, Lx;->b()Z

    return-void
.end method
