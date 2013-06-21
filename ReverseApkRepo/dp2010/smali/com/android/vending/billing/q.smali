.class final Lcom/android/vending/billing/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/android/vending/billing/p;

.field private final synthetic b:Lcom/android/vending/billing/g;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:I

.field private final synthetic e:J

.field private final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/vending/billing/p;Lcom/android/vending/billing/g;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/vending/billing/q;->a:Lcom/android/vending/billing/p;

    iput-object p2, p0, Lcom/android/vending/billing/q;->b:Lcom/android/vending/billing/g;

    iput-object p3, p0, Lcom/android/vending/billing/q;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vending/billing/q;->d:I

    iput-wide p4, p0, Lcom/android/vending/billing/q;->e:J

    iput-object p6, p0, Lcom/android/vending/billing/q;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/vending/billing/q;->a:Lcom/android/vending/billing/p;

    iget-object v1, p0, Lcom/android/vending/billing/q;->b:Lcom/android/vending/billing/g;

    iget-object v1, p0, Lcom/android/vending/billing/q;->c:Ljava/lang/String;

    iget v1, p0, Lcom/android/vending/billing/q;->d:I

    iget-wide v1, p0, Lcom/android/vending/billing/q;->e:J

    iget-object v1, p0, Lcom/android/vending/billing/q;->f:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/vending/billing/p;->a()V

    return-void
.end method
