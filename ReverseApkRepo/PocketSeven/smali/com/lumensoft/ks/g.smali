.class public Lcom/lumensoft/ks/g;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public a:Z

.field public a:[B

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/lumensoft/ks/g;->a:I

    iput v1, p0, Lcom/lumensoft/ks/g;->b:I

    iput v1, p0, Lcom/lumensoft/ks/g;->c:I

    iput v1, p0, Lcom/lumensoft/ks/g;->d:I

    iput v1, p0, Lcom/lumensoft/ks/g;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lumensoft/ks/g;->a:[B

    iput-boolean v1, p0, Lcom/lumensoft/ks/g;->a:Z

    return-void
.end method
