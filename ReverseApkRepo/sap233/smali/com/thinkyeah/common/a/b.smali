.class public final Lcom/thinkyeah/common/a/b;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/thinkyeah/common/a/b;->a:I

    iput-object p2, p0, Lcom/thinkyeah/common/a/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/thinkyeah/common/a/b;->c:Ljava/lang/String;

    return-void
.end method
