.class public final enum Lccc71/pmw/a/y;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lccc71/pmw/a/y;

.field public static final enum b:Lccc71/pmw/a/y;

.field public static final enum c:Lccc71/pmw/a/y;

.field public static final enum d:Lccc71/pmw/a/y;

.field public static final enum e:Lccc71/pmw/a/y;

.field private static final synthetic f:[Lccc71/pmw/a/y;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lccc71/pmw/a/y;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lccc71/pmw/a/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccc71/pmw/a/y;->a:Lccc71/pmw/a/y;

    .line 59
    new-instance v0, Lccc71/pmw/a/y;

    const-string v1, "System"

    invoke-direct {v0, v1, v3}, Lccc71/pmw/a/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccc71/pmw/a/y;->b:Lccc71/pmw/a/y;

    .line 60
    new-instance v0, Lccc71/pmw/a/y;

    const-string v1, "User"

    invoke-direct {v0, v1, v4}, Lccc71/pmw/a/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccc71/pmw/a/y;->c:Lccc71/pmw/a/y;

    .line 61
    new-instance v0, Lccc71/pmw/a/y;

    const-string v1, "SD"

    invoke-direct {v0, v1, v5}, Lccc71/pmw/a/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccc71/pmw/a/y;->d:Lccc71/pmw/a/y;

    .line 62
    new-instance v0, Lccc71/pmw/a/y;

    const-string v1, "None"

    invoke-direct {v0, v1, v6}, Lccc71/pmw/a/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccc71/pmw/a/y;->e:Lccc71/pmw/a/y;

    .line 56
    const/4 v0, 0x5

    new-array v0, v0, [Lccc71/pmw/a/y;

    sget-object v1, Lccc71/pmw/a/y;->a:Lccc71/pmw/a/y;

    aput-object v1, v0, v2

    sget-object v1, Lccc71/pmw/a/y;->b:Lccc71/pmw/a/y;

    aput-object v1, v0, v3

    sget-object v1, Lccc71/pmw/a/y;->c:Lccc71/pmw/a/y;

    aput-object v1, v0, v4

    sget-object v1, Lccc71/pmw/a/y;->d:Lccc71/pmw/a/y;

    aput-object v1, v0, v5

    sget-object v1, Lccc71/pmw/a/y;->e:Lccc71/pmw/a/y;

    aput-object v1, v0, v6

    sput-object v0, Lccc71/pmw/a/y;->f:[Lccc71/pmw/a/y;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccc71/pmw/a/y;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lccc71/pmw/a/y;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccc71/pmw/a/y;

    return-object v0
.end method

.method public static values()[Lccc71/pmw/a/y;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lccc71/pmw/a/y;->f:[Lccc71/pmw/a/y;

    array-length v1, v0

    new-array v2, v1, [Lccc71/pmw/a/y;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
