.class public final enum Lccc71/pmw/b/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lccc71/pmw/b/g;

.field public static final enum b:Lccc71/pmw/b/g;

.field public static final enum c:Lccc71/pmw/b/g;

.field public static final enum d:Lccc71/pmw/b/g;

.field private static final synthetic e:[Lccc71/pmw/b/g;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lccc71/pmw/b/g;

    const-string v1, "Disabled"

    invoke-direct {v0, v1, v2}, Lccc71/pmw/b/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccc71/pmw/b/g;->a:Lccc71/pmw/b/g;

    .line 12
    new-instance v0, Lccc71/pmw/b/g;

    const-string v1, "Monthly"

    invoke-direct {v0, v1, v3}, Lccc71/pmw/b/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccc71/pmw/b/g;->b:Lccc71/pmw/b/g;

    .line 13
    new-instance v0, Lccc71/pmw/b/g;

    const-string v1, "Weekly"

    invoke-direct {v0, v1, v4}, Lccc71/pmw/b/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccc71/pmw/b/g;->c:Lccc71/pmw/b/g;

    .line 14
    new-instance v0, Lccc71/pmw/b/g;

    const-string v1, "Daily"

    invoke-direct {v0, v1, v5}, Lccc71/pmw/b/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccc71/pmw/b/g;->d:Lccc71/pmw/b/g;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lccc71/pmw/b/g;

    sget-object v1, Lccc71/pmw/b/g;->a:Lccc71/pmw/b/g;

    aput-object v1, v0, v2

    sget-object v1, Lccc71/pmw/b/g;->b:Lccc71/pmw/b/g;

    aput-object v1, v0, v3

    sget-object v1, Lccc71/pmw/b/g;->c:Lccc71/pmw/b/g;

    aput-object v1, v0, v4

    sget-object v1, Lccc71/pmw/b/g;->d:Lccc71/pmw/b/g;

    aput-object v1, v0, v5

    sput-object v0, Lccc71/pmw/b/g;->e:[Lccc71/pmw/b/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccc71/pmw/b/g;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lccc71/pmw/b/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/g;

    return-object v0
.end method

.method public static values()[Lccc71/pmw/b/g;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lccc71/pmw/b/g;->e:[Lccc71/pmw/b/g;

    array-length v1, v0

    new-array v2, v1, [Lccc71/pmw/b/g;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
