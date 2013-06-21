.class final enum Lcom/scoreloop/client/android/core/controller/b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/core/controller/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CREATE:Lcom/scoreloop/client/android/core/controller/b$b;

.field public static final enum UPDATE:Lcom/scoreloop/client/android/core/controller/b$b;

.field public static final enum VERIFY:Lcom/scoreloop/client/android/core/controller/b$b;

.field private static final synthetic a:[Lcom/scoreloop/client/android/core/controller/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    new-instance v0, Lcom/scoreloop/client/android/core/controller/b$b;

    const-string v1, "CREATE"

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/controller/b$b;->CREATE:Lcom/scoreloop/client/android/core/controller/b$b;

    new-instance v0, Lcom/scoreloop/client/android/core/controller/b$b;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v3}, Lcom/scoreloop/client/android/core/controller/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/controller/b$b;->UPDATE:Lcom/scoreloop/client/android/core/controller/b$b;

    new-instance v0, Lcom/scoreloop/client/android/core/controller/b$b;

    const-string v1, "VERIFY"

    invoke-direct {v0, v1, v4}, Lcom/scoreloop/client/android/core/controller/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/controller/b$b;->VERIFY:Lcom/scoreloop/client/android/core/controller/b$b;

    .line 101
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/scoreloop/client/android/core/controller/b$b;

    sget-object v1, Lcom/scoreloop/client/android/core/controller/b$b;->CREATE:Lcom/scoreloop/client/android/core/controller/b$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/scoreloop/client/android/core/controller/b$b;->UPDATE:Lcom/scoreloop/client/android/core/controller/b$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scoreloop/client/android/core/controller/b$b;->VERIFY:Lcom/scoreloop/client/android/core/controller/b$b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/scoreloop/client/android/core/controller/b$b;->a:[Lcom/scoreloop/client/android/core/controller/b$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 108
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/core/controller/b$b;
    .locals 1
    .parameter

    .prologue
    .line 101
    const-class v0, Lcom/scoreloop/client/android/core/controller/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/controller/b$b;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/core/controller/b$b;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/scoreloop/client/android/core/controller/b$b;->a:[Lcom/scoreloop/client/android/core/controller/b$b;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/core/controller/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/core/controller/b$b;

    return-object v0
.end method
