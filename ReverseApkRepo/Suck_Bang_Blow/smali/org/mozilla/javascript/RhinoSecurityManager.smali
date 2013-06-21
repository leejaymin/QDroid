.class public Lorg/mozilla/javascript/RhinoSecurityManager;
.super Ljava/lang/SecurityManager;
.source "RhinoSecurityManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/SecurityManager;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCurrentScriptClass()Ljava/lang/Class;
    .locals 6

    .prologue
    .line 19
    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoSecurityManager;->getClassContext()[Ljava/lang/Class;

    move-result-object v2

    .line 20
    .local v2, context:[Ljava/lang/Class;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/Class;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 21
    .local v1, c:Ljava/lang/Class;
    const-class v5, Lorg/mozilla/javascript/InterpretedFunction;

    if-eq v1, v5, :cond_0

    const-class v5, Lorg/mozilla/javascript/NativeFunction;

    invoke-virtual {v5, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const-class v5, Lorg/mozilla/javascript/PolicySecurityController$SecureCaller;

    invoke-virtual {v5, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move-object v5, v1

    .line 26
    .end local v1           #c:Ljava/lang/Class;
    :goto_1
    return-object v5

    .line 20
    .restart local v1       #c:Ljava/lang/Class;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 26
    .end local v1           #c:Ljava/lang/Class;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method
