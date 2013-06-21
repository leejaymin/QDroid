.class final Lcom/android/vending/billing/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/android/vending/billing/g;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:J

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/vending/billing/g;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/vending/billing/s;->a:Lcom/android/vending/billing/g;

    iput-object p2, p0, Lcom/android/vending/billing/s;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/vending/billing/s;->c:J

    iput-object p5, p0, Lcom/android/vending/billing/s;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const-class v6, Lcom/android/vending/billing/r;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/android/vending/billing/r;->b()Lcom/android/vending/billing/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/vending/billing/r;->b()Lcom/android/vending/billing/p;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/billing/s;->a:Lcom/android/vending/billing/g;

    iget-object v2, p0, Lcom/android/vending/billing/s;->b:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/vending/billing/s;->c:J

    iget-object v5, p0, Lcom/android/vending/billing/s;->d:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/vending/billing/p;->a(Lcom/android/vending/billing/g;Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method
