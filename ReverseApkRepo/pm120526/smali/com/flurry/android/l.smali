.class final Lcom/flurry/android/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/flurry/android/am;


# direct methods
.method constructor <init>(Lcom/flurry/android/am;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/android/l;->b:Lcom/flurry/android/am;

    iput-object p2, p0, Lcom/flurry/android/l;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Lcom/flurry/android/d;

    const/16 v1, 0x65

    invoke-direct {v0, v1}, Lcom/flurry/android/d;-><init>(I)V

    iget-object v1, p0, Lcom/flurry/android/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/android/l;->b:Lcom/flurry/android/am;

    invoke-static {v0}, Lcom/flurry/android/am;->a(Lcom/flurry/android/am;)Lcom/flurry/android/c;

    return-void
.end method
