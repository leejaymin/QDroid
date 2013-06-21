.class public final enum Lccc71/utils/android/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lccc71/utils/android/i;

.field public static final enum b:Lccc71/utils/android/i;

.field public static final enum c:Lccc71/utils/android/i;

.field private static final synthetic d:[Lccc71/utils/android/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 135
    new-instance v0, Lccc71/utils/android/i;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lccc71/utils/android/i;-><init>(Ljava/lang/String;I)V

    .line 138
    sput-object v0, Lccc71/utils/android/i;->a:Lccc71/utils/android/i;

    .line 139
    new-instance v0, Lccc71/utils/android/i;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lccc71/utils/android/i;-><init>(Ljava/lang/String;I)V

    .line 142
    sput-object v0, Lccc71/utils/android/i;->b:Lccc71/utils/android/i;

    .line 143
    new-instance v0, Lccc71/utils/android/i;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lccc71/utils/android/i;-><init>(Ljava/lang/String;I)V

    .line 146
    sput-object v0, Lccc71/utils/android/i;->c:Lccc71/utils/android/i;

    .line 133
    const/4 v0, 0x3

    new-array v0, v0, [Lccc71/utils/android/i;

    sget-object v1, Lccc71/utils/android/i;->a:Lccc71/utils/android/i;

    aput-object v1, v0, v2

    sget-object v1, Lccc71/utils/android/i;->b:Lccc71/utils/android/i;

    aput-object v1, v0, v3

    sget-object v1, Lccc71/utils/android/i;->c:Lccc71/utils/android/i;

    aput-object v1, v0, v4

    sput-object v0, Lccc71/utils/android/i;->d:[Lccc71/utils/android/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccc71/utils/android/i;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lccc71/utils/android/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccc71/utils/android/i;

    return-object v0
.end method

.method public static values()[Lccc71/utils/android/i;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lccc71/utils/android/i;->d:[Lccc71/utils/android/i;

    array-length v1, v0

    new-array v2, v1, [Lccc71/utils/android/i;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
