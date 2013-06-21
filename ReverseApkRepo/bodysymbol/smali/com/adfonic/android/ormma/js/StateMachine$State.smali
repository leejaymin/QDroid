.class public final enum Lcom/adfonic/android/ormma/js/StateMachine$State;
.super Ljava/lang/Enum;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adfonic/android/ormma/js/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adfonic/android/ormma/js/StateMachine$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adfonic/android/ormma/js/StateMachine$State;

.field public static final enum DEFAULT:Lcom/adfonic/android/ormma/js/StateMachine$State;

.field public static final enum EXPANDED:Lcom/adfonic/android/ormma/js/StateMachine$State;

.field public static final enum HIDDEN:Lcom/adfonic/android/ormma/js/StateMachine$State;

.field public static final enum LOADING:Lcom/adfonic/android/ormma/js/StateMachine$State;

.field public static final enum RESIZED:Lcom/adfonic/android/ormma/js/StateMachine$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/adfonic/android/ormma/js/StateMachine$State;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/adfonic/android/ormma/js/StateMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adfonic/android/ormma/js/StateMachine$State;->DEFAULT:Lcom/adfonic/android/ormma/js/StateMachine$State;

    new-instance v0, Lcom/adfonic/android/ormma/js/StateMachine$State;

    const-string v1, "RESIZED"

    invoke-direct {v0, v1, v3}, Lcom/adfonic/android/ormma/js/StateMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adfonic/android/ormma/js/StateMachine$State;->RESIZED:Lcom/adfonic/android/ormma/js/StateMachine$State;

    new-instance v0, Lcom/adfonic/android/ormma/js/StateMachine$State;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v4}, Lcom/adfonic/android/ormma/js/StateMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adfonic/android/ormma/js/StateMachine$State;->HIDDEN:Lcom/adfonic/android/ormma/js/StateMachine$State;

    new-instance v0, Lcom/adfonic/android/ormma/js/StateMachine$State;

    const-string v1, "EXPANDED"

    invoke-direct {v0, v1, v5}, Lcom/adfonic/android/ormma/js/StateMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adfonic/android/ormma/js/StateMachine$State;->EXPANDED:Lcom/adfonic/android/ormma/js/StateMachine$State;

    new-instance v0, Lcom/adfonic/android/ormma/js/StateMachine$State;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v6}, Lcom/adfonic/android/ormma/js/StateMachine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adfonic/android/ormma/js/StateMachine$State;->LOADING:Lcom/adfonic/android/ormma/js/StateMachine$State;

    .line 9
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/adfonic/android/ormma/js/StateMachine$State;

    sget-object v1, Lcom/adfonic/android/ormma/js/StateMachine$State;->DEFAULT:Lcom/adfonic/android/ormma/js/StateMachine$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adfonic/android/ormma/js/StateMachine$State;->RESIZED:Lcom/adfonic/android/ormma/js/StateMachine$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adfonic/android/ormma/js/StateMachine$State;->HIDDEN:Lcom/adfonic/android/ormma/js/StateMachine$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adfonic/android/ormma/js/StateMachine$State;->EXPANDED:Lcom/adfonic/android/ormma/js/StateMachine$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adfonic/android/ormma/js/StateMachine$State;->LOADING:Lcom/adfonic/android/ormma/js/StateMachine$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/adfonic/android/ormma/js/StateMachine$State;->$VALUES:[Lcom/adfonic/android/ormma/js/StateMachine$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adfonic/android/ormma/js/StateMachine$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 9
    const-class v0, Lcom/adfonic/android/ormma/js/StateMachine$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adfonic/android/ormma/js/StateMachine$State;

    return-object v0
.end method

.method public static values()[Lcom/adfonic/android/ormma/js/StateMachine$State;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/adfonic/android/ormma/js/StateMachine$State;->$VALUES:[Lcom/adfonic/android/ormma/js/StateMachine$State;

    invoke-virtual {v0}, [Lcom/adfonic/android/ormma/js/StateMachine$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adfonic/android/ormma/js/StateMachine$State;

    return-object v0
.end method


# virtual methods
.method public getJavascriptName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/adfonic/android/ormma/js/StateMachine$State;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/adfonic/android/ormma/js/StateMachine$State;->DEFAULT:Lcom/adfonic/android/ormma/js/StateMachine$State;

    invoke-virtual {p0, v0}, Lcom/adfonic/android/ormma/js/StateMachine$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/adfonic/android/ormma/js/StateMachine$State;->EXPANDED:Lcom/adfonic/android/ormma/js/StateMachine$State;

    invoke-virtual {p0, v0}, Lcom/adfonic/android/ormma/js/StateMachine$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/adfonic/android/ormma/js/StateMachine$State;->HIDDEN:Lcom/adfonic/android/ormma/js/StateMachine$State;

    invoke-virtual {p0, v0}, Lcom/adfonic/android/ormma/js/StateMachine$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/adfonic/android/ormma/js/StateMachine$State;->LOADING:Lcom/adfonic/android/ormma/js/StateMachine$State;

    invoke-virtual {p0, v0}, Lcom/adfonic/android/ormma/js/StateMachine$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResized()Z
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/adfonic/android/ormma/js/StateMachine$State;->RESIZED:Lcom/adfonic/android/ormma/js/StateMachine$State;

    invoke-virtual {p0, v0}, Lcom/adfonic/android/ormma/js/StateMachine$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
