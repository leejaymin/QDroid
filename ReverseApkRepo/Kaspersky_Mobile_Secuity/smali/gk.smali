.class final Lgk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x1

    invoke-static {v0}, Lgj;->b(Z)Z

    .line 325
    invoke-static {}, Lgj;->g()Lgl;

    move-result-object v0

    invoke-virtual {v0}, Lgl;->d()V

    .line 326
    return-void
.end method
