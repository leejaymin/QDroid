.class final Lcom/google/ads/at;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/h;


# direct methods
.method constructor <init>(Lcom/google/ads/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/at;->a:Lcom/google/ads/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/at;->a:Lcom/google/ads/h;

    invoke-virtual {v0}, Lcom/google/ads/h;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/at;->a:Lcom/google/ads/h;

    invoke-static {v0}, Lcom/google/ads/h;->a(Lcom/google/ads/h;)Lcom/google/ads/mediation/MediationAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/a;->b(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/at;->a:Lcom/google/ads/h;

    invoke-static {v0}, Lcom/google/ads/h;->a(Lcom/google/ads/h;)Lcom/google/ads/mediation/MediationAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/mediation/MediationAdapter;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Called destroy() for adapter with class: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/at;->a:Lcom/google/ads/h;

    invoke-static {v1}, Lcom/google/ads/h;->a(Lcom/google/ads/h;)Lcom/google/ads/mediation/MediationAdapter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while destroying adapter ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/ads/at;->a:Lcom/google/ads/h;

    invoke-virtual {v2}, Lcom/google/ads/h;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
