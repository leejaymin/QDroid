.class abstract La/t;
.super Ljava/lang/Object;

# interfaces
.implements La/s;
.implements Ljava/io/Serializable;


# instance fields
.field private transient a:La/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/t;->a:La/g;

    return-void
.end method

.method public constructor <init>(La/c/a/l;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/t;->a:La/g;

    invoke-static {p1}, La/i;->a(La/c/a/l;)La/g;

    move-result-object v0

    iput-object v0, p0, La/t;->a:La/g;

    return-void
.end method
