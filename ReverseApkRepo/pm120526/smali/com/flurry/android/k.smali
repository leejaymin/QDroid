.class final Lcom/flurry/android/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/flurry/android/am;


# direct methods
.method constructor <init>(Lcom/flurry/android/am;I)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/android/k;->b:Lcom/flurry/android/am;

    iput p2, p0, Lcom/flurry/android/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Lcom/flurry/android/d;

    iget v1, p0, Lcom/flurry/android/k;->a:I

    invoke-direct {v0, v1}, Lcom/flurry/android/d;-><init>(I)V

    iget-object v0, p0, Lcom/flurry/android/k;->b:Lcom/flurry/android/am;

    invoke-static {v0}, Lcom/flurry/android/am;->a(Lcom/flurry/android/am;)Lcom/flurry/android/c;

    return-void
.end method
