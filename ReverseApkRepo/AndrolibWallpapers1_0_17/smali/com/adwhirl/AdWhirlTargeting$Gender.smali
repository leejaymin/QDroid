.class public final enum Lcom/adwhirl/AdWhirlTargeting$Gender;
.super Ljava/lang/Enum;
.source "AdWhirlTargeting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adwhirl/AdWhirlTargeting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adwhirl/AdWhirlTargeting$Gender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/adwhirl/AdWhirlTargeting$Gender;

.field public static final enum FEMALE:Lcom/adwhirl/AdWhirlTargeting$Gender;

.field public static final enum MALE:Lcom/adwhirl/AdWhirlTargeting$Gender;

.field public static final enum UNKNOWN:Lcom/adwhirl/AdWhirlTargeting$Gender;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/adwhirl/AdWhirlTargeting$Gender;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/adwhirl/AdWhirlTargeting$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adwhirl/AdWhirlTargeting$Gender;->UNKNOWN:Lcom/adwhirl/AdWhirlTargeting$Gender;

    new-instance v0, Lcom/adwhirl/AdWhirlTargeting$Gender;

    const-string v1, "MALE"

    invoke-direct {v0, v1, v3}, Lcom/adwhirl/AdWhirlTargeting$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adwhirl/AdWhirlTargeting$Gender;->MALE:Lcom/adwhirl/AdWhirlTargeting$Gender;

    new-instance v0, Lcom/adwhirl/AdWhirlTargeting$Gender;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v4}, Lcom/adwhirl/AdWhirlTargeting$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adwhirl/AdWhirlTargeting$Gender;->FEMALE:Lcom/adwhirl/AdWhirlTargeting$Gender;

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/adwhirl/AdWhirlTargeting$Gender;

    sget-object v1, Lcom/adwhirl/AdWhirlTargeting$Gender;->UNKNOWN:Lcom/adwhirl/AdWhirlTargeting$Gender;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adwhirl/AdWhirlTargeting$Gender;->MALE:Lcom/adwhirl/AdWhirlTargeting$Gender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adwhirl/AdWhirlTargeting$Gender;->FEMALE:Lcom/adwhirl/AdWhirlTargeting$Gender;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adwhirl/AdWhirlTargeting$Gender;->ENUM$VALUES:[Lcom/adwhirl/AdWhirlTargeting$Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adwhirl/AdWhirlTargeting$Gender;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/adwhirl/AdWhirlTargeting$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adwhirl/AdWhirlTargeting$Gender;

    return-object p0
.end method

.method public static values()[Lcom/adwhirl/AdWhirlTargeting$Gender;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/adwhirl/AdWhirlTargeting$Gender;->ENUM$VALUES:[Lcom/adwhirl/AdWhirlTargeting$Gender;

    array-length v1, v0

    new-array v2, v1, [Lcom/adwhirl/AdWhirlTargeting$Gender;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
