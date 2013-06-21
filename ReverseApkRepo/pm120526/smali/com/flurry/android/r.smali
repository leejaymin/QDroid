.class final Lcom/flurry/android/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/flurry/android/ah;

.field final synthetic d:Lcom/flurry/android/am;


# direct methods
.method constructor <init>(Lcom/flurry/android/am;Ljava/lang/String;Landroid/content/Context;Lcom/flurry/android/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/android/r;->d:Lcom/flurry/android/am;

    iput-object p2, p0, Lcom/flurry/android/r;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/android/r;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/flurry/android/r;->c:Lcom/flurry/android/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/flurry/android/r;->d:Lcom/flurry/android/am;

    iget-object v1, p0, Lcom/flurry/android/r;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/flurry/android/am;->a(Lcom/flurry/android/am;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/flurry/android/ae;

    invoke-direct {v2, p0, v0}, Lcom/flurry/android/ae;-><init>(Lcom/flurry/android/r;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
