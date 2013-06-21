.class final Lcom/scoreloop/client/android/core/controller/MessageController$d;
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
    name = "d"
.end annotation


# instance fields
.field private final a:[Ljava/lang/String;


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/controller/MessageController$d;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1
    .parameter

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/MessageController$d;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const-string v0, "system"

    return-object v0
.end method

.method public final a(Lcom/scoreloop/client/android/core/model/Session;)Z
    .locals 1
    .parameter

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public final varargs a([Ljava/lang/Object;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 164
    array-length v0, p1

    if-lez v0, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 167
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/MessageController$d;->a:[Ljava/lang/String;

    goto :goto_0
.end method
