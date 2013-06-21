.class public final Lcom/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/a/b;


# direct methods
.method public constructor <init>(Lcom/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/a/c;->a:Lcom/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/16 v5, 0xc8

    const-string v0, "TapjoyConnect"

    const-string v1, "starting connect call..."

    invoke-static {v0, v1}, Lcom/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/a/b;->c()Lcom/a/h;

    const-string v1, "https://ws.tapjoyads.com/connect?"

    invoke-static {v1, v0}, Lcom/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/a/f;->a:I

    if-ne v1, v5, :cond_0

    iget-object v0, v0, Lcom/a/f;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/a/b;->c(Ljava/lang/String;)Z

    const-string v0, "TapjoyConnect"

    const-string v1, "Successfully connected to tapjoy site."

    invoke-static {v0, v1}, Lcom/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/a/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&package_names="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/a/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {}, Lcom/a/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/a/b;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "timestamp="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "verifier="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/a/b;->c()Lcom/a/h;

    const-string v1, "https://ws.tapjoyads.com/apps_installed?"

    invoke-static {v1, v0}, Lcom/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/a/f;->a:I

    if-ne v0, v5, :cond_0

    const-string v0, "TapjoyConnect"

    const-string v1, "Successfully pinged sdkless api."

    invoke-static {v0, v1}, Lcom/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
