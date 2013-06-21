.class final LA;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lz;


# direct methods
.method constructor <init>(Lz;)V
    .locals 0

    iput-object p1, p0, LA;->a:Lz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LA;->a:Lz;

    iget-object v0, v0, Lz;->a:Lx;

    invoke-virtual {v0}, Lx;->c()V

    return-void
.end method
