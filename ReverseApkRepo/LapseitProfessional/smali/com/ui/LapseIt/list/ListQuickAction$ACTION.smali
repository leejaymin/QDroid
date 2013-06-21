.class public final enum Lcom/ui/LapseIt/list/ListQuickAction$ACTION;
.super Ljava/lang/Enum;
.source "ListQuickAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/list/ListQuickAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ui/LapseIt/list/ListQuickAction$ACTION;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCEL:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

.field public static final enum DELETEPROJECT:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

.field public static final enum DELETERENDERED:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

.field public static final enum DETAILS:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

.field private static final synthetic ENUM$VALUES:[Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

.field public static final enum NONE:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

.field public static final enum PUBLISH:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

.field public static final enum RENDERED:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

.field public static final enum SHARE:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

.field public static final enum WATCH:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

.field public static final enum ZIP:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->NONE:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    .line 41
    new-instance v0, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    const-string v1, "DETAILS"

    invoke-direct {v0, v1, v4}, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->DETAILS:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    .line 42
    new-instance v0, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    const-string v1, "ZIP"

    invoke-direct {v0, v1, v5}, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->ZIP:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    .line 43
    new-instance v0, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    const-string v1, "RENDERED"

    invoke-direct {v0, v1, v6}, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->RENDERED:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    .line 44
    new-instance v0, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    const-string v1, "DELETEPROJECT"

    invoke-direct {v0, v1, v7}, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->DELETEPROJECT:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    .line 45
    new-instance v0, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    const-string v1, "WATCH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->WATCH:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    .line 46
    new-instance v0, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    const-string v1, "PUBLISH"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->PUBLISH:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    .line 47
    new-instance v0, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    const-string v1, "SHARE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->SHARE:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    .line 48
    new-instance v0, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    const-string v1, "DELETERENDERED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->DELETERENDERED:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    .line 49
    new-instance v0, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    const-string v1, "CANCEL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->CANCEL:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    .line 39
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    sget-object v1, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->NONE:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->DETAILS:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->ZIP:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->RENDERED:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->DELETEPROJECT:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->WATCH:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->PUBLISH:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->SHARE:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->DELETERENDERED:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->CANCEL:Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->ENUM$VALUES:[Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ui/LapseIt/list/ListQuickAction$ACTION;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    return-object v0
.end method

.method public static values()[Lcom/ui/LapseIt/list/ListQuickAction$ACTION;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ui/LapseIt/list/ListQuickAction$ACTION;->ENUM$VALUES:[Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    array-length v1, v0

    new-array v2, v1, [Lcom/ui/LapseIt/list/ListQuickAction$ACTION;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
