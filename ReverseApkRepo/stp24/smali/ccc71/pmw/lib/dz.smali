.class final enum Lccc71/pmw/lib/dz;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lccc71/pmw/lib/dz;

.field public static final enum b:Lccc71/pmw/lib/dz;

.field public static final enum c:Lccc71/pmw/lib/dz;

.field private static final synthetic d:[Lccc71/pmw/lib/dz;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lccc71/pmw/lib/dz;

    const-string v1, "All"

    invoke-direct {v0, v1, v2}, Lccc71/pmw/lib/dz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccc71/pmw/lib/dz;->a:Lccc71/pmw/lib/dz;

    .line 72
    new-instance v0, Lccc71/pmw/lib/dz;

    const-string v1, "User"

    invoke-direct {v0, v1, v3}, Lccc71/pmw/lib/dz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccc71/pmw/lib/dz;->b:Lccc71/pmw/lib/dz;

    .line 73
    new-instance v0, Lccc71/pmw/lib/dz;

    const-string v1, "System"

    invoke-direct {v0, v1, v4}, Lccc71/pmw/lib/dz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccc71/pmw/lib/dz;->c:Lccc71/pmw/lib/dz;

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Lccc71/pmw/lib/dz;

    sget-object v1, Lccc71/pmw/lib/dz;->a:Lccc71/pmw/lib/dz;

    aput-object v1, v0, v2

    sget-object v1, Lccc71/pmw/lib/dz;->b:Lccc71/pmw/lib/dz;

    aput-object v1, v0, v3

    sget-object v1, Lccc71/pmw/lib/dz;->c:Lccc71/pmw/lib/dz;

    aput-object v1, v0, v4

    sput-object v0, Lccc71/pmw/lib/dz;->d:[Lccc71/pmw/lib/dz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccc71/pmw/lib/dz;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lccc71/pmw/lib/dz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccc71/pmw/lib/dz;

    return-object v0
.end method

.method public static values()[Lccc71/pmw/lib/dz;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lccc71/pmw/lib/dz;->d:[Lccc71/pmw/lib/dz;

    array-length v1, v0

    new-array v2, v1, [Lccc71/pmw/lib/dz;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
