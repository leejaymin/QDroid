.class final Lorg/mozilla/javascript/JavaMembers$MethodSignature;
.super Ljava/lang/Object;
.source "JavaMembers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/JavaMembers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MethodSignature"
.end annotation


# instance fields
.field private final args:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 0
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 421
    .local p2, args:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput-object p1, p0, Lorg/mozilla/javascript/JavaMembers$MethodSignature;->name:Ljava/lang/String;

    .line 423
    iput-object p2, p0, Lorg/mozilla/javascript/JavaMembers$MethodSignature;->args:[Ljava/lang/Class;

    .line 424
    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 2
    .parameter "method"

    .prologue
    .line 428
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/JavaMembers$MethodSignature;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 429
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 434
    instance-of v2, p1, Lorg/mozilla/javascript/JavaMembers$MethodSignature;

    if-eqz v2, :cond_1

    .line 436
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/JavaMembers$MethodSignature;

    move-object v1, v0

    .line 437
    .local v1, ms:Lorg/mozilla/javascript/JavaMembers$MethodSignature;
    iget-object v2, v1, Lorg/mozilla/javascript/JavaMembers$MethodSignature;->name:Ljava/lang/String;

    iget-object v3, p0, Lorg/mozilla/javascript/JavaMembers$MethodSignature;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/mozilla/javascript/JavaMembers$MethodSignature;->args:[Ljava/lang/Class;

    iget-object v3, v1, Lorg/mozilla/javascript/JavaMembers$MethodSignature;->args:[Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 439
    .end local v1           #ms:Lorg/mozilla/javascript/JavaMembers$MethodSignature;
    :goto_0
    return v2

    .restart local v1       #ms:Lorg/mozilla/javascript/JavaMembers$MethodSignature;
    :cond_0
    move v2, v4

    .line 437
    goto :goto_0

    .end local v1           #ms:Lorg/mozilla/javascript/JavaMembers$MethodSignature;
    :cond_1
    move v2, v4

    .line 439
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lorg/mozilla/javascript/JavaMembers$MethodSignature;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/JavaMembers$MethodSignature;->args:[Ljava/lang/Class;

    array-length v1, v1

    xor-int/2addr v0, v1

    return v0
.end method
