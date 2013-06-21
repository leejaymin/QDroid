.class public final Lb/a/a/a/a/a/a;
.super Lb/a/a/a/a/j;


# instance fields
.field private final a:[Lb/a/a/a/a/i;

.field private b:Lb/a/a/a/a/i;


# direct methods
.method public constructor <init>([Lb/a/a/a/a/i;)V
    .locals 1

    invoke-direct {p0}, Lb/a/a/a/a/j;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/a/a/a/a;->b:Lb/a/a/a/a/i;

    iput-object p1, p0, Lb/a/a/a/a/a/a;->a:[Lb/a/a/a/a/i;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lb/a/a/a/a/h;
    .locals 3

    iget-object v0, p0, Lb/a/a/a/a/a/a;->b:Lb/a/a/a/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/a/a/a;->b:Lb/a/a/a/a/i;

    invoke-interface {v0, p1}, Lb/a/a/a/a/i;->a(Ljava/lang/String;)Lb/a/a/a/a/h;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lb/a/a/a/a/a/a;->a:[Lb/a/a/a/a/i;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lb/a/a/a/a/a/a;->a:[Lb/a/a/a/a/i;

    aget-object v2, v1, v0

    invoke-interface {v2, p1}, Lb/a/a/a/a/i;->a(Ljava/lang/String;)Lb/a/a/a/a/h;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v2, p0, Lb/a/a/a/a/a/a;->b:Lb/a/a/a/a/i;

    move-object v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
