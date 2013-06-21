.class final Lg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lf;


# direct methods
.method constructor <init>(Lf;Le;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lg;->a:Lf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 195
    const-string v0, "LicenseChecker"

    const-string v1, "Check timed out."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lg;->a:Lf;

    iget-object v0, v0, Lf;->a:Le;

    iget-object v1, p0, Lg;->a:Lf;

    invoke-static {v1}, Lf;->a(Lf;)Li;

    move-result-object v1

    invoke-static {v0, v1}, Le;->a(Le;Li;)V

    .line 197
    iget-object v0, p0, Lg;->a:Lf;

    iget-object v0, v0, Lf;->a:Le;

    iget-object v1, p0, Lg;->a:Lf;

    invoke-static {v1}, Lf;->a(Lf;)Li;

    move-result-object v1

    invoke-static {v0, v1}, Le;->b(Le;Li;)V

    .line 198
    return-void
.end method
