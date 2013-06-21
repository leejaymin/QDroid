.class final enum Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;
.super Ljava/lang/Enum;
.source "ProjectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/project/ProjectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CONTEXT_OPTIONS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLOSE:Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;

.field private static final synthetic ENUM$VALUES:[Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;

.field public static final enum PLAY:Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;

.field public static final enum PUBLISH:Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;


# instance fields
.field private final stringId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 450
    new-instance v0, Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;

    const-string v1, "PLAY"

    const v2, 0x7f0800ff

    invoke-direct {v0, v1, v3, v2}, Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;->PLAY:Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;

    .line 451
    new-instance v0, Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;

    const-string v1, "PUBLISH"

    const v2, 0x7f080100

    invoke-direct {v0, v1, v4, v2}, Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;->PUBLISH:Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;

    .line 452
    new-instance v0, Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;

    const-string v1, "CLOSE"

    const v2, 0x7f080101

    invoke-direct {v0, v1, v5, v2}, Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;->CLOSE:Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;

    .line 449
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;

    sget-object v1, Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;->PLAY:Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;->PUBLISH:Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;->CLOSE:Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;->ENUM$VALUES:[Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "stringId"

    .prologue
    .line 456
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 457
    iput p3, p0, Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;->stringId:I

    .line 458
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;

    return-object v0
.end method

.method public static values()[Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;->ENUM$VALUES:[Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;

    array-length v1, v0

    new-array v2, v1, [Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method getStringId()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/ui/LapseIt/project/ProjectView$CONTEXT_OPTIONS;->stringId:I

    return v0
.end method
