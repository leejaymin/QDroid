.class public final enum Lcom/zubhium/ZubhiumSDK$CrashReportingMode;
.super Ljava/lang/Enum;
.source "ZubhiumSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zubhium/ZubhiumSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CrashReportingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zubhium/ZubhiumSDK$CrashReportingMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEFAULT:Lcom/zubhium/ZubhiumSDK$CrashReportingMode;

.field private static final synthetic ENUM$VALUES:[Lcom/zubhium/ZubhiumSDK$CrashReportingMode;

.field public static final enum SILENT:Lcom/zubhium/ZubhiumSDK$CrashReportingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 872
    new-instance v0, Lcom/zubhium/ZubhiumSDK$CrashReportingMode;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/zubhium/ZubhiumSDK$CrashReportingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zubhium/ZubhiumSDK$CrashReportingMode;->DEFAULT:Lcom/zubhium/ZubhiumSDK$CrashReportingMode;

    new-instance v0, Lcom/zubhium/ZubhiumSDK$CrashReportingMode;

    const-string v1, "SILENT"

    invoke-direct {v0, v1, v3}, Lcom/zubhium/ZubhiumSDK$CrashReportingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zubhium/ZubhiumSDK$CrashReportingMode;->SILENT:Lcom/zubhium/ZubhiumSDK$CrashReportingMode;

    .line 871
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/zubhium/ZubhiumSDK$CrashReportingMode;

    sget-object v1, Lcom/zubhium/ZubhiumSDK$CrashReportingMode;->DEFAULT:Lcom/zubhium/ZubhiumSDK$CrashReportingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zubhium/ZubhiumSDK$CrashReportingMode;->SILENT:Lcom/zubhium/ZubhiumSDK$CrashReportingMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/zubhium/ZubhiumSDK$CrashReportingMode;->ENUM$VALUES:[Lcom/zubhium/ZubhiumSDK$CrashReportingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 871
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zubhium/ZubhiumSDK$CrashReportingMode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/zubhium/ZubhiumSDK$CrashReportingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zubhium/ZubhiumSDK$CrashReportingMode;

    return-object v0
.end method

.method public static values()[Lcom/zubhium/ZubhiumSDK$CrashReportingMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/zubhium/ZubhiumSDK$CrashReportingMode;->ENUM$VALUES:[Lcom/zubhium/ZubhiumSDK$CrashReportingMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/zubhium/ZubhiumSDK$CrashReportingMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
