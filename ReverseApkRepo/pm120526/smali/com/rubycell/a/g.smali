.class final Lcom/rubycell/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/rubycell/a/h;


# instance fields
.field final synthetic a:Lcom/rubycell/a/f;


# direct methods
.method constructor <init>(Lcom/rubycell/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/a/g;->a:Lcom/rubycell/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-string v0, "Facebook-authorize"

    const-string v1, "Login canceled"

    invoke-static {v0, v1}, Lcom/rubycell/a/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubycell/a/g;->a:Lcom/rubycell/a/f;

    invoke-static {v0}, Lcom/rubycell/a/f;->a(Lcom/rubycell/a/f;)Lcom/rubycell/a/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/rubycell/a/h;->a()V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    iget-object v0, p0, Lcom/rubycell/a/g;->a:Lcom/rubycell/a/f;

    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rubycell/a/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubycell/a/g;->a:Lcom/rubycell/a/f;

    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rubycell/a/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubycell/a/g;->a:Lcom/rubycell/a/f;

    invoke-virtual {v0}, Lcom/rubycell/a/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Facebook-authorize"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Login Success! access_token="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/rubycell/a/g;->a:Lcom/rubycell/a/f;

    invoke-virtual {v2}, Lcom/rubycell/a/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expires="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/rubycell/a/g;->a:Lcom/rubycell/a/f;

    invoke-virtual {v2}, Lcom/rubycell/a/f;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rubycell/a/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubycell/a/g;->a:Lcom/rubycell/a/f;

    invoke-static {v0}, Lcom/rubycell/a/f;->a(Lcom/rubycell/a/f;)Lcom/rubycell/a/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/rubycell/a/h;->a(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/rubycell/a/g;->a:Lcom/rubycell/a/f;

    invoke-static {v0}, Lcom/rubycell/a/f;->a(Lcom/rubycell/a/f;)Lcom/rubycell/a/h;

    move-result-object v0

    new-instance v1, Lcom/rubycell/a/i;

    const-string v2, "Failed to receive access token."

    invoke-direct {v1, v2}, Lcom/rubycell/a/i;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/rubycell/a/h;->a(Lcom/rubycell/a/i;)V

    goto :goto_0
.end method

.method public final a(Lcom/rubycell/a/e;)V
    .locals 3

    const-string v0, "Facebook-authorize"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Login failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rubycell/a/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubycell/a/g;->a:Lcom/rubycell/a/f;

    invoke-static {v0}, Lcom/rubycell/a/f;->a(Lcom/rubycell/a/f;)Lcom/rubycell/a/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/rubycell/a/h;->a(Lcom/rubycell/a/e;)V

    return-void
.end method

.method public final a(Lcom/rubycell/a/i;)V
    .locals 3

    const-string v0, "Facebook-authorize"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Login failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rubycell/a/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubycell/a/g;->a:Lcom/rubycell/a/f;

    invoke-static {v0}, Lcom/rubycell/a/f;->a(Lcom/rubycell/a/f;)Lcom/rubycell/a/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/rubycell/a/h;->a(Lcom/rubycell/a/i;)V

    return-void
.end method
