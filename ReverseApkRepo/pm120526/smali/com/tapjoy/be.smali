.class public final Lcom/tapjoy/be;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/tapjoy/bl;


# instance fields
.field final a:Ljava/lang/String;

.field private b:Lcom/tapjoy/bf;

.field private d:Landroid/content/Context;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/be;->c:Lcom/tapjoy/bl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/be;->b:Lcom/tapjoy/bf;

    const/4 v0, 0x5

    iput v0, p0, Lcom/tapjoy/be;->e:I

    const-string v0, "Featured App"

    iput-object v0, p0, Lcom/tapjoy/be;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/tapjoy/be;->d:Landroid/content/Context;

    new-instance v0, Lcom/tapjoy/bl;

    invoke-direct {v0}, Lcom/tapjoy/bl;-><init>()V

    sput-object v0, Lcom/tapjoy/be;->c:Lcom/tapjoy/bl;

    return-void
.end method
