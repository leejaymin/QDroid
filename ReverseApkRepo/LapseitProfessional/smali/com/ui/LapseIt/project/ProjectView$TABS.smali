.class final enum Lcom/ui/LapseIt/project/ProjectView$TABS;
.super Ljava/lang/Enum;
.source "ProjectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/project/ProjectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TABS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ui/LapseIt/project/ProjectView$TABS;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EFFECTS:Lcom/ui/LapseIt/project/ProjectView$TABS;

.field private static final synthetic ENUM$VALUES:[Lcom/ui/LapseIt/project/ProjectView$TABS;

.field public static final enum INFO:Lcom/ui/LapseIt/project/ProjectView$TABS;

.field public static final enum RENDER:Lcom/ui/LapseIt/project/ProjectView$TABS;

.field public static final enum SOUNDTRACK:Lcom/ui/LapseIt/project/ProjectView$TABS;

.field public static final enum TRIM:Lcom/ui/LapseIt/project/ProjectView$TABS;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/ui/LapseIt/project/ProjectView$TABS;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v2}, Lcom/ui/LapseIt/project/ProjectView$TABS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/LapseIt/project/ProjectView$TABS;->INFO:Lcom/ui/LapseIt/project/ProjectView$TABS;

    .line 62
    new-instance v0, Lcom/ui/LapseIt/project/ProjectView$TABS;

    const-string v1, "TRIM"

    invoke-direct {v0, v1, v3}, Lcom/ui/LapseIt/project/ProjectView$TABS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/LapseIt/project/ProjectView$TABS;->TRIM:Lcom/ui/LapseIt/project/ProjectView$TABS;

    .line 63
    new-instance v0, Lcom/ui/LapseIt/project/ProjectView$TABS;

    const-string v1, "EFFECTS"

    invoke-direct {v0, v1, v4}, Lcom/ui/LapseIt/project/ProjectView$TABS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/LapseIt/project/ProjectView$TABS;->EFFECTS:Lcom/ui/LapseIt/project/ProjectView$TABS;

    .line 64
    new-instance v0, Lcom/ui/LapseIt/project/ProjectView$TABS;

    const-string v1, "SOUNDTRACK"

    invoke-direct {v0, v1, v5}, Lcom/ui/LapseIt/project/ProjectView$TABS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/LapseIt/project/ProjectView$TABS;->SOUNDTRACK:Lcom/ui/LapseIt/project/ProjectView$TABS;

    .line 65
    new-instance v0, Lcom/ui/LapseIt/project/ProjectView$TABS;

    const-string v1, "RENDER"

    invoke-direct {v0, v1, v6}, Lcom/ui/LapseIt/project/ProjectView$TABS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/LapseIt/project/ProjectView$TABS;->RENDER:Lcom/ui/LapseIt/project/ProjectView$TABS;

    .line 60
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ui/LapseIt/project/ProjectView$TABS;

    sget-object v1, Lcom/ui/LapseIt/project/ProjectView$TABS;->INFO:Lcom/ui/LapseIt/project/ProjectView$TABS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ui/LapseIt/project/ProjectView$TABS;->TRIM:Lcom/ui/LapseIt/project/ProjectView$TABS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ui/LapseIt/project/ProjectView$TABS;->EFFECTS:Lcom/ui/LapseIt/project/ProjectView$TABS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ui/LapseIt/project/ProjectView$TABS;->SOUNDTRACK:Lcom/ui/LapseIt/project/ProjectView$TABS;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ui/LapseIt/project/ProjectView$TABS;->RENDER:Lcom/ui/LapseIt/project/ProjectView$TABS;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ui/LapseIt/project/ProjectView$TABS;->ENUM$VALUES:[Lcom/ui/LapseIt/project/ProjectView$TABS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ui/LapseIt/project/ProjectView$TABS;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/ui/LapseIt/project/ProjectView$TABS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ui/LapseIt/project/ProjectView$TABS;

    return-object v0
.end method

.method public static values()[Lcom/ui/LapseIt/project/ProjectView$TABS;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ui/LapseIt/project/ProjectView$TABS;->ENUM$VALUES:[Lcom/ui/LapseIt/project/ProjectView$TABS;

    array-length v1, v0

    new-array v2, v1, [Lcom/ui/LapseIt/project/ProjectView$TABS;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method