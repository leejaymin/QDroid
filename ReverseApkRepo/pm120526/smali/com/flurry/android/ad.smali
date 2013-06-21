.class final Lcom/flurry/android/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/flurry/android/t;


# direct methods
.method constructor <init>(Lcom/flurry/android/t;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/android/ad;->a:Lcom/flurry/android/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/android/ad;->a:Lcom/flurry/android/t;

    iget-object v0, v0, Lcom/flurry/android/t;->b:Lcom/flurry/android/e;

    iget-object v1, p0, Lcom/flurry/android/ad;->a:Lcom/flurry/android/t;

    iget-object v1, v1, Lcom/flurry/android/t;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/flurry/android/e;->d(Lcom/flurry/android/e;)V

    return-void
.end method
