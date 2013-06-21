.class public Lcom/scoreloop/client/android/core/server/Response;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:I

.field private final c:Ljava/lang/Integer;

.field private final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILjava/lang/Integer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/scoreloop/client/android/core/server/Response;->a:Ljava/lang/Object;

    .line 20
    iput p2, p0, Lcom/scoreloop/client/android/core/server/Response;->b:I

    .line 22
    iput-object p3, p0, Lcom/scoreloop/client/android/core/server/Response;->c:Ljava/lang/Integer;

    .line 23
    instance-of v0, p1, Lorg/json/JSONArray;

    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/server/Response;->d:Z

    .line 24
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Response;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Response;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/server/Response;->d:Z

    return v0
.end method

.method public final d()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Response;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    return-object v0
.end method

.method public final e()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Response;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/scoreloop/client/android/core/server/Response;->b:I

    return v0
.end method
