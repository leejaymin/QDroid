.class public final enum Lcom/adfonic/android/api/response/ApiResponse$Type;
.super Ljava/lang/Enum;
.source "ApiResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adfonic/android/api/response/ApiResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adfonic/android/api/response/ApiResponse$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adfonic/android/api/response/ApiResponse$Type;

.field public static final enum AMAZON:Lcom/adfonic/android/api/response/ApiResponse$Type;

.field public static final enum ANDROID:Lcom/adfonic/android/api/response/ApiResponse$Type;

.field public static final enum AUDIO:Lcom/adfonic/android/api/response/ApiResponse$Type;

.field public static final enum CALL:Lcom/adfonic/android/api/response/ApiResponse$Type;

.field public static final enum IPHONE_APP_STORE:Lcom/adfonic/android/api/response/ApiResponse$Type;

.field public static final enum ITUNES_STORE:Lcom/adfonic/android/api/response/ApiResponse$Type;

.field public static final enum URL:Lcom/adfonic/android/api/response/ApiResponse$Type;

.field public static final enum VIDEO:Lcom/adfonic/android/api/response/ApiResponse$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/adfonic/android/api/response/ApiResponse$Type;

    const-string v1, "URL"

    invoke-direct {v0, v1, v3}, Lcom/adfonic/android/api/response/ApiResponse$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adfonic/android/api/response/ApiResponse$Type;->URL:Lcom/adfonic/android/api/response/ApiResponse$Type;

    new-instance v0, Lcom/adfonic/android/api/response/ApiResponse$Type;

    const-string v1, "CALL"

    invoke-direct {v0, v1, v4}, Lcom/adfonic/android/api/response/ApiResponse$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adfonic/android/api/response/ApiResponse$Type;->CALL:Lcom/adfonic/android/api/response/ApiResponse$Type;

    new-instance v0, Lcom/adfonic/android/api/response/ApiResponse$Type;

    const-string v1, "AUDIO"

    invoke-direct {v0, v1, v5}, Lcom/adfonic/android/api/response/ApiResponse$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adfonic/android/api/response/ApiResponse$Type;->AUDIO:Lcom/adfonic/android/api/response/ApiResponse$Type;

    new-instance v0, Lcom/adfonic/android/api/response/ApiResponse$Type;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v6}, Lcom/adfonic/android/api/response/ApiResponse$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adfonic/android/api/response/ApiResponse$Type;->VIDEO:Lcom/adfonic/android/api/response/ApiResponse$Type;

    new-instance v0, Lcom/adfonic/android/api/response/ApiResponse$Type;

    const-string v1, "ITUNES_STORE"

    invoke-direct {v0, v1, v7}, Lcom/adfonic/android/api/response/ApiResponse$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adfonic/android/api/response/ApiResponse$Type;->ITUNES_STORE:Lcom/adfonic/android/api/response/ApiResponse$Type;

    new-instance v0, Lcom/adfonic/android/api/response/ApiResponse$Type;

    const-string v1, "IPHONE_APP_STORE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/adfonic/android/api/response/ApiResponse$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adfonic/android/api/response/ApiResponse$Type;->IPHONE_APP_STORE:Lcom/adfonic/android/api/response/ApiResponse$Type;

    new-instance v0, Lcom/adfonic/android/api/response/ApiResponse$Type;

    const-string v1, "ANDROID"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/adfonic/android/api/response/ApiResponse$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adfonic/android/api/response/ApiResponse$Type;->ANDROID:Lcom/adfonic/android/api/response/ApiResponse$Type;

    new-instance v0, Lcom/adfonic/android/api/response/ApiResponse$Type;

    const-string v1, "AMAZON"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/adfonic/android/api/response/ApiResponse$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adfonic/android/api/response/ApiResponse$Type;->AMAZON:Lcom/adfonic/android/api/response/ApiResponse$Type;

    .line 33
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/adfonic/android/api/response/ApiResponse$Type;

    sget-object v1, Lcom/adfonic/android/api/response/ApiResponse$Type;->URL:Lcom/adfonic/android/api/response/ApiResponse$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adfonic/android/api/response/ApiResponse$Type;->CALL:Lcom/adfonic/android/api/response/ApiResponse$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adfonic/android/api/response/ApiResponse$Type;->AUDIO:Lcom/adfonic/android/api/response/ApiResponse$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adfonic/android/api/response/ApiResponse$Type;->VIDEO:Lcom/adfonic/android/api/response/ApiResponse$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adfonic/android/api/response/ApiResponse$Type;->ITUNES_STORE:Lcom/adfonic/android/api/response/ApiResponse$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/adfonic/android/api/response/ApiResponse$Type;->IPHONE_APP_STORE:Lcom/adfonic/android/api/response/ApiResponse$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/adfonic/android/api/response/ApiResponse$Type;->ANDROID:Lcom/adfonic/android/api/response/ApiResponse$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/adfonic/android/api/response/ApiResponse$Type;->AMAZON:Lcom/adfonic/android/api/response/ApiResponse$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adfonic/android/api/response/ApiResponse$Type;->$VALUES:[Lcom/adfonic/android/api/response/ApiResponse$Type;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adfonic/android/api/response/ApiResponse$Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 33
    const-class v0, Lcom/adfonic/android/api/response/ApiResponse$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adfonic/android/api/response/ApiResponse$Type;

    return-object v0
.end method

.method public static values()[Lcom/adfonic/android/api/response/ApiResponse$Type;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/adfonic/android/api/response/ApiResponse$Type;->$VALUES:[Lcom/adfonic/android/api/response/ApiResponse$Type;

    invoke-virtual {v0}, [Lcom/adfonic/android/api/response/ApiResponse$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adfonic/android/api/response/ApiResponse$Type;

    return-object v0
.end method
