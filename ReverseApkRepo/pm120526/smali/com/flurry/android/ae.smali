.class final Lcom/flurry/android/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/flurry/android/r;


# direct methods
.method constructor <init>(Lcom/flurry/android/r;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/android/ae;->b:Lcom/flurry/android/r;

    iput-object p2, p0, Lcom/flurry/android/ae;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/flurry/android/ae;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/ae;->b:Lcom/flurry/android/r;

    iget-object v0, v0, Lcom/flurry/android/r;->d:Lcom/flurry/android/am;

    iget-object v1, p0, Lcom/flurry/android/ae;->b:Lcom/flurry/android/r;

    iget-object v1, v1, Lcom/flurry/android/r;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/android/ae;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/android/am;->a(Lcom/flurry/android/am;Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/android/ae;->b:Lcom/flurry/android/r;

    iget-object v0, v0, Lcom/flurry/android/r;->c:Lcom/flurry/android/ah;

    new-instance v1, Lcom/flurry/android/x;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/flurry/android/ae;->b:Lcom/flurry/android/r;

    iget-object v3, v3, Lcom/flurry/android/r;->d:Lcom/flurry/android/am;

    invoke-virtual {v3}, Lcom/flurry/android/am;->j()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/flurry/android/x;-><init>(BJ)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/ah;->a(Lcom/flurry/android/x;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to launch in app market: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/android/ae;->b:Lcom/flurry/android/r;

    iget-object v1, v1, Lcom/flurry/android/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/flurry/android/am;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/flurry/android/o;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/flurry/android/ae;->b:Lcom/flurry/android/r;

    iget-object v1, v1, Lcom/flurry/android/r;->d:Lcom/flurry/android/am;

    invoke-static {v1, v0}, Lcom/flurry/android/am;->b(Lcom/flurry/android/am;Ljava/lang/String;)V

    goto :goto_0
.end method
