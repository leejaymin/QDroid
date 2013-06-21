.class final Lcom/scoreloop/client/android/core/controller/MessageController$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/MessageReceiverInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/MessageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/controller/MessageController$e;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    const-string v0, "user"

    return-object v0
.end method

.method public final a(Lcom/scoreloop/client/android/core/model/Session;)Z
    .locals 1
    .parameter

    .prologue
    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method public final varargs a([Ljava/lang/Object;)[Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 187
    array-length v0, p1

    if-nez v0, :cond_0

    move-object v0, v2

    .line 198
    :goto_0
    return-object v0

    .line 190
    :cond_0
    array-length v0, p1

    new-array v3, v0, [Ljava/lang/String;

    .line 191
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_2

    .line 192
    aget-object v0, p1, v1

    .line 193
    instance-of v4, v0, Lcom/scoreloop/client/android/core/model/User;

    if-nez v4, :cond_1

    move-object v0, v2

    .line 194
    goto :goto_0

    .line 196
    :cond_1
    check-cast v0, Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 191
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v3

    .line 198
    goto :goto_0
.end method
