.class public final enum Lcom/inmobi/androidsdk/impl/Constants$playerState;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/impl/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "playerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/androidsdk/impl/Constants$playerState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COMPLETED:Lcom/inmobi/androidsdk/impl/Constants$playerState;

.field public static final enum HIDDEN:Lcom/inmobi/androidsdk/impl/Constants$playerState;

.field public static final enum INIT:Lcom/inmobi/androidsdk/impl/Constants$playerState;

.field public static final enum PAUSED:Lcom/inmobi/androidsdk/impl/Constants$playerState;

.field public static final enum PLAYING:Lcom/inmobi/androidsdk/impl/Constants$playerState;

.field public static final enum RELEASED:Lcom/inmobi/androidsdk/impl/Constants$playerState;

.field public static final enum SHOWING:Lcom/inmobi/androidsdk/impl/Constants$playerState;

.field private static final synthetic a:[Lcom/inmobi/androidsdk/impl/Constants$playerState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/inmobi/androidsdk/impl/Constants$playerState;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/androidsdk/impl/Constants$playerState;-><init>(Ljava/lang/String;I)V

    .line 36
    sput-object v0, Lcom/inmobi/androidsdk/impl/Constants$playerState;->INIT:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    new-instance v0, Lcom/inmobi/androidsdk/impl/Constants$playerState;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/androidsdk/impl/Constants$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/androidsdk/impl/Constants$playerState;->PLAYING:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    new-instance v0, Lcom/inmobi/androidsdk/impl/Constants$playerState;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v5}, Lcom/inmobi/androidsdk/impl/Constants$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/androidsdk/impl/Constants$playerState;->PAUSED:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    new-instance v0, Lcom/inmobi/androidsdk/impl/Constants$playerState;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v6}, Lcom/inmobi/androidsdk/impl/Constants$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/androidsdk/impl/Constants$playerState;->HIDDEN:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    new-instance v0, Lcom/inmobi/androidsdk/impl/Constants$playerState;

    const-string v1, "SHOWING"

    invoke-direct {v0, v1, v7}, Lcom/inmobi/androidsdk/impl/Constants$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/androidsdk/impl/Constants$playerState;->SHOWING:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    new-instance v0, Lcom/inmobi/androidsdk/impl/Constants$playerState;

    const-string v1, "COMPLETED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/Constants$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/androidsdk/impl/Constants$playerState;->COMPLETED:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    new-instance v0, Lcom/inmobi/androidsdk/impl/Constants$playerState;

    const-string v1, "RELEASED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/Constants$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/androidsdk/impl/Constants$playerState;->RELEASED:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    .line 32
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/inmobi/androidsdk/impl/Constants$playerState;

    sget-object v1, Lcom/inmobi/androidsdk/impl/Constants$playerState;->INIT:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/androidsdk/impl/Constants$playerState;->PLAYING:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/androidsdk/impl/Constants$playerState;->PAUSED:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/androidsdk/impl/Constants$playerState;->HIDDEN:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/inmobi/androidsdk/impl/Constants$playerState;->SHOWING:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/inmobi/androidsdk/impl/Constants$playerState;->COMPLETED:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/inmobi/androidsdk/impl/Constants$playerState;->RELEASED:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/androidsdk/impl/Constants$playerState;->a:[Lcom/inmobi/androidsdk/impl/Constants$playerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/androidsdk/impl/Constants$playerState;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/inmobi/androidsdk/impl/Constants$playerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/impl/Constants$playerState;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/androidsdk/impl/Constants$playerState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/inmobi/androidsdk/impl/Constants$playerState;->a:[Lcom/inmobi/androidsdk/impl/Constants$playerState;

    array-length v1, v0

    new-array v2, v1, [Lcom/inmobi/androidsdk/impl/Constants$playerState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
