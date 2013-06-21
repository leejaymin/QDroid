.class public final enum Lnet/ser1/timetracker/Tasks$Result;
.super Ljava/lang/Enum;
.source "Tasks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/ser1/timetracker/Tasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/ser1/timetracker/Tasks$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lnet/ser1/timetracker/Tasks$Result;

.field public static final enum FAILURE:Lnet/ser1/timetracker/Tasks$Result;

.field public static final enum SUCCESS:Lnet/ser1/timetracker/Tasks$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    new-instance v0, Lnet/ser1/timetracker/Tasks$Result;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lnet/ser1/timetracker/Tasks$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/ser1/timetracker/Tasks$Result;->SUCCESS:Lnet/ser1/timetracker/Tasks$Result;

    new-instance v0, Lnet/ser1/timetracker/Tasks$Result;

    const-string v1, "FAILURE"

    invoke-direct {v0, v1, v3}, Lnet/ser1/timetracker/Tasks$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/ser1/timetracker/Tasks$Result;->FAILURE:Lnet/ser1/timetracker/Tasks$Result;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/ser1/timetracker/Tasks$Result;

    sget-object v1, Lnet/ser1/timetracker/Tasks$Result;->SUCCESS:Lnet/ser1/timetracker/Tasks$Result;

    aput-object v1, v0, v2

    sget-object v1, Lnet/ser1/timetracker/Tasks$Result;->FAILURE:Lnet/ser1/timetracker/Tasks$Result;

    aput-object v1, v0, v3

    sput-object v0, Lnet/ser1/timetracker/Tasks$Result;->ENUM$VALUES:[Lnet/ser1/timetracker/Tasks$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/ser1/timetracker/Tasks$Result;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnet/ser1/timetracker/Tasks$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/ser1/timetracker/Tasks$Result;

    return-object p0
.end method

.method public static values()[Lnet/ser1/timetracker/Tasks$Result;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/ser1/timetracker/Tasks$Result;->ENUM$VALUES:[Lnet/ser1/timetracker/Tasks$Result;

    array-length v1, v0

    new-array v2, v1, [Lnet/ser1/timetracker/Tasks$Result;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
