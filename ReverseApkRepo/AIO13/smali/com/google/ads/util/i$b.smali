.class public final Lcom/google/ads/util/i$b;
.super Lcom/google/ads/util/i$a;


# instance fields
.field final synthetic d:Lcom/google/ads/util/i;


# direct methods
.method public constructor <init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Lcom/google/ads/util/i$b;->d:Lcom/google/ads/util/i;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/ads/util/i$a;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;Lcom/google/ads/util/q;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/util/i$b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/ads/util/i$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (!)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
