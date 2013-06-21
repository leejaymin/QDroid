.class public final enum Lcom/scoreloop/client/android/core/model/Device$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/model/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/core/model/Device$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CREATED:Lcom/scoreloop/client/android/core/model/Device$State;

.field public static final enum FREED:Lcom/scoreloop/client/android/core/model/Device$State;

.field public static final enum UNKNOWN:Lcom/scoreloop/client/android/core/model/Device$State;

.field public static final enum VERIFIED:Lcom/scoreloop/client/android/core/model/Device$State;

.field private static final synthetic b:[Lcom/scoreloop/client/android/core/model/Device$State;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/scoreloop/client/android/core/model/Device$State;

    const-string v1, "CREATED"

    const/16 v2, 0xc9

    invoke-direct {v0, v1, v3, v2}, Lcom/scoreloop/client/android/core/model/Device$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/Device$State;->CREATED:Lcom/scoreloop/client/android/core/model/Device$State;

    new-instance v0, Lcom/scoreloop/client/android/core/model/Device$State;

    const-string v1, "FREED"

    invoke-direct {v0, v1, v4, v4}, Lcom/scoreloop/client/android/core/model/Device$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/Device$State;->FREED:Lcom/scoreloop/client/android/core/model/Device$State;

    new-instance v0, Lcom/scoreloop/client/android/core/model/Device$State;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5, v3}, Lcom/scoreloop/client/android/core/model/Device$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/Device$State;->UNKNOWN:Lcom/scoreloop/client/android/core/model/Device$State;

    new-instance v0, Lcom/scoreloop/client/android/core/model/Device$State;

    const-string v1, "VERIFIED"

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v6, v2}, Lcom/scoreloop/client/android/core/model/Device$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/Device$State;->VERIFIED:Lcom/scoreloop/client/android/core/model/Device$State;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/scoreloop/client/android/core/model/Device$State;

    sget-object v1, Lcom/scoreloop/client/android/core/model/Device$State;->CREATED:Lcom/scoreloop/client/android/core/model/Device$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scoreloop/client/android/core/model/Device$State;->FREED:Lcom/scoreloop/client/android/core/model/Device$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/scoreloop/client/android/core/model/Device$State;->UNKNOWN:Lcom/scoreloop/client/android/core/model/Device$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/scoreloop/client/android/core/model/Device$State;->VERIFIED:Lcom/scoreloop/client/android/core/model/Device$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/scoreloop/client/android/core/model/Device$State;->b:[Lcom/scoreloop/client/android/core/model/Device$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/scoreloop/client/android/core/model/Device$State;->a:I

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/Device$State;
    .locals 1
    .parameter

    .prologue
    .line 24
    const-class v0, Lcom/scoreloop/client/android/core/model/Device$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Device$State;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/core/model/Device$State;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/scoreloop/client/android/core/model/Device$State;->b:[Lcom/scoreloop/client/android/core/model/Device$State;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/core/model/Device$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/core/model/Device$State;

    return-object v0
.end method


# virtual methods
.method public final intValue()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/scoreloop/client/android/core/model/Device$State;->a:I

    return v0
.end method
