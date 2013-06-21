.class final Lh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Lf;


# direct methods
.method constructor <init>(Lf;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lh;->d:Lf;

    iput p2, p0, Lh;->a:I

    iput-object p3, p0, Lh;->b:Ljava/lang/String;

    iput-object p4, p0, Lh;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 209
    const-string v0, "LicenseChecker"

    const-string v1, "Received response."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lh;->d:Lf;

    iget-object v0, v0, Lf;->a:Le;

    invoke-static {v0}, Le;->a(Le;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lh;->d:Lf;

    invoke-static {v1}, Lf;->a(Lf;)Li;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lh;->d:Lf;

    invoke-static {v0}, Lf;->b(Lf;)V

    .line 213
    iget-object v0, p0, Lh;->d:Lf;

    invoke-static {v0}, Lf;->a(Lf;)Li;

    move-result-object v0

    iget-object v1, p0, Lh;->d:Lf;

    iget-object v1, v1, Lf;->a:Le;

    invoke-static {v1}, Le;->b(Le;)Ljava/security/PublicKey;

    move-result-object v1

    iget v2, p0, Lh;->a:I

    iget-object v3, p0, Lh;->b:Ljava/lang/String;

    iget-object v4, p0, Lh;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Li;->a(Ljava/security/PublicKey;ILjava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lh;->d:Lf;

    iget-object v0, v0, Lf;->a:Le;

    iget-object v1, p0, Lh;->d:Lf;

    invoke-static {v1}, Lf;->a(Lf;)Li;

    move-result-object v1

    invoke-static {v0, v1}, Le;->b(Le;Li;)V

    .line 216
    :cond_0
    return-void
.end method
