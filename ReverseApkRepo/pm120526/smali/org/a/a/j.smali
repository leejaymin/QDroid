.class final Lorg/a/a/j;
.super Lorg/a/a/b/c;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/a/a/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/a/a/i;)Lorg/a/a/a;
    .locals 0

    return-object p0
.end method

.method public final a()Lorg/a/a/i;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Lorg/a/a/a;
    .locals 0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
