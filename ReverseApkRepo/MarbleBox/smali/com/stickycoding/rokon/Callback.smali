.class public Lcom/stickycoding/rokon/Callback;
.super Ljava/lang/Object;
.source "Callback.java"


# instance fields
.field protected methodName:Ljava/lang/String;

.field protected parameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected parameters:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "methodName"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/stickycoding/rokon/Callback;->methodName:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 3
    .parameter "methodName"
    .parameter
    .parameter "parameter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, parameterType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/stickycoding/rokon/Callback;->methodName:Ljava/lang/String;

    .line 65
    new-array v0, v2, [Ljava/lang/Class;

    aput-object p2, v0, v1

    iput-object v0, p0, Lcom/stickycoding/rokon/Callback;->parameterTypes:[Ljava/lang/Class;

    .line 66
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p3, v0, v1

    iput-object v0, p0, Lcom/stickycoding/rokon/Callback;->parameters:[Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "methodName"
    .parameter "parameter"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/stickycoding/rokon/Callback;->methodName:Ljava/lang/String;

    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    iput-object v0, p0, Lcom/stickycoding/rokon/Callback;->parameters:[Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 0
    .parameter "methodName"
    .parameter "parameterTypes"
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/stickycoding/rokon/Callback;->methodName:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/stickycoding/rokon/Callback;->parameterTypes:[Ljava/lang/Class;

    .line 81
    iput-object p3, p0, Lcom/stickycoding/rokon/Callback;->parameters:[Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "methodName"
    .parameter "parameters"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/stickycoding/rokon/Callback;->methodName:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/stickycoding/rokon/Callback;->parameters:[Ljava/lang/Object;

    .line 52
    return-void
.end method


# virtual methods
.method public getMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/stickycoding/rokon/Callback;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/stickycoding/rokon/Callback;->parameterTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/stickycoding/rokon/Callback;->parameters:[Ljava/lang/Object;

    return-object v0
.end method
