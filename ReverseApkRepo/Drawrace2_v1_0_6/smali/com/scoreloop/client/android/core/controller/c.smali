.class final Lcom/scoreloop/client/android/core/controller/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/scoreloop/client/android/core/controller/d;

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/scoreloop/client/android/core/controller/d;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/c;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/c;->b:Lcom/scoreloop/client/android/core/controller/d;

    .line 18
    iput-object p3, p0, Lcom/scoreloop/client/android/core/controller/c;->c:Ljava/lang/Object;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/scoreloop/client/android/core/controller/d;Ljava/util/Collection;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/scoreloop/client/android/core/controller/d;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/c;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/c;->b:Lcom/scoreloop/client/android/core/controller/d;

    .line 24
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/c;->c:Ljava/lang/Object;

    .line 25
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 5

    .prologue
    .line 28
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/c;->b:Lcom/scoreloop/client/android/core/controller/d;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/d;->getName()Ljava/lang/String;

    move-result-object v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/c;->a:Ljava/lang/String;

    .line 32
    :goto_0
    return-object v0

    :cond_0
    const-string v1, "%s_%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/scoreloop/client/android/core/controller/c;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/c;->c:Ljava/lang/Object;

    return-object v0
.end method
