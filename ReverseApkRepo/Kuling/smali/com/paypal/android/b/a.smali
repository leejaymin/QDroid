.class public final Lcom/paypal/android/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/paypal/android/b/a$a;,
        Lcom/paypal/android/b/a$b;
    }
.end annotation


# static fields
.field private static a:Lcom/paypal/android/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/paypal/android/b/a;->a:Lcom/paypal/android/b/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/paypal/android/b/a;
    .locals 2

    sget-object v0, Lcom/paypal/android/b/a;->a:Lcom/paypal/android/b/a;

    if-nez v0, :cond_1

    sget-object v0, Lcom/paypal/android/b/a;->a:Lcom/paypal/android/b/a;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to initialize PPMobileAPIInterface more than once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/paypal/android/b/a;

    invoke-direct {v0}, Lcom/paypal/android/b/a;-><init>()V

    sput-object v0, Lcom/paypal/android/b/a;->a:Lcom/paypal/android/b/a;

    :cond_1
    sget-object v0, Lcom/paypal/android/b/a;->a:Lcom/paypal/android/b/a;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/paypal/android/b/a$b;)V
    .locals 1

    new-instance v0, Lcom/paypal/android/b/a$a;

    invoke-direct {v0, p0, p1}, Lcom/paypal/android/b/a$a;-><init>(Lcom/paypal/android/b/a;Lcom/paypal/android/b/a$b;)V

    invoke-virtual {v0}, Lcom/paypal/android/b/a$a;->start()V

    return-void
.end method

.method public final a(Lcom/paypal/android/b/a$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/paypal/android/b/a$a;

    invoke-direct {v0, p0, p1}, Lcom/paypal/android/b/a$a;-><init>(Lcom/paypal/android/b/a;Lcom/paypal/android/b/a$b;)V

    const-string v1, "usernameOrPhone"

    invoke-interface {p1, v1, p2}, Lcom/paypal/android/b/a$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "passwordOrPin"

    invoke-interface {p1, v1, p3}, Lcom/paypal/android/b/a$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/paypal/android/b/a$a;->start()V

    return-void
.end method

.method public final b(Lcom/paypal/android/b/a$b;)V
    .locals 1

    new-instance v0, Lcom/paypal/android/b/a$a;

    invoke-direct {v0, p0, p1}, Lcom/paypal/android/b/a$a;-><init>(Lcom/paypal/android/b/a;Lcom/paypal/android/b/a$b;)V

    invoke-virtual {v0}, Lcom/paypal/android/b/a$a;->start()V

    return-void
.end method

.method public final c(Lcom/paypal/android/b/a$b;)V
    .locals 1

    new-instance v0, Lcom/paypal/android/b/a$a;

    invoke-direct {v0, p0, p1}, Lcom/paypal/android/b/a$a;-><init>(Lcom/paypal/android/b/a;Lcom/paypal/android/b/a$b;)V

    invoke-virtual {v0}, Lcom/paypal/android/b/a$a;->start()V

    return-void
.end method

.method public final d(Lcom/paypal/android/b/a$b;)V
    .locals 1

    new-instance v0, Lcom/paypal/android/b/a$a;

    invoke-direct {v0, p0, p1}, Lcom/paypal/android/b/a$a;-><init>(Lcom/paypal/android/b/a;Lcom/paypal/android/b/a$b;)V

    invoke-virtual {v0}, Lcom/paypal/android/b/a$a;->start()V

    return-void
.end method
