.class public final enum Lcom/adfonic/android/api/response/ApiResponse$Format;
.super Ljava/lang/Enum;
.source "ApiResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adfonic/android/api/response/ApiResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Format"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adfonic/android/api/response/ApiResponse$Format;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adfonic/android/api/response/ApiResponse$Format;

.field public static final enum BANNER:Lcom/adfonic/android/api/response/ApiResponse$Format;

.field public static final enum IMAGE320X480:Lcom/adfonic/android/api/response/ApiResponse$Format;

.field public static final enum NA:Lcom/adfonic/android/api/response/ApiResponse$Format;

.field public static final enum TEXT:Lcom/adfonic/android/api/response/ApiResponse$Format;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/adfonic/android/api/response/ApiResponse$Format;

    const-string v1, "BANNER"

    invoke-direct {v0, v1, v2}, Lcom/adfonic/android/api/response/ApiResponse$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adfonic/android/api/response/ApiResponse$Format;->BANNER:Lcom/adfonic/android/api/response/ApiResponse$Format;

    new-instance v0, Lcom/adfonic/android/api/response/ApiResponse$Format;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v3}, Lcom/adfonic/android/api/response/ApiResponse$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adfonic/android/api/response/ApiResponse$Format;->TEXT:Lcom/adfonic/android/api/response/ApiResponse$Format;

    new-instance v0, Lcom/adfonic/android/api/response/ApiResponse$Format;

    const-string v1, "NA"

    invoke-direct {v0, v1, v4}, Lcom/adfonic/android/api/response/ApiResponse$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adfonic/android/api/response/ApiResponse$Format;->NA:Lcom/adfonic/android/api/response/ApiResponse$Format;

    new-instance v0, Lcom/adfonic/android/api/response/ApiResponse$Format;

    const-string v1, "IMAGE320X480"

    invoke-direct {v0, v1, v5}, Lcom/adfonic/android/api/response/ApiResponse$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adfonic/android/api/response/ApiResponse$Format;->IMAGE320X480:Lcom/adfonic/android/api/response/ApiResponse$Format;

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/adfonic/android/api/response/ApiResponse$Format;

    sget-object v1, Lcom/adfonic/android/api/response/ApiResponse$Format;->BANNER:Lcom/adfonic/android/api/response/ApiResponse$Format;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adfonic/android/api/response/ApiResponse$Format;->TEXT:Lcom/adfonic/android/api/response/ApiResponse$Format;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adfonic/android/api/response/ApiResponse$Format;->NA:Lcom/adfonic/android/api/response/ApiResponse$Format;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adfonic/android/api/response/ApiResponse$Format;->IMAGE320X480:Lcom/adfonic/android/api/response/ApiResponse$Format;

    aput-object v1, v0, v5

    sput-object v0, Lcom/adfonic/android/api/response/ApiResponse$Format;->$VALUES:[Lcom/adfonic/android/api/response/ApiResponse$Format;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adfonic/android/api/response/ApiResponse$Format;
    .locals 1
    .parameter "name"

    .prologue
    .line 37
    const-class v0, Lcom/adfonic/android/api/response/ApiResponse$Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adfonic/android/api/response/ApiResponse$Format;

    return-object v0
.end method

.method public static values()[Lcom/adfonic/android/api/response/ApiResponse$Format;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/adfonic/android/api/response/ApiResponse$Format;->$VALUES:[Lcom/adfonic/android/api/response/ApiResponse$Format;

    invoke-virtual {v0}, [Lcom/adfonic/android/api/response/ApiResponse$Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adfonic/android/api/response/ApiResponse$Format;

    return-object v0
.end method
