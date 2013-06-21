.class public final Lcom/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/a/a;->a:Lcom/a/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, p3}, Lcom/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "connect"

    invoke-static {v0}, Lcom/a/b;->b(Ljava/lang/String;)V

    const-string v0, "native"

    invoke-static {v0}, Lcom/a/b;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/a/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/a/a;->a:Lcom/a/a;

    return-void
.end method
